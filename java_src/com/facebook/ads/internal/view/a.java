package com.facebook.ads.internal.view;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class a extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private final NativeAdViewAttributes f2260a;
    private final NativeAd b;
    private final DisplayMetrics c;
    private ArrayList<View> d;

    public a(Context context, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        super(context);
        setBackgroundColor(nativeAdViewAttributes.getBackgroundColor());
        this.f2260a = nativeAdViewAttributes;
        this.b = nativeAd;
        this.c = context.getResources().getDisplayMetrics();
        setLayoutParams(new RelativeLayout.LayoutParams(-1, Math.round(type.getHeight() * this.c.density)));
        o oVar = new o(context);
        oVar.setMinWidth(Math.round(280.0f * this.c.density));
        oVar.setMaxWidth(Math.round(375.0f * this.c.density));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        oVar.setLayoutParams(layoutParams);
        addView(oVar);
        LinearLayout linearLayout = new LinearLayout(context);
        this.d = new ArrayList<>();
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        oVar.addView(linearLayout);
        switch (type) {
            case HEIGHT_400:
                b(linearLayout);
            case HEIGHT_300:
                a(linearLayout);
                break;
        }
        a(linearLayout, type);
        nativeAd.registerViewForInteraction(this, this.d);
        AdChoicesView adChoicesView = new AdChoicesView(getContext(), nativeAd, true);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) adChoicesView.getLayoutParams();
        layoutParams2.addRule(11);
        layoutParams2.setMargins(Math.round(this.c.density * 4.0f), Math.round(this.c.density * 4.0f), Math.round(this.c.density * 4.0f), Math.round(this.c.density * 4.0f));
        oVar.addView(adChoicesView);
    }

    private void a(ViewGroup viewGroup) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, Math.round(this.c.density * 180.0f)));
        relativeLayout.setBackgroundColor(this.f2260a.getBackgroundColor());
        MediaView mediaView = new MediaView(getContext());
        relativeLayout.addView(mediaView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (this.c.density * 180.0f));
        layoutParams.addRule(13, -1);
        mediaView.setLayoutParams(layoutParams);
        mediaView.setAutoplay(this.f2260a.getAutoplay());
        mediaView.setAutoplayOnMobile(this.f2260a.getAutoplayOnMobile());
        mediaView.setNativeAd(this.b);
        viewGroup.addView(relativeLayout);
        this.d.add(mediaView);
    }

    private void a(ViewGroup viewGroup, NativeAdView.Type type) {
        com.facebook.ads.internal.view.b.b bVar = new com.facebook.ads.internal.view.b.b(getContext(), this.b, this.f2260a, a(type), b(type));
        bVar.setLayoutParams(new LinearLayout.LayoutParams(-1, Math.round(b(type) * this.c.density)));
        viewGroup.addView(bVar);
        this.d.add(bVar.getIconView());
        this.d.add(bVar.getCallToActionView());
    }

    private boolean a(NativeAdView.Type type) {
        return type == NativeAdView.Type.HEIGHT_300 || type == NativeAdView.Type.HEIGHT_120;
    }

    private int b(NativeAdView.Type type) {
        switch (type) {
            case HEIGHT_400:
                return (type.getHeight() - 180) / 2;
            case HEIGHT_300:
                return type.getHeight() - 180;
            case HEIGHT_100:
            case HEIGHT_120:
                return type.getHeight();
            default:
                return 0;
        }
    }

    private void b(ViewGroup viewGroup) {
        com.facebook.ads.internal.view.b.d dVar = new com.facebook.ads.internal.view.b.d(getContext(), this.b, this.f2260a);
        dVar.setLayoutParams(new LinearLayout.LayoutParams(-1, Math.round(110.0f * this.c.density)));
        viewGroup.addView(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b.unregisterView();
    }
}
