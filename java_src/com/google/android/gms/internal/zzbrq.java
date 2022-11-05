package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbrq implements Comparable<zzbrq> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final zzbrq zzciS;
    private static final zzbrq zzciT;
    private static final zzbrq zzciU;
    private static final zzbrq zzciV;
    private final String zzaB;

    /* loaded from: classes2.dex */
    private static class zza extends zzbrq {
        private final int zzaGW;

        zza(String str, int i) {
            super(str);
            this.zzaGW = i;
        }

        @Override // com.google.android.gms.internal.zzbrq
        protected int intValue() {
            return this.zzaGW;
        }

        @Override // com.google.android.gms.internal.zzbrq
        public String toString() {
            String str = ((zzbrq) this).zzaB;
            return new StringBuilder(String.valueOf(str).length() + 20).append("IntegerChildName(\"").append(str).append("\")").toString();
        }

        @Override // com.google.android.gms.internal.zzbrq
        protected boolean zzaaL() {
            return true;
        }
    }

    static {
        $assertionsDisabled = !zzbrq.class.desiredAssertionStatus();
        zzciS = new zzbrq("[MIN_KEY]");
        zzciT = new zzbrq("[MAX_KEY]");
        zzciU = new zzbrq(".priority");
        zzciV = new zzbrq(".info");
    }

    private zzbrq(String str) {
        this.zzaB = str;
    }

    public static zzbrq zzaaG() {
        return zzciS;
    }

    public static zzbrq zzaaH() {
        return zzciT;
    }

    public static zzbrq zzaaI() {
        return zzciU;
    }

    public static zzbrq zzaaJ() {
        return zzciV;
    }

    public static zzbrq zzja(String str) {
        Integer zzjj = zzbte.zzjj(str);
        if (zzjj != null) {
            return new zza(str, zzjj.intValue());
        }
        if (str.equals(".priority")) {
            return zzciU;
        }
        if (!$assertionsDisabled && str.contains("/")) {
            throw new AssertionError();
        }
        return new zzbrq(str);
    }

    public String asString() {
        return this.zzaB;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbrq)) {
            return false;
        }
        if (this != obj) {
            return this.zzaB.equals(((zzbrq) obj).zzaB);
        }
        return true;
    }

    public int hashCode() {
        return this.zzaB.hashCode();
    }

    protected int intValue() {
        return 0;
    }

    public String toString() {
        String str = this.zzaB;
        return new StringBuilder(String.valueOf(str).length() + 12).append("ChildKey(\"").append(str).append("\")").toString();
    }

    public boolean zzaaK() {
        return this == zzciU;
    }

    protected boolean zzaaL() {
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzi */
    public int compareTo(zzbrq zzbrqVar) {
        if (this == zzbrqVar) {
            return 0;
        }
        if (this == zzciS || zzbrqVar == zzciT) {
            return -1;
        }
        if (zzbrqVar == zzciS || this == zzciT) {
            return 1;
        }
        if (!zzaaL()) {
            if (!zzbrqVar.zzaaL()) {
                return this.zzaB.compareTo(zzbrqVar.zzaB);
            }
            return 1;
        } else if (!zzbrqVar.zzaaL()) {
            return -1;
        } else {
            int zzH = zzbte.zzH(intValue(), zzbrqVar.intValue());
            return zzH == 0 ? zzbte.zzH(this.zzaB.length(), zzbrqVar.zzaB.length()) : zzH;
        }
    }
}
