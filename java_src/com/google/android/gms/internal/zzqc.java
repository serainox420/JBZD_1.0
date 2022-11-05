package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
@zzme
@TargetApi(17)
/* loaded from: classes.dex */
public class zzqc {
    private static zzqc zzYH = null;
    String zzIA;

    private zzqc() {
    }

    public static zzqc zzld() {
        if (zzYH == null) {
            zzYH = new zzqc();
        }
        return zzYH;
    }

    public void zzaa(final Context context) {
        if (!TextUtils.isEmpty(this.zzIA)) {
            return;
        }
        final Context remoteContext = com.google.android.gms.common.zzg.getRemoteContext(context);
        this.zzIA = (String) zzqb.zzb(new Callable<String>(this) { // from class: com.google.android.gms.internal.zzqc.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbY */
            public String call() {
                SharedPreferences sharedPreferences;
                boolean z = true;
                if (remoteContext != null) {
                    zzpk.v("Attempting to read user agent from Google Play Services.");
                    sharedPreferences = remoteContext.getSharedPreferences("admob_user_agent", 1);
                    z = false;
                } else {
                    zzpk.v("Attempting to read user agent from local cache.");
                    sharedPreferences = context.getSharedPreferences("admob_user_agent", 0);
                }
                String string = sharedPreferences.getString("user_agent", "");
                if (TextUtils.isEmpty(string)) {
                    zzpk.v("Reading user agent from WebSettings");
                    string = WebSettings.getDefaultUserAgent(context);
                    if (z) {
                        context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", string).apply();
                        zzpk.v("Persisting user agent.");
                    }
                }
                return string;
            }
        });
    }

    public void zzab(Context context) {
        zzpk.v("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(this.zzIA)) {
            if (com.google.android.gms.common.zzg.getRemoteContext(context) == null) {
                context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context)).apply();
            }
            this.zzIA = defaultUserAgent;
        }
        zzpk.v("User agent is updated.");
    }

    public String zzac(Context context) {
        zzaa(context);
        return this.zzIA;
    }
}
