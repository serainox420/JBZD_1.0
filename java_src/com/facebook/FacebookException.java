package com.facebook;
/* loaded from: classes.dex */
public class FacebookException extends RuntimeException {
    static final long serialVersionUID = 1;

    public FacebookException() {
    }

    public FacebookException(String str) {
        super(str);
    }

    public FacebookException(String str, Object... objArr) {
        this(String.format(str, objArr));
    }

    public FacebookException(String str, Throwable th) {
        super(str, th);
    }

    public FacebookException(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
