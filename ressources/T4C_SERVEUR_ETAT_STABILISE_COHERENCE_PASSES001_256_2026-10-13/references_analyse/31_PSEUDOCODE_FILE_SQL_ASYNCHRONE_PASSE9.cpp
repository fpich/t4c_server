/*
 * T4C Server.exe — passe 9 — pseudo-code de la file SQL asynchrone.
 * NON compilable, NON code source d'origine.
 * Les appels sont reconstruits d'après les VA de l'assembleur.
 * Termes Windows / ODBC : noms d'import et ordinals vérifiés.
 */
using DWORD = unsigned long;
struct CharacterPseudo;
struct SqlBatch;     // conteneur de statements/nœuds
struct OdbcContext;  // handles SQLHENV (+4), SQLHDBC (+8), SQLHSTMT (+0xC)
using CompletionCallback = void (*)(int status, CharacterPseudo *character);

// Character::SaveCharacter @0x413D50 / fin @0x414A79..0x414B1F
void SaveCharacter_submission_PSEUDO(CharacterPseudo *self, SqlBatch *batch, bool notify) {
    // Les différentes requêtes DELETE/INSERT/UPDATE ont été créées avant ici.
    // Détails de la liste non entièrement reconstitués.
    CompletionCallback cb = notify ? DataSaveCallback_PSEUDO : nullptr;
    asyncSqlManager.submit(batch, cb, self, "CharAsyncSave");  // @0x44F1F0
}

// @0x44F1B0 / @0x44F1F0
void AsyncSqlManager_submit_PSEUDO(SqlBatch *batch, CompletionCallback cb,
                                   CharacterPseudo *context, const char *tag) {
    if (!workerStarted) {
        port = CreateIoCompletionPort(/* paramètres de @0x44F1B0 */);
        _beginthread(Worker_44F260, /*...*/);
    }
    auto *entry = allocate_16_bytes();
    entry->field0 = batch;
    entry->field4 = cb;
    entry->field8 = context;
    entry->fieldC = tag;
    PostQueuedCompletionStatus(port, 0, (ULONG_PTR)entry, nullptr);
    // Le code autour de @0x44F22E ne vérifie pas le retour.
}

// @0x44F260; les séquences et branches d'initialisation sont abrégées
void Worker_44F260_PSEUDO() {
    while (GetQueuedCompletionStatus(/*...*/)) {
        auto *task = take_completed_task(); // représentation symbolique
        bool errors = false;
        for (auto& sql : task->batch->sqlStatements) {
            if (!ODBC_SQLExecDirect_ordinal11(sql)) { // @0x44ED80
                errors = true;
            }
        }
        // branche @0x44F4A1
        if (errors) {
            ODBC_SQLTransact_ordinal23(/* handles */, SQL_ROLLBACK); // 0x44ED40
            if (task->callback) task->callback(1, task->context);    // 0x44F5C2
        } else {
            ODBC_SQLTransact_ordinal23(/* handles */, SQL_COMMIT);   // 0x44ED20
            if (task->callback) task->callback(0, task->context);    // 0x44F5C2
        }
        // Les retours ODBC commit/rollback ne sont pas vérifiés ici.
        // Voir assembleur pour détails d'allocation/libération/erreurs.
    }
}

// Character::DataSaveCallback @0x413CA0
void DataSaveCallback_PSEUDO(int status, CharacterPseudo *character) {
    // ATTENTION: 'status' n'est pas consulté par le corps désassemblé.
    string name = copy_string(character->field_15C); // @0x41DA50
    DebugLog(0x800, "Stopped saving character %s.", name.c_str());
    DebugLog(4, "Finished async saving character %s.", name.c_str());
    SetEvent(character->field_120);  // IAT 0x4DE12C
}
