package com.google.android.gms.internal;
@zzme
/* loaded from: classes.dex */
public class zzof {
    public final int errorCode;
    public final String zzKq;
    public final long zzLn;
    public final String zzVB;

    /* loaded from: classes2.dex */
    public static final class zza {
        private String zzKW;
        private int zzPY;
        private String zzVC;
        private long zzVD;

        public zza zzaP(String str) {
            this.zzKW = str;
            return this;
        }

        public zza zzaQ(String str) {
            this.zzVC = str;
            return this;
        }

        public zza zzae(int i) {
            this.zzPY = i;
            return this;
        }

        public zzof zzjK() {
            return new zzof(this);
        }

        public zza zzl(long j) {
            this.zzVD = j;
            return this;
        }
    }

    private zzof(zza zzaVar) {
        this.zzVB = zzaVar.zzKW;
        this.zzKq = zzaVar.zzVC;
        this.errorCode = zzaVar.zzPY;
        this.zzLn = zzaVar.zzVD;
    }
}
