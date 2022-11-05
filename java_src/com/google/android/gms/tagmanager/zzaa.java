package com.google.android.gms.tagmanager;

import android.content.Context;
/* loaded from: classes2.dex */
public class zzaa implements zzat {
    private static final Object zzbEI = new Object();
    private static zzaa zzbFW;
    private zzau zzbFX;
    private zzcl zzbFk;

    private zzaa(Context context) {
        this(zzav.zzca(context), new zzda());
    }

    zzaa(zzau zzauVar, zzcl zzclVar) {
        this.zzbFX = zzauVar;
        this.zzbFk = zzclVar;
    }

    public static zzat zzbT(Context context) {
        zzaa zzaaVar;
        synchronized (zzbEI) {
            if (zzbFW == null) {
                zzbFW = new zzaa(context);
            }
            zzaaVar = zzbFW;
        }
        return zzaaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzat
    public boolean zzhf(String str) {
        if (!this.zzbFk.zzpV()) {
            zzbo.zzbh("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
            return false;
        }
        this.zzbFX.zzhj(str);
        return true;
    }
}
