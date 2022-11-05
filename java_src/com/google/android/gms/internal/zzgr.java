package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.a;
import android.support.customtabs.b;
import android.support.customtabs.d;
import android.support.customtabs.e;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzgr implements zzbyc {
    private e zzFX;
    private b zzFY;
    private d zzFZ;
    private zza zzGa;

    /* loaded from: classes2.dex */
    public interface zza {
        void zzfJ();

        void zzfK();
    }

    public static boolean zzo(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || resolveActivity == null) {
            return false;
        }
        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                return resolveActivity.activityInfo.packageName.equals(zzbya.zzcC(context));
            }
        }
        return false;
    }

    public boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        e zzfH;
        if (this.zzFY == null || (zzfH = zzfH()) == null) {
            return false;
        }
        return zzfH.a(uri, bundle, list);
    }

    @Override // com.google.android.gms.internal.zzbyc
    public void zza(b bVar) {
        this.zzFY = bVar;
        this.zzFY.a(0L);
        if (this.zzGa != null) {
            this.zzGa.zzfJ();
        }
    }

    public void zza(zza zzaVar) {
        this.zzGa = zzaVar;
    }

    public void zzd(Activity activity) {
        if (this.zzFZ == null) {
            return;
        }
        activity.unbindService(this.zzFZ);
        this.zzFY = null;
        this.zzFX = null;
        this.zzFZ = null;
    }

    public void zze(Activity activity) {
        String zzcC;
        if (this.zzFY == null && (zzcC = zzbya.zzcC(activity)) != null) {
            this.zzFZ = new zzbyb(this);
            b.a(activity, zzcC, this.zzFZ);
        }
    }

    public e zzfH() {
        if (this.zzFY == null) {
            this.zzFX = null;
        } else if (this.zzFX == null) {
            this.zzFX = this.zzFY.a((a) null);
        }
        return this.zzFX;
    }

    @Override // com.google.android.gms.internal.zzbyc
    public void zzfI() {
        this.zzFY = null;
        this.zzFX = null;
        if (this.zzGa != null) {
            this.zzGa.zzfK();
        }
    }
}
