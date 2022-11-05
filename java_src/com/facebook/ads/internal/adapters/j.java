package com.facebook.ads.internal.adapters;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.WindowManager;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.InterstitialAdActivity;
import com.google.android.gms.drive.DriveFile;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class j extends InterstitialAdapter {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentMap<String, com.facebook.ads.internal.view.d> f2097a = new ConcurrentHashMap();
    private Context c;
    private s d;
    private InterstitialAdapterListener e;
    private o g;
    private a h;
    private final String b = UUID.randomUUID().toString();
    private boolean f = false;

    /* loaded from: classes.dex */
    public enum a {
        UNSPECIFIED,
        VERTICAL,
        HORIZONTAL;

        public static a a(int i) {
            return i == 2 ? HORIZONTAL : VERTICAL;
        }
    }

    public static com.facebook.ads.internal.view.d a(String str) {
        return f2097a.get(str);
    }

    private int b() {
        int rotation = ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay().getRotation();
        if (this.h == a.UNSPECIFIED) {
            return -1;
        }
        if (this.h == a.HORIZONTAL) {
            switch (rotation) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        }
        switch (rotation) {
            case 2:
                return 9;
            default:
                return 1;
        }
    }

    @Override // com.facebook.ads.internal.adapters.InterstitialAdapter
    public void loadInterstitialAd(Context context, InterstitialAdapterListener interstitialAdapterListener, Map<String, Object> map, com.facebook.ads.internal.g.f fVar) {
        this.c = context;
        this.e = interstitialAdapterListener;
        JSONObject jSONObject = (JSONObject) map.get("data");
        if (!jSONObject.has("markup")) {
            final k kVar = new k();
            kVar.a(context, new com.facebook.ads.a.a() { // from class: com.facebook.ads.internal.adapters.j.1
                @Override // com.facebook.ads.a.a
                public void a(r rVar) {
                    j.this.f = true;
                    if (j.this.e == null) {
                        return;
                    }
                    j.this.e.onInterstitialAdLoaded(j.this);
                }

                @Override // com.facebook.ads.a.a
                public void a(r rVar, View view) {
                    j.this.h = kVar.h();
                    j.f2097a.put(j.this.b, kVar);
                }

                @Override // com.facebook.ads.a.a
                public void a(r rVar, AdError adError) {
                    j.this.e.onInterstitialError(j.this, adError);
                }

                @Override // com.facebook.ads.a.a
                public void b(r rVar) {
                    j.this.e.onInterstitialAdClicked(j.this, "", true);
                }

                @Override // com.facebook.ads.a.a
                public void c(r rVar) {
                    j.this.e.onInterstitialLoggingImpression(j.this);
                    j.this.e.onInterstitialAdDisplayed(j.this);
                }

                @Override // com.facebook.ads.a.a
                public void d(r rVar) {
                    j.f2097a.remove(j.this.b);
                    j.this.e.onInterstitialAdDismissed(j.this);
                }
            }, map, fVar);
            return;
        }
        this.g = o.a(jSONObject);
        if (com.facebook.ads.internal.util.g.a(context, this.g)) {
            interstitialAdapterListener.onInterstitialError(this, AdError.NO_FILL);
            return;
        }
        this.d = new s(context, this.b, this, this.e);
        this.d.a();
        Map<String, String> e = this.g.e();
        if (e.containsKey("orientation")) {
            this.h = a.a(Integer.parseInt(e.get("orientation")));
        }
        this.f = true;
        if (this.e == null) {
            return;
        }
        this.e.onInterstitialAdLoaded(this);
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.d != null) {
            this.d.b();
        }
    }

    @Override // com.facebook.ads.internal.adapters.InterstitialAdapter
    public boolean show() {
        if (!this.f) {
            if (this.e != null) {
                this.e.onInterstitialError(this, AdError.INTERNAL_ERROR);
            }
            return false;
        }
        Intent intent = new Intent(this.c, AudienceNetworkActivity.class);
        intent.putExtra(AudienceNetworkActivity.PREDEFINED_ORIENTATION_KEY, b());
        intent.putExtra(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.b);
        if (f2097a.containsKey(this.b)) {
            intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.NATIVE);
        } else {
            intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.DISPLAY);
            this.g.a(intent);
        }
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        try {
            this.c.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            intent.setClass(this.c, InterstitialAdActivity.class);
            this.c.startActivity(intent);
        }
        return true;
    }
}
