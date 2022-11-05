package com.google.firebase;

import com.google.android.gms.common.internal.zzac;
/* loaded from: classes.dex */
public class FirebaseException extends Exception {
    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public FirebaseException() {
    }

    public FirebaseException(String str) {
        super(zzac.zzh(str, "Detail message must not be empty"));
    }

    public FirebaseException(String str, Throwable th) {
        super(zzac.zzh(str, "Detail message must not be empty"), th);
    }
}
