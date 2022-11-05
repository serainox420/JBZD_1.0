package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzme;
@zzme
/* loaded from: classes.dex */
public class zzf {
    public void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel) {
        zza(context, adOverlayInfoParcel, true);
    }

    public void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzNN == 4 && adOverlayInfoParcel.zzNG == null) {
            if (adOverlayInfoParcel.zzNF != null) {
                adOverlayInfoParcel.zzNF.onAdClicked();
            }
            com.google.android.gms.ads.internal.zzw.zzcJ().zza(context, adOverlayInfoParcel.zzNE, adOverlayInfoParcel.zzNM);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzvn.zzYY);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.zza(intent, adOverlayInfoParcel);
        if (!com.google.android.gms.common.util.zzt.zzzn()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        com.google.android.gms.ads.internal.zzw.zzcM().zzb(context, intent);
    }
}
