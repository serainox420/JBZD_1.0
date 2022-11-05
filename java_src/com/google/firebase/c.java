package com.google.firebase;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzabs;
/* loaded from: classes2.dex */
public class c implements zzabs {
    @Override // com.google.android.gms.internal.zzabs
    public Exception zzA(Status status) {
        return status.getStatusCode() == 8 ? new FirebaseException(status.zzvv()) : new FirebaseApiNotAvailableException(status.zzvv());
    }
}
