package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzpu {
    private final String[] zzYb;
    private final double[] zzYc;
    private final double[] zzYd;
    private final int[] zzYe;
    private int zzYf;

    /* loaded from: classes2.dex */
    public static class zza {
        public final int count;
        public final String name;
        public final double zzYg;
        public final double zzYh;
        public final double zzYi;

        public zza(String str, double d, double d2, double d3, int i) {
            this.name = str;
            this.zzYh = d;
            this.zzYg = d2;
            this.zzYi = d3;
            this.count = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return com.google.android.gms.common.internal.zzaa.equal(this.name, zzaVar.name) && this.zzYg == zzaVar.zzYg && this.zzYh == zzaVar.zzYh && this.count == zzaVar.count && Double.compare(this.zzYi, zzaVar.zzYi) == 0;
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.zzaa.hashCode(this.name, Double.valueOf(this.zzYg), Double.valueOf(this.zzYh), Double.valueOf(this.zzYi), Integer.valueOf(this.count));
        }

        public String toString() {
            return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("name", this.name).zzg("minBound", Double.valueOf(this.zzYh)).zzg("maxBound", Double.valueOf(this.zzYg)).zzg("percent", Double.valueOf(this.zzYi)).zzg("count", Integer.valueOf(this.count)).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb {
        private final List<String> zzYj = new ArrayList();
        private final List<Double> zzYk = new ArrayList();
        private final List<Double> zzYl = new ArrayList();

        public zzb zza(String str, double d, double d2) {
            int i;
            int i2 = 0;
            while (true) {
                i = i2;
                if (i >= this.zzYj.size()) {
                    break;
                }
                double doubleValue = this.zzYl.get(i).doubleValue();
                double doubleValue2 = this.zzYk.get(i).doubleValue();
                if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                    break;
                }
                i2 = i + 1;
            }
            this.zzYj.add(i, str);
            this.zzYl.add(i, Double.valueOf(d));
            this.zzYk.add(i, Double.valueOf(d2));
            return this;
        }

        public zzpu zzla() {
            return new zzpu(this);
        }
    }

    private zzpu(zzb zzbVar) {
        int size = zzbVar.zzYk.size();
        this.zzYb = (String[]) zzbVar.zzYj.toArray(new String[size]);
        this.zzYc = zzn(zzbVar.zzYk);
        this.zzYd = zzn(zzbVar.zzYl);
        this.zzYe = new int[size];
        this.zzYf = 0;
    }

    private double[] zzn(List<Double> list) {
        double[] dArr = new double[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < dArr.length) {
                dArr[i2] = list.get(i2).doubleValue();
                i = i2 + 1;
            } else {
                return dArr;
            }
        }
    }

    public List<zza> getBuckets() {
        ArrayList arrayList = new ArrayList(this.zzYb.length);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.zzYb.length) {
                arrayList.add(new zza(this.zzYb[i2], this.zzYd[i2], this.zzYc[i2], this.zzYe[i2] / this.zzYf, this.zzYe[i2]));
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    public void zza(double d) {
        this.zzYf++;
        for (int i = 0; i < this.zzYd.length; i++) {
            if (this.zzYd[i] <= d && d < this.zzYc[i]) {
                int[] iArr = this.zzYe;
                iArr[i] = iArr[i] + 1;
            }
            if (d < this.zzYd[i]) {
                return;
            }
        }
    }
}
