package com.google.android.gms.internal;
/* loaded from: classes.dex */
public abstract class zzsa extends zzrz {
    private boolean zzadP;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsa(zzsc zzscVar) {
        super(zzscVar);
    }

    public void initialize() {
        zzmS();
        this.zzadP = true;
    }

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
