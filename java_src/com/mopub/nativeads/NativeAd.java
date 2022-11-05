package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.network.TrackingRequest;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class NativeAd {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4608a;
    private final BaseNativeAd b;
    private final MoPubAdRenderer c;
    private final Set<String> d = new HashSet();
    private final Set<String> e;
    private final String f;
    private MoPubNativeEventListener g;
    private boolean h;
    private boolean i;
    private boolean j;

    /* loaded from: classes3.dex */
    public interface MoPubNativeEventListener {
        void onClick(View view);

        void onImpression(View view);
    }

    public NativeAd(Context context, String str, String str2, String str3, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this.f4608a = context.getApplicationContext();
        this.f = str3;
        this.d.add(str);
        this.d.addAll(baseNativeAd.c());
        this.e = new HashSet();
        this.e.add(str2);
        this.e.addAll(baseNativeAd.d());
        this.b = baseNativeAd;
        this.b.setNativeEventListener(new BaseNativeAd.NativeEventListener() { // from class: com.mopub.nativeads.NativeAd.1
            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public void onAdImpressed() {
                NativeAd.this.a(null);
            }

            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public void onAdClicked() {
                NativeAd.this.b(null);
            }
        });
        this.c = moPubAdRenderer;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append("impressionTrackers").append(":").append(this.d).append("\n");
        sb.append("clickTrackers").append(":").append(this.e).append("\n");
        sb.append("recordedImpression").append(":").append(this.h).append("\n");
        sb.append("isClicked").append(":").append(this.i).append("\n");
        sb.append("isDestroyed").append(":").append(this.j).append("\n");
        return sb.toString();
    }

    public void setMoPubNativeEventListener(MoPubNativeEventListener moPubNativeEventListener) {
        this.g = moPubNativeEventListener;
    }

    public String getAdUnitId() {
        return this.f;
    }

    public boolean isDestroyed() {
        return this.j;
    }

    public BaseNativeAd getBaseNativeAd() {
        return this.b;
    }

    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.c.createAdView(context, viewGroup);
    }

    public void renderAdView(View view) {
        this.c.renderAdView(view, this.b);
    }

    public MoPubAdRenderer getMoPubAdRenderer() {
        return this.c;
    }

    public void prepare(View view) {
        if (!this.j) {
            this.b.prepare(view);
        }
    }

    public void clear(View view) {
        if (!this.j) {
            this.b.clear(view);
        }
    }

    public void destroy() {
        if (!this.j) {
            this.b.destroy();
            this.j = true;
        }
    }

    @VisibleForTesting
    void a(View view) {
        if (!this.h && !this.j) {
            TrackingRequest.makeTrackingHttpRequest(this.d, this.f4608a);
            if (this.g != null) {
                this.g.onImpression(view);
            }
            this.h = true;
        }
    }

    @VisibleForTesting
    void b(View view) {
        if (!this.i && !this.j) {
            TrackingRequest.makeTrackingHttpRequest(this.e, this.f4608a);
            if (this.g != null) {
                this.g.onClick(view);
            }
            this.i = true;
        }
    }
}
