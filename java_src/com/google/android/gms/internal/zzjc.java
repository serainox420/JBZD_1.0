package com.google.android.gms.internal;

import android.os.Bundle;
@zzme
/* loaded from: classes.dex */
public class zzjc {
    private static zzjc zzJo = new zzjc();
    private int zzJp;
    private int zzJq;
    private int zzJr;
    private int zzJs;
    private int zzJt;

    public static zzjc zzgC() {
        return zzJo;
    }

    public Bundle asBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("ipl", this.zzJp);
        bundle.putInt("ipds", this.zzJq);
        bundle.putInt("ipde", this.zzJr);
        bundle.putInt("iph", this.zzJs);
        bundle.putInt("ipm", this.zzJt);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzE(int i) {
        this.zzJp += i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgD() {
        this.zzJq++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgE() {
        this.zzJr++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgF() {
        this.zzJs++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgG() {
        this.zzJt++;
    }

    public int zzgH() {
        return this.zzJq;
    }

    public int zzgI() {
        return this.zzJr;
    }

    public int zzgJ() {
        return this.zzJs;
    }
}
