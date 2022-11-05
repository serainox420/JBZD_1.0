package com.google.android.gms.awareness;

import android.accounts.Account;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes.dex */
public class AwarenessOptions implements Api.ApiOptions.Optional {
    public static final int NO_UID = -1;
    private final Account zzahh;
    private final String zzalV;
    private final int zzalW;
    private final String zzalX;
    private final String zzalY;
    private final int zzalZ;

    protected AwarenessOptions(String str, int i, String str2, String str3, int i2, Account account) {
        zzac.zzb(str, "moduleId must not be null");
        this.zzalV = str;
        this.zzalW = i;
        this.zzalX = str2;
        this.zzalY = str3;
        this.zzalZ = i2;
        this.zzahh = account;
    }

    @Deprecated
    public static AwarenessOptions create1p(String str) {
        zzac.zzdr(str);
        return new AwarenessOptions(str, 1, null, null, -1, null);
    }

    public static AwarenessOptions create1p(String str, Account account) {
        zzac.zzdr(str);
        return new AwarenessOptions(str, 1, null, null, -1, account);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AwarenessOptions awarenessOptions = (AwarenessOptions) obj;
        return this.zzalW == awarenessOptions.zzalW && this.zzalZ == awarenessOptions.zzalZ && zzaa.equal(this.zzalV, awarenessOptions.zzalV) && zzaa.equal(this.zzalX, awarenessOptions.zzalX) && zzaa.equal(this.zzalY, awarenessOptions.zzalY) && zzaa.equal(this.zzahh, awarenessOptions.zzahh);
    }

    public Account getAccount() {
        return this.zzahh;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzalV, Integer.valueOf(this.zzalW), this.zzalX, this.zzalY, Integer.valueOf(this.zzalZ), this.zzahh);
    }

    public String zzrE() {
        return this.zzalV;
    }

    public int zzrF() {
        return this.zzalW;
    }

    public String zzrG() {
        return this.zzalX;
    }

    public String zzrH() {
        return this.zzalY;
    }

    public int zzrI() {
        return this.zzalZ;
    }
}
