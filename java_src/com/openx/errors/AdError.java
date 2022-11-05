package com.openx.errors;
/* loaded from: classes3.dex */
public class AdError extends Exception {
    private static final long serialVersionUID = -5221998429404202540L;
    private String mMessage;

    public void setMessage(String str) {
        this.mMessage = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.mMessage;
    }
}
