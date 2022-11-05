package com.facebook.ads.internal.view;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
/* loaded from: classes.dex */
public abstract class j {
    public static LinearLayout a(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        LinearLayout linearLayout = new LinearLayout(context);
        n nVar = new n(context);
        nVar.setText(nativeAd.getAdSocialContext());
        b(nVar, nativeAdViewAttributes);
        linearLayout.addView(nVar);
        return linearLayout;
    }

    public static void a(TextView textView, NativeAdViewAttributes nativeAdViewAttributes) {
        textView.setTextColor(nativeAdViewAttributes.getTitleTextColor());
        textView.setTextSize(nativeAdViewAttributes.getTitleTextSize());
        textView.setTypeface(nativeAdViewAttributes.getTypeface(), 1);
    }

    public static void b(TextView textView, NativeAdViewAttributes nativeAdViewAttributes) {
        textView.setTextColor(nativeAdViewAttributes.getDescriptionTextColor());
        textView.setTextSize(nativeAdViewAttributes.getDescriptionTextSize());
        textView.setTypeface(nativeAdViewAttributes.getTypeface());
    }
}
