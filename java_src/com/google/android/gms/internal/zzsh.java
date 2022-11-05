package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzsh extends zzsa {
    private final zzrk zzacl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsh(zzsc zzscVar) {
        super(zzscVar);
        this.zzacl = new zzrk();
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
        zznU().zzmP().zzb(this.zzacl);
        zzmw();
    }

    public void zzmw() {
        zztn zzmB = zzmB();
        String zzmY = zzmB.zzmY();
        if (zzmY != null) {
            this.zzacl.setAppName(zzmY);
        }
        String zzmZ = zzmB.zzmZ();
        if (zzmZ != null) {
            this.zzacl.setAppVersion(zzmZ);
        }
    }

    public zzrk zzoy() {
        zzob();
        return this.zzacl;
    }
}
