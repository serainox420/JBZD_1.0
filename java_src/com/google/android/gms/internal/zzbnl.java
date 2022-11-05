package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.crash.FirebaseCrash;
/* loaded from: classes2.dex */
public class zzbnl {
    private final Context mContext;
    private AppMeasurement zzbZi;
    private boolean zzbZh = false;
    final AppMeasurement.zzc zzbZj = new AppMeasurement.zzc(this) { // from class: com.google.android.gms.internal.zzbnl.1
        @Override // com.google.android.gms.measurement.AppMeasurement.zzc
        public void zzc(String str, String str2, Bundle bundle, long j) {
            if (!str.equals("crash")) {
                FirebaseCrash.a(str2, j, bundle);
            }
        }
    };

    public zzbnl(Context context) {
        this.zzbZi = null;
        this.mContext = context;
        try {
            this.zzbZi = AppMeasurement.getInstance(this.mContext);
        } catch (NoClassDefFoundError e) {
            String valueOf = String.valueOf(e);
            Log.w("FirebaseCrashAnalytics", new StringBuilder(String.valueOf(valueOf).length() + 50).append("Unable to log event, missing measurement library: ").append(valueOf).toString());
        }
    }

    private void zzR(Bundle bundle) {
        if (this.zzbZi != null) {
            this.zzbZi.logEventInternal("crash", "_ae", bundle);
        }
    }

    public void zzWB() {
        try {
            if (this.zzbZh || this.zzbZi == null) {
                return;
            }
            this.zzbZi.zza(this.zzbZj);
            this.zzbZh = true;
        } catch (IllegalStateException e) {
            Log.d("FirebaseCrashAnalytics", "Firebase Analytics breadcrumbs is not supported");
        }
    }

    public void zza(boolean z, long j) {
        Bundle bundle = new Bundle();
        if (z) {
            bundle.putInt("fatal", 1);
        } else {
            bundle.putInt("fatal", 0);
        }
        bundle.putLong("timestamp", j);
        zzR(bundle);
    }
}
