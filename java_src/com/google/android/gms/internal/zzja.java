package com.google.android.gms.internal;

import java.util.Arrays;
@zzme
/* loaded from: classes.dex */
class zzja {
    private final Object[] mParams;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzja(zzec zzecVar, String str, int i) {
        this.mParams = com.google.android.gms.ads.internal.zzd.zza(zzgd.zzDe.get(), zzecVar, str, i, null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzja)) {
            return false;
        }
        return Arrays.equals(this.mParams, ((zzja) obj).mParams);
    }

    public int hashCode() {
        return Arrays.hashCode(this.mParams);
    }

    public String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.mParams));
        return new StringBuilder(String.valueOf(valueOf).length() + 24).append("[InterstitialAdPoolKey ").append(valueOf).append("]").toString();
    }
}
