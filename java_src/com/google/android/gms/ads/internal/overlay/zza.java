package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
@zzme
/* loaded from: classes.dex */
public class zza {
    public boolean zza(Context context, Intent intent, zzq zzqVar) {
        try {
            String valueOf = String.valueOf(intent.toURI());
            zzpk.v(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            com.google.android.gms.ads.internal.zzw.zzcM().zzb(context, intent);
            if (zzqVar != null) {
                zzqVar.zzbD();
            }
            return true;
        } catch (ActivityNotFoundException e) {
            zzpk.zzbh(e.getMessage());
            return false;
        }
    }

    public boolean zza(Context context, zzc zzcVar, zzq zzqVar) {
        int i;
        if (zzcVar == null) {
            zzpk.zzbh("No intent data for launcher overlay.");
            return false;
        }
        zzgd.initialize(context);
        if (zzcVar.intent != null) {
            return zza(context, zzcVar.intent, zzqVar);
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(zzcVar.url)) {
            zzpk.zzbh("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzcVar.mimeType)) {
            intent.setDataAndType(Uri.parse(zzcVar.url), zzcVar.mimeType);
        } else {
            intent.setData(Uri.parse(zzcVar.url));
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzcVar.packageName)) {
            intent.setPackage(zzcVar.packageName);
        }
        if (!TextUtils.isEmpty(zzcVar.zzMH)) {
            String[] split = zzcVar.zzMH.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzcVar.zzMH);
                zzpk.zzbh(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent.setClassName(split[0], split[1]);
        }
        String str = zzcVar.zzMI;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                zzpk.zzbh("Could not parse intent flags.");
                i = 0;
            }
            intent.addFlags(i);
        }
        if (zzgd.zzFk.get().booleanValue()) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
        }
        return zza(context, intent, zzqVar);
    }
}
