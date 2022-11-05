package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
@zzme
/* loaded from: classes.dex */
public class zzjb {
    private final LinkedList<zza> zzJd;
    private zzec zzJe;
    private final int zzJf;
    private boolean zzJg;
    private final String zzts;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class zza {
        com.google.android.gms.ads.internal.zzm zzJh;
        zzec zzJi;
        zzix zzJj;
        long zzJk;
        boolean zzJl;
        boolean zzJm;

        zza(zziw zziwVar) {
            this.zzJh = zziwVar.zzah(zzjb.this.zzts);
            this.zzJj = new zzix();
            this.zzJj.zzc(this.zzJh);
        }

        zza(zzjb zzjbVar, zziw zziwVar, zzec zzecVar) {
            this(zziwVar);
            this.zzJi = zzecVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean load() {
            if (this.zzJl) {
                return false;
            }
            this.zzJm = this.zzJh.zzb(zziz.zzk(this.zzJi != null ? this.zzJi : zzjb.this.zzJe));
            this.zzJl = true;
            this.zzJk = com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjb(zzec zzecVar, String str, int i) {
        com.google.android.gms.common.internal.zzac.zzw(zzecVar);
        com.google.android.gms.common.internal.zzac.zzw(str);
        this.zzJd = new LinkedList<>();
        this.zzJe = zzecVar;
        this.zzts = str;
        this.zzJf = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAdUnitId() {
        return this.zzts;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNetworkType() {
        return this.zzJf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int size() {
        return this.zzJd.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zziw zziwVar, zzec zzecVar) {
        this.zzJd.add(new zza(this, zziwVar, zzecVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzb(zziw zziwVar) {
        zza zzaVar = new zza(zziwVar);
        this.zzJd.add(zzaVar);
        return zzaVar.load();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgA() {
        this.zzJg = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzgB() {
        return this.zzJg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzec zzgx() {
        return this.zzJe;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzgy() {
        int i = 0;
        Iterator<zza> it = this.zzJd.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().zzJl ? i2 + 1 : i2;
            } else {
                return i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzgz() {
        int i = 0;
        Iterator<zza> it = this.zzJd.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().load() ? i2 + 1 : i2;
            } else {
                return i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza zzo(zzec zzecVar) {
        if (zzecVar != null) {
            this.zzJe = zzecVar;
        }
        return this.zzJd.remove();
    }
}
