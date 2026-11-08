/* T4C Server.exe — passe 10, pseudo-code NON COMPILABLE. 
 * Ne constitue PAS les sources originales du serveur.
 * Les types et noms symboliques sont reconstruits : conserver les adresses VA.
 */
namespace rev_pass10 {
struct OdbcContext;
struct WorkItem { void *sqlBatch; void (*callback)(int, void*); void *context; const char *tag; };

// [CONFIRMÉ flux, CORROBORÉ noms ODBC] Initialisation @0x412FB0
void ConfigureConnections_PSEUDO() {
    ConnectVia_44EA30(0x511878, /* DSN, identifiants */);
    ConnectVia_44EA30(0x511678, /* DSN, identifiants */);
    ConnectVia_44EA30(0x511478, /* DSN, identifiants */);
    // @0x41303A et @0x413047 : SQLSetConnectOption(hdbc, 102, 0).
    SqlSetConnectOption_44ED00(0x511878, SQL_AUTOCOMMIT, SQL_AUTOCOMMIT_OFF);
    SqlSetConnectOption_44ED00(0x511478, SQL_AUTOCOMMIT, SQL_AUTOCOMMIT_OFF);
    // Les valeurs de retour ne sont pas contrôlées aux points d'appel montrés.
}

// [CONFIRMÉ] Chemin appelé par le worker SQL : second argument == 0.
// @0x44ED80..0x44EEFE ; retour booléen basé sur AX==0.
bool ExecSql_WithSingleRecovery_44ED80(OdbcContext *ctx, const char *sql, bool flag) {
    int16_t status = SQLExecDirect(ctx->statement, sql, SQL_NTS);    // @0x44ED98
    ctx->lastReturn = status;
    if (status == 0) return true;
    GetOdbcDiagnostics_44E360(ctx);
    if (flag) return false;           // @0x44EDBF -> 0x44EEF6
    FreeConnectionHandles_44EDD1_to_44EDFB(ctx); // ordinals 14,15,2,1,3
    // @0x44EA30 : SQLSetConnectOption(SQL_ODBC_CURSORS, SQL_CUR_USE_ODBC)
    // puis SQLConnect(DSN, UID, PWD). Résultat final non garanti.
    ConnectVia_44EA30(ctx, /* contexte courant */);
    status = SQLExecDirect(ctx->statement, sql, SQL_NTS); // @0x44EE25
    ctx->lastReturn = status;
    if (status == 0) return true;
    LogSecondFailureAndDiagnostics(ctx, sql);             // @0x44EE4F..0x44EEF3
    return false;
}

// [CONFIRMÉ] Extrait worker @0x44F377..0x44F5C4.
void ConsumeBatch_PSEUDO(OdbcContext* ctx, WorkItem* job) {
    bool failed = false;
    for (const auto &sql : job->sqlBatch) {
        if (failed) break;
        if (!ExecSql_WithSingleRecovery_44ED80(ctx, sql, false)) failed=true;
    }
    if (failed) {
        (void)SQLTransact(ctx->env, ctx->connection, SQL_ROLLBACK); // @0x44F592
        if (job->callback) job->callback(1, job->context);
    } else {
        (void)SQLTransact(ctx->env, ctx->connection, SQL_COMMIT);   // @0x44F5AC
        if (job->callback) job->callback(0, job->context);
    }
    // Les callbacks reflètent le chemin du worker : aucune confirmation de COMMIT ici.
}
// ATTENTION : SQL_SUCCESS_WITH_INFO (1) prend le chemin de reprise (AX != 0).
}
