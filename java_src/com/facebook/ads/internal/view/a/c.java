package com.facebook.ads.internal.view.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.internal.util.s;
import com.facebook.ads.internal.util.u;
import com.mopub.mobileads.resource.DrawableConstants;
@TargetApi(19)
/* loaded from: classes.dex */
public class c extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f2266a;
    private TextView b;
    private Drawable c;

    public c(Context context) {
        super(context);
        a();
    }

    private void a() {
        float f = getResources().getDisplayMetrics().density;
        setOrientation(1);
        this.f2266a = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.f2266a.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f2266a.setTextSize(2, 20.0f);
        this.f2266a.setEllipsize(TextUtils.TruncateAt.END);
        this.f2266a.setSingleLine(true);
        this.f2266a.setVisibility(8);
        addView(this.f2266a, layoutParams);
        this.b = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        this.b.setAlpha(0.5f);
        this.b.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.b.setTextSize(2, 15.0f);
        this.b.setCompoundDrawablePadding((int) (f * 5.0f));
        this.b.setEllipsize(TextUtils.TruncateAt.END);
        this.b.setSingleLine(true);
        this.b.setVisibility(8);
        addView(this.b, layoutParams2);
    }

    private Drawable getPadlockDrawable() {
        if (this.c == null) {
            this.c = u.b(getContext(), s.BROWSER_PADLOCK);
        }
        return this.c;
    }

    public void setSubtitle(String str) {
        if (TextUtils.isEmpty(str)) {
            this.b.setText((CharSequence) null);
            this.b.setVisibility(8);
            return;
        }
        Uri parse = Uri.parse(str);
        this.b.setText(parse.getHost());
        this.b.setCompoundDrawablesRelativeWithIntrinsicBounds("https".equals(parse.getScheme()) ? getPadlockDrawable() : null, (Drawable) null, (Drawable) null, (Drawable) null);
        this.b.setVisibility(0);
    }

    public void setTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f2266a.setText((CharSequence) null);
            this.f2266a.setVisibility(8);
            return;
        }
        this.f2266a.setText(str);
        this.f2266a.setVisibility(0);
    }
}
