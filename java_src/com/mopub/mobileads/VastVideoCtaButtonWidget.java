package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.CtaButtonDrawable;
/* loaded from: classes.dex */
public class VastVideoCtaButtonWidget extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private CtaButtonDrawable f4479a;
    private final RelativeLayout.LayoutParams b;
    private final RelativeLayout.LayoutParams c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    public VastVideoCtaButtonWidget(Context context, int i, boolean z, boolean z2) {
        super(context);
        this.f = z;
        this.g = z2;
        this.h = false;
        setId((int) Utils.generateUniqueId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        this.f4479a = new CtaButtonDrawable(context);
        setImageDrawable(this.f4479a);
        this.b = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.b.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.b.addRule(8, i);
        this.b.addRule(7, i);
        this.c = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.c.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.c.addRule(12);
        this.c.addRule(11);
        c();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f4479a.setCtaText(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHasSocialActions(boolean z) {
        this.h = z;
    }

    boolean getHasSocialActions() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.d = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.d = true;
        this.e = true;
        c();
    }

    private void c() {
        if (!this.g) {
            setVisibility(8);
        } else if (!this.d) {
            setVisibility(4);
        } else if (this.e && this.f && !this.h) {
            setVisibility(8);
        } else {
            switch (getResources().getConfiguration().orientation) {
                case 0:
                    MoPubLog.d("Screen orientation undefined: CTA button widget defaulting to portrait layout");
                    setLayoutParams(this.c);
                    break;
                case 1:
                    setLayoutParams(this.c);
                    break;
                case 2:
                    setLayoutParams(this.b);
                    break;
                case 3:
                    MoPubLog.d("Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                    setLayoutParams(this.c);
                    break;
                default:
                    MoPubLog.d("Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                    setLayoutParams(this.c);
                    break;
            }
            setVisibility(0);
        }
    }

    @VisibleForTesting
    @Deprecated
    String getCtaText() {
        return this.f4479a.getCtaText();
    }
}
