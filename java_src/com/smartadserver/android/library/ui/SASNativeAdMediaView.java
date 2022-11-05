package com.smartadserver.android.library.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.exception.SASAdDisplayException;
import com.smartadserver.android.library.model.SASNativeAdElement;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* loaded from: classes3.dex */
public class SASNativeAdMediaView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private SASNativeAdElement f5511a;
    private SASBannerView b;
    private FrameLayout c;
    private boolean d;

    public SASNativeAdMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = true;
        a(context);
    }

    private void a(Context context) {
        this.b = new SASBannerView(context) { // from class: com.smartadserver.android.library.ui.SASNativeAdMediaView.1
            @Override // com.smartadserver.android.library.ui.SASAdView
            protected void b(Context context2) {
            }

            @Override // com.smartadserver.android.library.ui.SASAdView
            protected void c(Context context2) {
            }

            @Override // com.smartadserver.android.library.ui.SASAdView
            protected void a(Context context2) {
            }
        };
        addView(this.b, new FrameLayout.LayoutParams(-1, -1));
        this.c = new FrameLayout(context);
        this.c.setVisibility(8);
        addView(this.c, new FrameLayout.LayoutParams(-1, -2));
    }

    public SASNativeAdElement getNativeAdElement() {
        return this.f5511a;
    }

    public void setNativeAdElement(SASNativeAdElement sASNativeAdElement) {
        View view = null;
        if (this.f5511a != sASNativeAdElement) {
            a();
            this.f5511a = sASNativeAdElement;
            if (sASNativeAdElement != null) {
                sASNativeAdElement.triggerImpressionCount();
                g.a b = sASNativeAdElement.getSelectedMediationAd() != null ? sASNativeAdElement.getSelectedMediationAd().e().b() : null;
                if (b != null) {
                    view = b.a(getContext());
                }
                if (view != null) {
                    this.b.setVisibility(8);
                    this.c.setVisibility(0);
                    this.c.addView(view, new FrameLayout.LayoutParams(-1, -2));
                    return;
                }
                a(sASNativeAdElement.getMediaElement());
            }
        }
    }

    private void a(final SASNativeVideoAdElement sASNativeVideoAdElement) {
        if (sASNativeVideoAdElement != null) {
            this.b.n = sASNativeVideoAdElement;
            new Thread(new Runnable() { // from class: com.smartadserver.android.library.ui.SASNativeAdMediaView.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        SASNativeAdMediaView.this.b.a(sASNativeVideoAdElement, 5000L);
                        SASNativeAdMediaView.this.b.getMRAIDController().setState("default");
                    } catch (SASAdDisplayException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        SASNativeVideoAdElement mediaElement;
        if (this.f5511a != null && (mediaElement = this.f5511a.getMediaElement()) != null && this.d) {
            int mediaWidth = mediaElement.getMediaWidth();
            int mediaHeight = mediaElement.getMediaHeight();
            if (mediaHeight > 0 && mediaHeight > 0) {
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                float f = size / mediaWidth;
                float f2 = size2 / mediaHeight;
                float f3 = mediaWidth / mediaHeight;
                if (f > f2 && f2 > BitmapDescriptorFactory.HUE_RED) {
                    size = (int) (size2 * f3);
                } else {
                    size2 = (int) (size / f3);
                }
                i = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                i2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
            }
        }
        super.onMeasure(i, i2);
    }

    public void setEnforceAspectRatio(boolean z) {
        this.d = z;
    }

    public void a() {
        this.b.setVisibility(0);
        this.c.removeAllViews();
        this.c.setVisibility(8);
        this.b.d();
    }
}
