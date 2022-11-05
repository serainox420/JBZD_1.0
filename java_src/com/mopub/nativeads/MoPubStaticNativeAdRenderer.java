package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class MoPubStaticNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final WeakHashMap<View, j> f4603a = new WeakHashMap<>();
    private final ViewBinder b;

    public MoPubStaticNativeAdRenderer(ViewBinder viewBinder) {
        this.b = viewBinder;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.b.f4622a, viewGroup, false);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public void renderAdView(View view, StaticNativeAd staticNativeAd) {
        j jVar = this.f4603a.get(view);
        if (jVar == null) {
            jVar = j.a(view, this.b);
            this.f4603a.put(view, jVar);
        }
        a(jVar, staticNativeAd);
        NativeRendererHelper.updateExtras(jVar.f4639a, this.b.h, staticNativeAd.getExtras());
        a(jVar, 0);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }

    private void a(j jVar, StaticNativeAd staticNativeAd) {
        NativeRendererHelper.addTextView(jVar.b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(jVar.c, staticNativeAd.getText());
        NativeRendererHelper.addTextView(jVar.d, staticNativeAd.getCallToAction());
        NativeImageHelper.loadImageView(staticNativeAd.getMainImageUrl(), jVar.e);
        NativeImageHelper.loadImageView(staticNativeAd.getIconImageUrl(), jVar.f);
        NativeRendererHelper.addPrivacyInformationIcon(jVar.g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
    }

    private void a(j jVar, int i) {
        if (jVar.f4639a != null) {
            jVar.f4639a.setVisibility(i);
        }
    }
}
