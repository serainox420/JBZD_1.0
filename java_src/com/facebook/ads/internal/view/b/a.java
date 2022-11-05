package com.facebook.ads.internal.view.b;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.j;
import com.facebook.ads.internal.view.l;
/* loaded from: classes.dex */
public class a extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private l f2271a;
    private int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        super(context);
        int i = 21;
        setOrientation(1);
        setVerticalGravity(16);
        this.f2271a = new l(getContext(), 2);
        this.f2271a.setMinTextSize(nativeAdViewAttributes.getTitleTextSize() - 2);
        this.f2271a.setText(nativeAd.getAdTitle());
        j.a(this.f2271a, nativeAdViewAttributes);
        this.f2271a.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        addView(this.f2271a);
        this.b = nativeAd.getAdTitle() != null ? Math.min(nativeAd.getAdTitle().length(), 21) : i;
        addView(j.a(context, nativeAd, nativeAdViewAttributes));
    }

    public int getMinVisibleTitleCharacters() {
        return this.b;
    }

    public TextView getTitleTextView() {
        return this.f2271a;
    }
}
