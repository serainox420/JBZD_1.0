package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
@zzme
/* loaded from: classes.dex */
public class zzb {
    private final Context mContext;
    Object zzPq;
    private final boolean zzPr;

    public zzb(Context context) {
        this(context, true);
    }

    public zzb(Context context, boolean z) {
        this.mContext = context;
        this.zzPr = z;
    }

    public void destroy() {
        this.zzPq = null;
    }

    public void zzV(IBinder iBinder) {
        try {
            this.zzPq = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService$Stub").getDeclaredMethod("asInterface", IBinder.class).invoke(null, iBinder);
        } catch (Exception e) {
            if (!this.zzPr) {
                return;
            }
            zzpk.zzbh("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.");
        }
    }

    public Bundle zza(String str, String str2, String str3) {
        try {
            Class<?> loadClass = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
            return (Bundle) loadClass.getDeclaredMethod("getBuyIntent", Integer.TYPE, String.class, String.class, String.class, String.class).invoke(loadClass.cast(this.zzPq), 3, str, str2, AnalyticsEvent.IN_APP, str3);
        } catch (Exception e) {
            if (this.zzPr) {
                zzpk.zzc("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", e);
            }
            return null;
        }
    }

    public int zzb(int i, String str, String str2) {
        try {
            Class<?> loadClass = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
            return ((Integer) loadClass.getDeclaredMethod("isBillingSupported", Integer.TYPE, String.class, String.class).invoke(loadClass.cast(this.zzPq), Integer.valueOf(i), str, str2)).intValue();
        } catch (Exception e) {
            if (this.zzPr) {
                zzpk.zzc("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", e);
            }
            return 5;
        }
    }

    public int zzm(String str, String str2) {
        try {
            Class<?> loadClass = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
            return ((Integer) loadClass.getDeclaredMethod("consumePurchase", Integer.TYPE, String.class, String.class).invoke(loadClass.cast(this.zzPq), 3, str, str2)).intValue();
        } catch (Exception e) {
            if (this.zzPr) {
                zzpk.zzc("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", e);
            }
            return 5;
        }
    }

    public Bundle zzn(String str, String str2) {
        try {
            Class<?> loadClass = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
            return (Bundle) loadClass.getDeclaredMethod("getPurchases", Integer.TYPE, String.class, String.class, String.class).invoke(loadClass.cast(this.zzPq), 3, str, AnalyticsEvent.IN_APP, str2);
        } catch (Exception e) {
            if (this.zzPr) {
                zzpk.zzc("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", e);
            }
            return null;
        }
    }
}
