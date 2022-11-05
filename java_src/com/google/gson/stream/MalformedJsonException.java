package com.google.gson.stream;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class MalformedJsonException extends IOException {
    public MalformedJsonException(String str) {
        super(str);
    }

    public MalformedJsonException(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    public MalformedJsonException(Throwable th) {
        initCause(th);
    }
}
