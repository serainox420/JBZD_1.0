package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.f.k;
import android.text.TextUtils;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzeq;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.internal.zzhc;
import com.google.android.gms.internal.zzhp;
import com.google.android.gms.internal.zzhq;
import com.google.android.gms.internal.zzhr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqh;
@zzme
/* loaded from: classes.dex */
public class zzl extends zzer.zza {
    private final Context mContext;
    private final zze zzsv;
    private final zzka zzsz;
    private zzep zztk;
    private zzhc zztp;
    private zzex zztr;
    private final String zzts;
    private final zzqh zztt;
    private zzhp zztx;
    private zzhq zzty;
    private k<String, zzhs> zztA = new k<>();
    private k<String, zzhr> zztz = new k<>();

    public zzl(Context context, String str, zzka zzkaVar, zzqh zzqhVar, zze zzeVar) {
        this.mContext = context;
        this.zzts = str;
        this.zzsz = zzkaVar;
        this.zztt = zzqhVar;
        this.zzsv = zzeVar;
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(zzhc zzhcVar) {
        this.zztp = zzhcVar;
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(zzhp zzhpVar) {
        this.zztx = zzhpVar;
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(zzhq zzhqVar) {
        this.zzty = zzhqVar;
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(String str, zzhs zzhsVar, zzhr zzhrVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.zztA.put(str, zzhsVar);
        this.zztz.put(str, zzhrVar);
    }

    @Override // com.google.android.gms.internal.zzer
    public void zzb(zzep zzepVar) {
        this.zztk = zzepVar;
    }

    @Override // com.google.android.gms.internal.zzer
    public void zzb(zzex zzexVar) {
        this.zztr = zzexVar;
    }

    @Override // com.google.android.gms.internal.zzer
    public zzeq zzck() {
        return new zzk(this.mContext, this.zzts, this.zzsz, this.zztt, this.zztk, this.zztx, this.zzty, this.zztA, this.zztz, this.zztp, this.zztr, this.zzsv);
    }
}
