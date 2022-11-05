package com.google.firebase.auth;

import com.google.android.gms.common.internal.zzac;
import com.google.firebase.FirebaseException;
/* loaded from: classes2.dex */
public class FirebaseAuthException extends FirebaseException {

    /* renamed from: a  reason: collision with root package name */
    private final String f3536a;

    public FirebaseAuthException(String str, String str2) {
        super(str2);
        this.f3536a = zzac.zzdr(str);
    }

    public String getErrorCode() {
        return this.f3536a;
    }
}
