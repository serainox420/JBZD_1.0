package com.google.android.gms.drive;

import com.google.android.gms.drive.ExecutionOptions;
/* loaded from: classes2.dex */
public class zzk extends ExecutionOptions {
    private String zzaLf;
    private String zzaLg;

    /* loaded from: classes2.dex */
    public static class zza extends ExecutionOptions.Builder {
        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzAA */
        public zzk build() {
            zzAx();
            return new zzk(this.zzaLc, this.zzaLd, null, null, this.zzaLe);
        }

        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzay */
        public zza setNotifyOnCompletion(boolean z) {
            super.setNotifyOnCompletion(z);
            return this;
        }

        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzdF */
        public zza setTrackingTag(String str) {
            super.setTrackingTag(str);
            return this;
        }

        @Override // com.google.android.gms.drive.ExecutionOptions.Builder
        /* renamed from: zzei */
        public zza setConflictStrategy(int i) {
            throw new UnsupportedOperationException();
        }
    }

    private zzk(String str, boolean z, String str2, String str3, int i) {
        super(str, z, i);
        this.zzaLf = str2;
        this.zzaLg = str3;
    }

    public static zzk zza(ExecutionOptions executionOptions) {
        zza zzaVar = new zza();
        if (executionOptions != null) {
            if (executionOptions.zzAw() != 0) {
                throw new IllegalStateException("May not set a conflict strategy for new file creation.");
            }
            String zzAu = executionOptions.zzAu();
            if (zzAu != null) {
                zzaVar.setTrackingTag(zzAu);
            }
            zzaVar.setNotifyOnCompletion(executionOptions.zzAv());
        }
        return (zzk) zzaVar.build();
    }

    public String zzAy() {
        return this.zzaLf;
    }

    public String zzAz() {
        return this.zzaLg;
    }
}
