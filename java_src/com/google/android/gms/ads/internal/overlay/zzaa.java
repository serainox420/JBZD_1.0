package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpo;
/* JADX INFO: Access modifiers changed from: package-private */
@zzme
/* loaded from: classes.dex */
public class zzaa implements Runnable {
    private zzl zzPi;
    private boolean zzxK = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzl zzlVar) {
        this.zzPi = zzlVar;
    }

    private void zziz() {
        zzpo.zzXC.removeCallbacks(this);
        zzpo.zzXC.postDelayed(this, 250L);
    }

    public void pause() {
        this.zzxK = true;
    }

    public void resume() {
        this.zzxK = false;
        zziz();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.zzxK) {
            this.zzPi.zzid();
            zziz();
        }
    }
}
