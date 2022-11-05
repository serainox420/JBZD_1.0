package com.google.android.gms.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzauh extends zzaug {
    private boolean zzadP;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauh(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbqc.zzb(this);
    }

    public final void initialize() {
        if (this.zzadP) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzmS();
        this.zzbqc.zzMK();
        this.zzadP = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInitialized() {
        return this.zzadP;
    }

    protected abstract void zzmS();

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzob() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
