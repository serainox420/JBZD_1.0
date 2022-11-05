package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
@zzme
/* loaded from: classes.dex */
public final class zzoz implements zzpa {
    @Override // com.google.android.gms.internal.zzpa
    public zzqm<AdvertisingIdClient.Info> zzG(final Context context) {
        final zzqj zzqjVar = new zzqj();
        if (zzel.zzeT().zzag(context)) {
            zzpn.zza(new Runnable(this) { // from class: com.google.android.gms.internal.zzoz.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzqjVar.zzh(AdvertisingIdClient.getAdvertisingIdInfo(context));
                    } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
                        zzqjVar.zze(e);
                        zzqf.zzb("Exception while getting advertising Id info", e);
                    }
                }
            });
        }
        return zzqjVar;
    }

    @Override // com.google.android.gms.internal.zzpa
    public zzqm<String> zzg(zzmk zzmkVar) {
        return new zzqk(zzmkVar.zzRA);
    }
}
