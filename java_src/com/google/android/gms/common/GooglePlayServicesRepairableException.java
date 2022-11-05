package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes2.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int zzaiH;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.zzaiH = i;
    }

    public int getConnectionStatusCode() {
        return this.zzaiH;
    }
}
