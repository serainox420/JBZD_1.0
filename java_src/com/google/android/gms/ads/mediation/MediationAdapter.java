package com.google.android.gms.ads.mediation;

import android.os.Bundle;
/* loaded from: classes2.dex */
public interface MediationAdapter {

    /* loaded from: classes2.dex */
    public static class zza {
        private int zzaaO;

        public zza zzam(int i) {
            this.zzaaO = i;
            return this;
        }

        public Bundle zzmm() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzaaO);
            return bundle;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
