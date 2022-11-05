package com.facebook.ads.internal.view.b;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.j;
import com.facebook.ads.internal.view.n;
/* loaded from: classes.dex */
public class b extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f2272a;
    private a b;
    private TextView c;
    private LinearLayout d;

    public b(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes, boolean z, int i) {
        super(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        setVerticalGravity(16);
        setOrientation(1);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density));
        linearLayout.setLayoutParams(layoutParams);
        addView(linearLayout);
        this.d = new LinearLayout(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        this.d.setOrientation(0);
        this.d.setGravity(16);
        layoutParams2.weight = 3.0f;
        this.d.setLayoutParams(layoutParams2);
        linearLayout.addView(this.d);
        this.f2272a = new c(getContext());
        int a2 = a(z, i);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(Math.round(a2 * displayMetrics.density), Math.round(a2 * displayMetrics.density));
        layoutParams3.setMargins(0, 0, Math.round(15.0f * displayMetrics.density), 0);
        this.f2272a.setLayoutParams(layoutParams3);
        NativeAd.downloadAndDisplayImage(nativeAd.getAdIcon(), this.f2272a);
        this.d.addView(this.f2272a);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        this.d.addView(linearLayout2);
        this.b = new a(getContext(), nativeAd, nativeAdViewAttributes);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.setMargins(0, 0, Math.round(15.0f * displayMetrics.density), 0);
        layoutParams4.weight = 0.5f;
        this.b.setLayoutParams(layoutParams4);
        linearLayout2.addView(this.b);
        this.c = new TextView(getContext());
        this.c.setPadding(Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density));
        this.c.setText(nativeAd.getAdCallToAction());
        this.c.setTextColor(nativeAdViewAttributes.getButtonTextColor());
        this.c.setTextSize(14.0f);
        this.c.setTypeface(nativeAdViewAttributes.getTypeface(), 1);
        this.c.setMaxLines(2);
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        this.c.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(nativeAdViewAttributes.getButtonColor());
        gradientDrawable.setCornerRadius(displayMetrics.density * 5.0f);
        gradientDrawable.setStroke(1, nativeAdViewAttributes.getButtonBorderColor());
        this.c.setBackgroundDrawable(gradientDrawable);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.weight = 0.25f;
        this.c.setLayoutParams(layoutParams5);
        linearLayout2.addView(this.c);
        if (z) {
            n nVar = new n(getContext());
            nVar.setText(nativeAd.getAdBody());
            j.b(nVar, nativeAdViewAttributes);
            nVar.setMinTextSize(nativeAdViewAttributes.getDescriptionTextSize() - 1);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams6.weight = 1.0f;
            nVar.setLayoutParams(layoutParams6);
            nVar.setGravity(80);
            linearLayout.addView(nVar);
        }
    }

    private int a(boolean z, int i) {
        return (int) ((i - 30) * (3.0d / ((z ? 1 : 0) + 3)));
    }

    public TextView getCallToActionView() {
        return this.c;
    }

    public ImageView getIconView() {
        return this.f2272a;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        TextView titleTextView = this.b.getTitleTextView();
        if (titleTextView.getLayout().getLineEnd(titleTextView.getLineCount() - 1) < this.b.getMinVisibleTitleCharacters()) {
            this.d.removeView(this.f2272a);
            super.onMeasure(i, i2);
        }
    }
}
