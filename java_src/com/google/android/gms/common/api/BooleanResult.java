package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public class BooleanResult implements Result {
    private final Status zzair;
    private final boolean zzayS;

    public BooleanResult(Status status, boolean z) {
        this.zzair = (Status) zzac.zzb(status, "Status must not be null");
        this.zzayS = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.zzair.equals(booleanResult.zzair) && this.zzayS == booleanResult.zzayS;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public boolean getValue() {
        return this.zzayS;
    }

    public final int hashCode() {
        return (this.zzayS ? 1 : 0) + ((this.zzair.hashCode() + 527) * 31);
    }
}
