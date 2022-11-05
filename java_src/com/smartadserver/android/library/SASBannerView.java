package com.smartadserver.android.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.smartadserver.android.library.ui.SASAdView;
/* loaded from: classes3.dex */
public class SASBannerView extends SASAdView {
    private static final String r = SASBannerView.class.getSimpleName();

    public SASBannerView(Context context) {
        super(context);
    }

    public SASBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setRefreshInterval(int i) {
        setRefreshIntervalImpl(i);
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void a(final View view) {
        if (view != null) {
            a(new Runnable() { // from class: com.smartadserver.android.library.SASBannerView.1
                @Override // java.lang.Runnable
                public void run() {
                    SASBannerView.this.addView(view);
                }
            });
        }
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void b(final View view) {
        if (view != null) {
            a(new Runnable() { // from class: com.smartadserver.android.library.SASBannerView.2
                @Override // java.lang.Runnable
                public void run() {
                    if (SASBannerView.this.indexOfChild(view) > -1) {
                        SASBannerView.this.removeView(view);
                    }
                }
            });
        }
    }
}
