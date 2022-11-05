package com.intentsoftware.addapptr;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.intentsoftware.addapptr.ad.BannerAd;
import java.util.Locale;
/* compiled from: BannerPlacementLayout.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public class k extends FrameLayout {
    private int gravity;
    private final int height;
    private com.intentsoftware.addapptr.ad.a loadedAd;
    private final int width;

    public k(int i, int i2, int i3, Context context, boolean z) {
        super(context);
        this.gravity = i3;
        if (z) {
            this.width = i;
            this.height = i2;
            return;
        }
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        if (i != 0) {
            this.width = (int) ((i * displayMetrics.density) + 0.5d);
        } else {
            this.width = 0;
        }
        if (i2 != 0) {
            this.height = (int) ((displayMetrics.density * i2) + 0.5d);
            return;
        }
        this.height = 0;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(adjustDimensionSpec(i, this.width), adjustDimensionSpec(i2, this.height));
    }

    private int adjustDimensionSpec(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                i2 = Math.min(size, i2);
                break;
            case 0:
                mode = 1073741824;
                break;
            case 1073741824:
                i2 = size;
                break;
            default:
                mode = 1073741824;
                break;
        }
        return View.MeasureSpec.makeMeasureSpec(i2, mode);
    }

    public void destroy() {
        removeAllViews();
        if (this.loadedAd != null) {
            this.loadedAd.unload();
            this.loadedAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void presentAd(BannerAd bannerAd) {
        this.loadedAd = bannerAd;
        final View bannerView = bannerAd.getBannerView();
        if (bannerView.getParent() != null) {
            ((ViewGroup) bannerView.getParent()).removeView(bannerView);
        }
        addView(bannerView, new FrameLayout.LayoutParams(-2, -2, this.gravity));
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            post(new Runnable() { // from class: com.intentsoftware.addapptr.k.1
                @Override // java.lang.Runnable
                public void run() {
                    int width = bannerView.getWidth();
                    int height = bannerView.getHeight();
                    if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                        com.intentsoftware.addapptr.c.c.d(this, String.format(Locale.US, "Bannerview size: %d, %d", Integer.valueOf(width), Integer.valueOf(height)));
                        com.intentsoftware.addapptr.c.c.d(this, String.format(Locale.US, "Placement size: %d, %d", Integer.valueOf(k.this.width), Integer.valueOf(k.this.height)));
                    }
                }
            });
        }
    }

    public void setGravity(int i) {
        this.gravity = i;
    }
}
