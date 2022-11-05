package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzsp {
    private final zzsc zzabn;
    private volatile Boolean zzaeZ;
    private String zzafa;
    private Set<Integer> zzafb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsp(zzsc zzscVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzscVar);
        this.zzabn = zzscVar;
    }

    public boolean zzoW() {
        if (this.zzaeZ == null) {
            synchronized (this) {
                if (this.zzaeZ == null) {
                    ApplicationInfo applicationInfo = this.zzabn.getContext().getApplicationInfo();
                    String zzzr = com.google.android.gms.common.util.zzu.zzzr();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzaeZ = Boolean.valueOf(str != null && str.equals(zzzr));
                    }
                    if ((this.zzaeZ == null || !this.zzaeZ.booleanValue()) && "com.google.android.gms.analytics".equals(zzzr)) {
                        this.zzaeZ = Boolean.TRUE;
                    }
                    if (this.zzaeZ == null) {
                        this.zzaeZ = Boolean.TRUE;
                        this.zzabn.zznS().zzbT("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzaeZ.booleanValue();
    }

    public boolean zzoX() {
        return zzsw.zzafk.get().booleanValue();
    }

    public int zzoY() {
        return zzsw.zzafD.get().intValue();
    }

    public int zzoZ() {
        return zzsw.zzafH.get().intValue();
    }

    public int zzpa() {
        return zzsw.zzafI.get().intValue();
    }

    public int zzpb() {
        return zzsw.zzafJ.get().intValue();
    }

    public long zzpc() {
        return zzsw.zzafs.get().longValue();
    }

    public long zzpd() {
        return zzsw.zzafr.get().longValue();
    }

    public long zzpe() {
        return zzsw.zzafv.get().longValue();
    }

    public long zzpf() {
        return zzsw.zzafw.get().longValue();
    }

    public int zzpg() {
        return zzsw.zzafx.get().intValue();
    }

    public int zzph() {
        return zzsw.zzafy.get().intValue();
    }

    public long zzpi() {
        return zzsw.zzafL.get().intValue();
    }

    public String zzpj() {
        return zzsw.zzafA.get();
    }

    public String zzpk() {
        return zzsw.zzafz.get();
    }

    public String zzpl() {
        return zzsw.zzafB.get();
    }

    public String zzpm() {
        return zzsw.zzafC.get();
    }

    public zzsj zzpn() {
        return zzsj.zzbY(zzsw.zzafE.get());
    }

    public zzsm zzpo() {
        return zzsm.zzbZ(zzsw.zzafF.get());
    }

    public Set<Integer> zzpp() {
        String str = zzsw.zzafK.get();
        if (this.zzafb == null || this.zzafa == null || !this.zzafa.equals(str)) {
            String[] split = TextUtils.split(str, ",");
            HashSet hashSet = new HashSet();
            for (String str2 : split) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(str2)));
                } catch (NumberFormatException e) {
                }
            }
            this.zzafa = str;
            this.zzafb = hashSet;
        }
        return this.zzafb;
    }

    public long zzpq() {
        return zzsw.zzafT.get().longValue();
    }

    public long zzpr() {
        return zzsw.zzafU.get().longValue();
    }

    public long zzps() {
        return zzsw.zzafX.get().longValue();
    }

    public int zzpt() {
        return zzsw.zzafo.get().intValue();
    }

    public int zzpu() {
        return zzsw.zzafq.get().intValue();
    }

    public String zzpv() {
        return "google_analytics_v4.db";
    }

    public int zzpw() {
        return zzsw.zzafN.get().intValue();
    }

    public int zzpx() {
        return zzsw.zzafO.get().intValue();
    }

    public long zzpy() {
        return zzsw.zzafP.get().longValue();
    }

    public long zzpz() {
        return zzsw.zzafY.get().longValue();
    }
}
