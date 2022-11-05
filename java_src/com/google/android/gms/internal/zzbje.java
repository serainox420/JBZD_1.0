package com.google.android.gms.internal;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbje {
    private final Context mContext;
    private String zzbFy;
    Map<String, Object> zzbLU;
    private final Map<String, Object> zzbLV;
    private final zzbjg zzbNg;
    private final com.google.android.gms.common.util.zze zzuP;

    public zzbje(Context context) {
        this(context, new HashMap(), new zzbjg(context), com.google.android.gms.common.util.zzi.zzzc());
    }

    zzbje(Context context, Map<String, Object> map, zzbjg zzbjgVar, com.google.android.gms.common.util.zze zzeVar) {
        this.zzbFy = null;
        this.zzbLU = new HashMap();
        this.mContext = context;
        this.zzuP = zzeVar;
        this.zzbNg = zzbjgVar;
        this.zzbLV = map;
    }

    public void zzig(String str) {
        this.zzbFy = str;
    }
}
