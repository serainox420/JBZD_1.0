package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;
/* loaded from: classes3.dex */
public class MoPubConversionTracker {

    /* renamed from: a  reason: collision with root package name */
    private Context f4426a;
    private String b;
    private SharedPreferences c;
    private String d;

    public void reportAppOpen(Context context) {
        if (context != null) {
            this.f4426a = context;
            this.d = this.f4426a.getPackageName();
            this.b = this.d + " tracked";
            this.c = SharedPreferencesHelper.getSharedPreferences(this.f4426a);
            if (!a()) {
                TrackingRequest.makeTrackingHttpRequest(new a().generateUrlString(Constants.HOST), this.f4426a, new TrackingRequest.Listener() { // from class: com.mopub.mobileads.MoPubConversionTracker.1
                    @Override // com.mopub.network.TrackingRequest.Listener
                    public void onResponse(String str) {
                        MoPubConversionTracker.this.c.edit().putBoolean(MoPubConversionTracker.this.b, true).commit();
                    }

                    @Override // com.mopub.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError volleyError) {
                    }
                });
            } else {
                MoPubLog.d("Conversion already tracked");
            }
        }
    }

    private boolean a() {
        return this.c.getBoolean(this.b, false);
    }

    /* loaded from: classes3.dex */
    private class a extends BaseUrlGenerator {
        private a() {
        }

        @Override // com.mopub.common.BaseUrlGenerator
        public String generateUrlString(String str) {
            a(str, Constants.CONVERSION_TRACKING_HANDLER);
            k("6");
            a(MoPubConversionTracker.this.d);
            l(ClientMetadata.getInstance(MoPubConversionTracker.this.f4426a).getAppVersion());
            b();
            return a();
        }

        private void a(String str) {
            b("id", str);
        }
    }
}
