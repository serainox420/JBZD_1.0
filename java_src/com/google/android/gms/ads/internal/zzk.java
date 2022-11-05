package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.f.k;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzeq;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.internal.zzhc;
import com.google.android.gms.internal.zzhp;
import com.google.android.gms.internal.zzhq;
import com.google.android.gms.internal.zzhr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqh;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzk extends zzeq.zza {
    private final Context mContext;
    private final zze zzsv;
    private final zzka zzsz;
    private final zzep zztk;
    private final zzhp zztl;
    private final zzhq zztm;
    private final k<String, zzhs> zztn;
    private final k<String, zzhr> zzto;
    private final zzhc zztp;
    private final zzex zztr;
    private final String zzts;
    private final zzqh zztt;
    private WeakReference<zzs> zztu;
    private final Object zzrJ = new Object();
    private final List<String> zztq = zzci();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(Context context, String str, zzka zzkaVar, zzqh zzqhVar, zzep zzepVar, zzhp zzhpVar, zzhq zzhqVar, k<String, zzhs> kVar, k<String, zzhr> kVar2, zzhc zzhcVar, zzex zzexVar, zze zzeVar) {
        this.mContext = context;
        this.zzts = str;
        this.zzsz = zzkaVar;
        this.zztt = zzqhVar;
        this.zztk = zzepVar;
        this.zztm = zzhqVar;
        this.zztl = zzhpVar;
        this.zztn = kVar;
        this.zzto = kVar2;
        this.zztp = zzhcVar;
        this.zztr = zzexVar;
        this.zzsv = zzeVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> zzci() {
        ArrayList arrayList = new ArrayList();
        if (this.zztm != null) {
            arrayList.add("1");
        }
        if (this.zztl != null) {
            arrayList.add("2");
        }
        if (this.zztn.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzeq
    public String getMediationAdapterClassName() {
        synchronized (this.zzrJ) {
            if (this.zztu != null) {
                zzs zzsVar = this.zztu.get();
                return zzsVar != null ? zzsVar.getMediationAdapterClassName() : null;
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzeq
    public boolean isLoading() {
        synchronized (this.zzrJ) {
            if (this.zztu != null) {
                zzs zzsVar = this.zztu.get();
                return zzsVar != null ? zzsVar.isLoading() : false;
            }
            return false;
        }
    }

    protected void runOnUiThread(Runnable runnable) {
        zzpo.zzXC.post(runnable);
    }

    protected zzs zzcj() {
        return new zzs(this.mContext, this.zzsv, zzeg.zzk(this.mContext), this.zzts, this.zzsz, this.zztt);
    }

    @Override // com.google.android.gms.internal.zzeq
    public void zzf(final zzec zzecVar) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.ads.internal.zzk.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzk.this.zzrJ) {
                    zzs zzcj = zzk.this.zzcj();
                    zzk.this.zztu = new WeakReference(zzcj);
                    zzcj.zzb(zzk.this.zztl);
                    zzcj.zzb(zzk.this.zztm);
                    zzcj.zza(zzk.this.zztn);
                    zzcj.zza(zzk.this.zztk);
                    zzcj.zzb(zzk.this.zzto);
                    zzcj.zzb(zzk.this.zzci());
                    zzcj.zzb(zzk.this.zztp);
                    zzcj.zza(zzk.this.zztr);
                    zzcj.zzb(zzecVar);
                }
            }
        });
    }
}
