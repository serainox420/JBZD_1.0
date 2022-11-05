package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes2.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int zzaiH;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.zzaiH = i;
    }

    public int getConnectionStatusCode() {
        return this.zzaiH;
    }
}
