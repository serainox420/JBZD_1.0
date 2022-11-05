package com.google.android.gms.internal;

import com.google.android.gms.internal.zzso;
/* loaded from: classes2.dex */
public class zzsx extends zzso<zzsy> {

    /* loaded from: classes2.dex */
    private static class zza implements zzso.zza<zzsy> {
        private final zzsc zzadO;
        private final zzsy zzagc = new zzsy();

        public zza(zzsc zzscVar) {
            this.zzadO = zzscVar;
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zzd(String str, int i) {
            if ("ga_dispatchPeriod".equals(str)) {
                this.zzagc.zzage = i;
            } else {
                this.zzadO.zznS().zzd("Int xml configuration name not recognized", str);
            }
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zze(String str, boolean z) {
            if (!"ga_dryRun".equals(str)) {
                this.zzadO.zznS().zzd("Bool xml configuration name not recognized", str);
                return;
            }
            this.zzagc.zzagf = z ? 1 : 0;
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zzp(String str, String str2) {
        }

        @Override // com.google.android.gms.internal.zzso.zza
        /* renamed from: zzpF */
        public zzsy zzoV() {
            return this.zzagc;
        }

        @Override // com.google.android.gms.internal.zzso.zza
        public void zzq(String str, String str2) {
            if ("ga_appName".equals(str)) {
                this.zzagc.zzacL = str2;
            } else if ("ga_appVersion".equals(str)) {
                this.zzagc.zzacM = str2;
            } else if ("ga_logLevel".equals(str)) {
                this.zzagc.zzagd = str2;
            } else {
                this.zzadO.zznS().zzd("String xml configuration name not recognized", str);
            }
        }
    }

    public zzsx(zzsc zzscVar) {
        super(zzscVar, new zza(zzscVar));
    }
}
