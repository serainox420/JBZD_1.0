package com.crashlytics.android.core;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.o;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
/* loaded from: classes.dex */
class QueueFileLogStore implements FileLogStore {
    private o logFile;
    private final int maxLogSize;
    private final File workingFile;

    public QueueFileLogStore(File file, int i) {
        this.workingFile = file;
        this.maxLogSize = i;
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void writeToLog(long j, String str) {
        openLogFile();
        doWriteToLog(j, str);
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public ByteString getLogAsByteString() {
        if (!this.workingFile.exists()) {
            return null;
        }
        openLogFile();
        if (this.logFile == null) {
            return null;
        }
        final int[] iArr = {0};
        final byte[] bArr = new byte[this.logFile.a()];
        try {
            this.logFile.a(new o.c() { // from class: com.crashlytics.android.core.QueueFileLogStore.1
                @Override // io.fabric.sdk.android.services.common.o.c
                public void read(InputStream inputStream, int i) throws IOException {
                    try {
                        inputStream.read(bArr, iArr[0], i);
                        int[] iArr2 = iArr;
                        iArr2[0] = iArr2[0] + i;
                    } finally {
                        inputStream.close();
                    }
                }
            });
        } catch (IOException e) {
            c.h().e(CrashlyticsCore.TAG, "A problem occurred while reading the Crashlytics log file.", e);
        }
        return ByteString.copyFrom(bArr, 0, iArr[0]);
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void closeLogFile() {
        i.a(this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void deleteLogFile() {
        closeLogFile();
        this.workingFile.delete();
    }

    private void openLogFile() {
        if (this.logFile == null) {
            try {
                this.logFile = new o(this.workingFile);
            } catch (IOException e) {
                c.h().e(CrashlyticsCore.TAG, "Could not open log file: " + this.workingFile, e);
            }
        }
    }

    private void doWriteToLog(long j, String str) {
        int i;
        if (this.logFile != null) {
            String str2 = str == null ? "null" : str;
            try {
                if (str2.length() > this.maxLogSize / 4) {
                    str2 = "..." + str2.substring(str2.length() - i);
                }
                this.logFile.a(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str2.replaceAll("\r", MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).replaceAll("\n", MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR)).getBytes("UTF-8"));
                while (!this.logFile.b() && this.logFile.a() > this.maxLogSize) {
                    this.logFile.c();
                }
            } catch (IOException e) {
                c.h().e(CrashlyticsCore.TAG, "There was a problem writing to the Crashlytics log.", e);
            }
        }
    }
}
