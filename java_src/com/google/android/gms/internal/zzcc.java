package com.google.android.gms.internal;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public class zzcc {
    public static final zzcc zzrl = new zzcc("@@ContextManagerNullAccount@@");
    private static zza zzrm = null;
    private final String mName;

    /* loaded from: classes2.dex */
    public interface zza {
    }

    public zzcc(String str) {
        this.mName = com.google.android.gms.common.internal.zzac.zzdr(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcc) {
            return TextUtils.equals(this.mName, ((zzcc) obj).getName());
        }
        return false;
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.mName);
    }

    public String toString() {
        return "#account#";
    }
}
