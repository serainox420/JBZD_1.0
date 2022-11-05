package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbul {
    private zzbvl zzcpl = zzbvl.zzcpV;
    private zzbva zzcpm = zzbva.DEFAULT;
    private zzbuj zzcpn = zzbui.IDENTITY;
    private final Map<Type, zzbum<?>> zzcpo = new HashMap();
    private final List<zzbvd> zzcpb = new ArrayList();
    private final List<zzbvd> zzcpp = new ArrayList();
    private int zzcpq = 2;
    private int zzcpr = 2;
    private boolean zzcps = true;

    private void zza(String str, int i, int i2, List<zzbvd> list) {
        zzbuf zzbufVar;
        if (str != null && !"".equals(str.trim())) {
            zzbufVar = new zzbuf(str);
        } else if (i == 2 || i2 == 2) {
            return;
        } else {
            zzbufVar = new zzbuf(i, i2);
        }
        list.add(zzbvb.zza(zzbwg.zzq(Date.class), zzbufVar));
        list.add(zzbvb.zza(zzbwg.zzq(Timestamp.class), zzbufVar));
        list.add(zzbvb.zza(zzbwg.zzq(java.sql.Date.class), zzbufVar));
    }

    public zzbul zza(Type type, Object obj) {
        zzbvi.zzax((obj instanceof zzbuy) || (obj instanceof zzbup) || (obj instanceof zzbum) || (obj instanceof zzbvc));
        if (obj instanceof zzbum) {
            this.zzcpo.put(type, (zzbum) obj);
        }
        if ((obj instanceof zzbuy) || (obj instanceof zzbup)) {
            this.zzcpb.add(zzbvb.zzb(zzbwg.zzl(type), obj));
        }
        if (obj instanceof zzbvc) {
            this.zzcpb.add(zzbwf.zza(zzbwg.zzl(type), (zzbvc) obj));
        }
        return this;
    }

    public zzbul zza(zzbug... zzbugVarArr) {
        for (zzbug zzbugVar : zzbugVarArr) {
            this.zzcpl = this.zzcpl.zza(zzbugVar, true, true);
        }
        return this;
    }

    public zzbul zzadg() {
        this.zzcps = false;
        return this;
    }

    public zzbuk zzadh() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zzcpb);
        Collections.reverse(arrayList);
        arrayList.addAll(this.zzcpp);
        zza(null, this.zzcpq, this.zzcpr, arrayList);
        return new zzbuk(this.zzcpl, this.zzcpn, this.zzcpo, false, false, false, this.zzcps, false, false, this.zzcpm, arrayList);
    }

    public zzbul zzf(int... iArr) {
        this.zzcpl = this.zzcpl.zzg(iArr);
        return this;
    }
}
