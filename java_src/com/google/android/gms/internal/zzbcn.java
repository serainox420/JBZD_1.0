package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
/* loaded from: classes2.dex */
public class zzbcn {
    private Context mContext;
    private Tracker zzabD;
    private GoogleAnalytics zzabF;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza implements Logger {
        zza() {
        }

        private static int zznI(int i) {
            switch (i) {
                case 2:
                    return 0;
                case 3:
                case 4:
                    return 1;
                case 5:
                    return 2;
                case 6:
                default:
                    return 3;
            }
        }

        @Override // com.google.android.gms.analytics.Logger
        public void error(Exception exc) {
            zzbbu.zzb("", exc);
        }

        @Override // com.google.android.gms.analytics.Logger
        public void error(String str) {
            zzbbu.e(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public int getLogLevel() {
            return zznI(zzbbu.getLogLevel());
        }

        @Override // com.google.android.gms.analytics.Logger
        public void info(String str) {
            zzbbu.zzbg(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public void setLogLevel(int i) {
            zzbbu.zzbh("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
        }

        @Override // com.google.android.gms.analytics.Logger
        public void verbose(String str) {
            zzbbu.v(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public void warn(String str) {
            zzbbu.zzbh(str);
        }
    }

    public zzbcn(Context context) {
        this.mContext = context;
    }

    private synchronized void zzhu(String str) {
        if (this.zzabF == null) {
            this.zzabF = GoogleAnalytics.getInstance(this.mContext);
            this.zzabF.setLogger(new zza());
            this.zzabD = this.zzabF.newTracker(str);
        }
    }

    public Tracker zzht(String str) {
        zzhu(str);
        return this.zzabD;
    }
}
