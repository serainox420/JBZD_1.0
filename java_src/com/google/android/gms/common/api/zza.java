package com.google.android.gms.common.api;
/* loaded from: classes2.dex */
public class zza extends Exception {
    protected final Status zzair;

    public zza(Status status) {
        super(status.getStatusMessage());
        this.zzair = status;
    }
}
