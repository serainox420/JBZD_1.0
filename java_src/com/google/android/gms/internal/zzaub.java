package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
/* loaded from: classes2.dex */
public final class zzaub {
    private final zza zzbty;

    /* loaded from: classes2.dex */
    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzaub(zza zzaVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaVar);
        this.zzbty = zzaVar;
    }

    public static boolean zzi(Context context, boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        return zzaut.zza(context, z ? "com.google.android.gms.measurement.PackageMeasurementReceiver" : "com.google.android.gms.measurement.AppMeasurementReceiver", false);
    }

    public void onReceive(final Context context, Intent intent) {
        final zzaue zzbM = zzaue.zzbM(context);
        final zzatx zzKl = zzbM.zzKl();
        if (intent == null) {
            zzKl.zzMa().log("Receiver called with null intent");
            return;
        }
        zzbM.zzKn().zzLg();
        String action = intent.getAction();
        zzKl.zzMe().zzj("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zzaum.zzj(context, false);
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            this.zzbty.doStartService(context, className);
        } else if (!InternalSDKUtil.ACTION_RECEIVER_REFERRER.equals(action)) {
        } else {
            String stringExtra = intent.getStringExtra(AdTrackerConstants.REFERRER);
            if (stringExtra == null) {
                zzKl.zzMe().log("Install referrer extras are null");
                return;
            }
            final Bundle zzu = zzbM.zzKh().zzu(Uri.parse(stringExtra));
            if (zzu == null) {
                zzKl.zzMe().log("No campaign defined in install referrer broadcast");
                return;
            }
            final long longExtra = 1000 * intent.getLongExtra("referrer_timestamp_seconds", 0L);
            if (longExtra == 0) {
                zzKl.zzMa().log("Install referrer is missing timestamp");
            }
            zzbM.zzKk().zzm(new Runnable(this) { // from class: com.google.android.gms.internal.zzaub.1
                @Override // java.lang.Runnable
                public void run() {
                    zzaus zzS = zzbM.zzKg().zzS(zzbM.zzKb().zzke(), "_fot");
                    long longValue = (zzS == null || !(zzS.mValue instanceof Long)) ? 0L : ((Long) zzS.mValue).longValue();
                    long j = longExtra;
                    long j2 = (longValue <= 0 || (j < longValue && j > 0)) ? j : longValue - 1;
                    if (j2 > 0) {
                        zzu.putLong("click_timestamp", j2);
                    }
                    AppMeasurement.getInstance(context).logEventInternal("auto", "_cmp", zzu);
                    zzKl.zzMe().log("Install campaign recorded");
                }
            });
        }
    }
}
