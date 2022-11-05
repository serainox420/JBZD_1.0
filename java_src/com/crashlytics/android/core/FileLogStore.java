package com.crashlytics.android.core;
/* loaded from: classes.dex */
interface FileLogStore {
    void closeLogFile();

    void deleteLogFile();

    ByteString getLogAsByteString();

    void writeToLog(long j, String str);
}
