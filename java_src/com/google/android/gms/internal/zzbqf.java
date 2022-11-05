package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbqf {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final zzbqf zzcgR;
    public static final zzbqf zzcgS;
    private final zza zzcgT;
    private final zzbrb zzcgU;
    private final boolean zzcgV;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum zza {
        User,
        Server
    }

    static {
        $assertionsDisabled = !zzbqf.class.desiredAssertionStatus();
        zzcgR = new zzbqf(zza.User, null, false);
        zzcgS = new zzbqf(zza.Server, null, false);
    }

    public zzbqf(zza zzaVar, zzbrb zzbrbVar, boolean z) {
        this.zzcgT = zzaVar;
        this.zzcgU = zzbrbVar;
        this.zzcgV = z;
        if ($assertionsDisabled || !z || zzZB()) {
            return;
        }
        throw new AssertionError();
    }

    public static zzbqf zzc(zzbrb zzbrbVar) {
        return new zzbqf(zza.Server, zzbrbVar, true);
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzcgT);
        String valueOf2 = String.valueOf(this.zzcgU);
        return new StringBuilder(String.valueOf(valueOf).length() + 52 + String.valueOf(valueOf2).length()).append("OperationSource{source=").append(valueOf).append(", queryParams=").append(valueOf2).append(", tagged=").append(this.zzcgV).append("}").toString();
    }

    public boolean zzZA() {
        return this.zzcgT == zza.User;
    }

    public boolean zzZB() {
        return this.zzcgT == zza.Server;
    }

    public boolean zzZC() {
        return this.zzcgV;
    }

    public zzbrb zzZD() {
        return this.zzcgU;
    }
}
