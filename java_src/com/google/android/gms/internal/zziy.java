package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzep;
import java.util.Random;
/* JADX INFO: Access modifiers changed from: package-private */
@zzme
/* loaded from: classes.dex */
public class zziy {
    zzev zzIV;
    zzle zzIW;
    zzgp zzIX;
    zzeo zzIY;
    zznw zzIZ;
    zzep zztk;

    /* loaded from: classes2.dex */
    private static class zza extends zzep.zza {
        private final zzep zzJa;

        zza(zzep zzepVar) {
            this.zzJa = zzepVar;
        }

        @Override // com.google.android.gms.internal.zzep
        public void onAdClosed() throws RemoteException {
            zzjc zzgC = zzjc.zzgC();
            float floatValue = zzgd.zzDm.get().floatValue();
            if (zzgC.zzgI() + zzgC.zzgH() <= zzgC.zzgJ() * floatValue || Float.isNaN(floatValue)) {
                int intValue = zzgd.zzDk.get().intValue();
                int intValue2 = zzgd.zzDl.get().intValue();
                if (intValue <= 0 || intValue2 < 0) {
                    com.google.android.gms.ads.internal.zzw.zzdb().zzgv();
                } else {
                    zzpo.zzXC.postDelayed(new Runnable(this) { // from class: com.google.android.gms.internal.zziy.zza.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.google.android.gms.ads.internal.zzw.zzdb().zzgv();
                        }
                    }, new Random().nextInt(intValue2 + 1) + intValue);
                }
            }
            this.zzJa.onAdClosed();
        }

        @Override // com.google.android.gms.internal.zzep
        public void onAdFailedToLoad(int i) throws RemoteException {
            this.zzJa.onAdFailedToLoad(i);
        }

        @Override // com.google.android.gms.internal.zzep
        public void onAdLeftApplication() throws RemoteException {
            this.zzJa.onAdLeftApplication();
        }

        @Override // com.google.android.gms.internal.zzep
        public void onAdLoaded() throws RemoteException {
            this.zzJa.onAdLoaded();
        }

        @Override // com.google.android.gms.internal.zzep
        public void onAdOpened() throws RemoteException {
            this.zzJa.onAdOpened();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzc(com.google.android.gms.ads.internal.zzm zzmVar) {
        if (this.zztk != null) {
            zzmVar.zza(new zza(this.zztk));
        }
        if (this.zzIV != null) {
            zzmVar.zza(this.zzIV);
        }
        if (this.zzIW != null) {
            zzmVar.zza(this.zzIW);
        }
        if (this.zzIX != null) {
            zzmVar.zza(this.zzIX);
        }
        if (this.zzIY != null) {
            zzmVar.zza(this.zzIY);
        }
        if (this.zzIZ != null) {
            zzmVar.zza(this.zzIZ);
        }
    }
}
