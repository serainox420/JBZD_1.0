package com.google.firebase.auth;
/* loaded from: classes2.dex */
public final class FirebaseAuthWeakPasswordException extends FirebaseAuthInvalidCredentialsException {

    /* renamed from: a  reason: collision with root package name */
    private final String f3537a;

    public FirebaseAuthWeakPasswordException(String str, String str2, String str3) {
        super(str, str2);
        this.f3537a = str3;
    }

    public String getReason() {
        return this.f3537a;
    }
}
