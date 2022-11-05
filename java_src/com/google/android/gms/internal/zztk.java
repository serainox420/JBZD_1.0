package com.google.android.gms.internal;

import com.google.android.gms.internal.zzso;
/* loaded from: classes2.dex */
public class zztk extends zzso<zztl> {

    /* loaded from: classes2.dex */
    private static class zza extends zzrz implements zzso.zza<zztl> {
        private final zztl zzagN;

        public zza(zzsc zzscVar) {
            super(zzscVar);
            this.zzagN = new zztl();
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zzd(String str, int i) {
            if ("ga_sessionTimeout".equals(str)) {
                this.zzagN.zzagP = i;
            } else {
                zzd("int configuration name not recognized", str);
            }
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zze(String str, boolean z) {
            int i = 1;
            if ("ga_autoActivityTracking".equals(str)) {
                zztl zztlVar = this.zzagN;
                if (!z) {
                    i = 0;
                }
                zztlVar.zzagQ = i;
            } else if ("ga_anonymizeIp".equals(str)) {
                zztl zztlVar2 = this.zzagN;
                if (!z) {
                    i = 0;
                }
                zztlVar2.zzagR = i;
            } else if (!"ga_reportUncaughtExceptions".equals(str)) {
                zzd("bool configuration name not recognized", str);
            } else {
                zztl zztlVar3 = this.zzagN;
                if (!z) {
                    i = 0;
                }
                zztlVar3.zzagS = i;
            }
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zzp(String str, String str2) {
            this.zzagN.zzagT.put(str, str2);
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zzq(String str, String str2) {
            if ("ga_trackingId".equals(str)) {
                this.zzagN.zzabs = str2;
            } else if (!"ga_sampleFrequency".equals(str)) {
                zzd("string configuration name not recognized", str);
            } else {
                try {
                    this.zzagN.zzagO = Double.parseDouble(str2);
                } catch (NumberFormatException e) {
                    zzc("Error parsing ga_sampleFrequency value", str2, e);
                }
            }
        }

        @Override // com.google.android.gms.internal.zzso.zza
        /* renamed from: zzqr */
        public zztl zzoV() {
            return this.zzagN;
        }
    }

    public zztk(zzsc zzscVar) {
        super(zzscVar, new zza(zzscVar));
    }
}
