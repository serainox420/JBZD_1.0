package com.google.android.gms.drive;

import com.google.android.gms.drive.ExecutionOptions;
/* loaded from: classes2.dex */
public class zzl extends ExecutionOptions {
    private boolean zzaLh;

    /* loaded from: classes2.dex */
    public static class zza extends ExecutionOptions.Builder {
        private boolean zzaLh = true;

        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzAC */
        public zzl build() {
            zzAx();
            return new zzl(this.zzaLc, this.zzaLd, this.zzaLe, this.zzaLh);
        }

        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzaz */
        public zza setNotifyOnCompletion(boolean z) {
            super.setNotifyOnCompletion(z);
            return this;
        }

        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzdG */
        public zza setTrackingTag(String str) {
            super.setTrackingTag(str);
            return this;
        }

        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzej */
        public zza setConflictStrategy(int i) {
            super.setConflictStrategy(i);
            return this;
        }
    }

    private zzl(String str, boolean z, int i, boolean z2) {
        super(str, z, i);
        this.zzaLh = z2;
    }

    public static zzl zzb(ExecutionOptions executionOptions) {
        zza zzaVar = new zza();
        if (executionOptions != null) {
            zzaVar.setConflictStrategy(executionOptions.zzAw());
            zzaVar.setNotifyOnCompletion(executionOptions.zzAv());
            String zzAu = executionOptions.zzAu();
            if (zzAu != null) {
                zzaVar.setTrackingTag(zzAu);
            }
        }
        return (zzl) zzaVar.build();
    }

    public boolean zzAB() {
        return this.zzaLh;
    }
}
