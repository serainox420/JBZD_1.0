package com.crashlytics.android.core;

import android.os.AsyncTask;
import io.fabric.sdk.android.c;
/* loaded from: classes.dex */
public class CrashTest {
    public void throwRuntimeException(String str) {
        throw new RuntimeException(str);
    }

    public int stackOverflow() {
        return stackOverflow() + ((int) Math.random());
    }

    public void indexOutOfBounds() {
        c.h().a(CrashlyticsCore.TAG, "Out of bounds value: " + new int[2][10]);
    }

    public void crashAsyncTask(final long j) {
        new AsyncTask<Void, Void, Void>() { // from class: com.crashlytics.android.core.CrashTest.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                try {
                    Thread.sleep(j);
                } catch (InterruptedException e) {
                }
                CrashTest.this.throwRuntimeException("Background thread crash");
                return null;
            }
        }.execute(null);
    }

    public void throwFiveChainedExceptions() {
        try {
            privateMethodThatThrowsException("1");
        } catch (Exception e) {
            try {
                throw new RuntimeException("2", e);
            } catch (Exception e2) {
                try {
                    throw new RuntimeException("3", e2);
                } catch (Exception e3) {
                    try {
                        throw new RuntimeException("4", e3);
                    } catch (Exception e4) {
                        throw new RuntimeException("5", e4);
                    }
                }
            }
        }
    }

    private void privateMethodThatThrowsException(String str) {
        throw new RuntimeException(str);
    }
}
