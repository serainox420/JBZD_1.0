package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class AppLovinAdView extends RelativeLayout {
    public static final String NAMESPACE = "http://schemas.applovin.com/android/1.0";

    /* renamed from: a  reason: collision with root package name */
    private AdViewController f1507a;

    public AppLovinAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(null, null, context, attributeSet);
    }

    public AppLovinAdView(AppLovinAdSize appLovinAdSize, Activity activity) {
        super(activity);
        Log.d(AppLovinLogger.SDK_TAG, "Created new AdView");
        a(appLovinAdSize, null, activity, null);
    }

    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, Activity activity) {
        super(activity);
        a(appLovinAdSize, appLovinSdk, activity, null);
    }

    private void a(AttributeSet attributeSet, Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        textView.setText("AppLovin Ad");
        textView.setGravity(17);
        addView(textView, displayMetrics.widthPixels, (int) TypedValue.applyDimension(1, 50.0f, displayMetrics));
    }

    private void a(AppLovinAdSize appLovinAdSize, AppLovinSdk appLovinSdk, Context context, AttributeSet attributeSet) {
        if (isInEditMode()) {
            a(attributeSet, context);
            return;
        }
        AdViewControllerImpl adViewControllerImpl = new AdViewControllerImpl();
        adViewControllerImpl.initializeAdView(this, context, appLovinAdSize, appLovinSdk, attributeSet);
        this.f1507a = adViewControllerImpl;
    }

    public void destroy() {
        if (this.f1507a != null) {
            this.f1507a.destroy();
        }
    }

    public AdViewController getAdViewController() {
        return this.f1507a;
    }

    public AppLovinAdSize getSize() {
        if (this.f1507a != null) {
            return this.f1507a.getSize();
        }
        return null;
    }

    public void loadNextAd() {
        if (this.f1507a != null) {
            this.f1507a.loadNextAd();
        } else {
            Log.i(AppLovinLogger.SDK_TAG, "Unable to load next ad: AppLovinAdView is not initialized.");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (this.f1507a != null) {
            this.f1507a.onDetachedFromWindow();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f1507a != null) {
            this.f1507a.onVisibilityChanged(i);
        }
    }

    public void pause() {
        if (this.f1507a != null) {
            this.f1507a.pause();
        }
    }

    public void renderAd(AppLovinAd appLovinAd) {
        renderAd(appLovinAd, null);
    }

    public void renderAd(AppLovinAd appLovinAd, String str) {
        if (this.f1507a != null) {
            this.f1507a.renderAd(appLovinAd, str);
        }
    }

    public void resume() {
        if (this.f1507a != null) {
            this.f1507a.resume();
        }
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        if (this.f1507a != null) {
            this.f1507a.setAdClickListener(appLovinAdClickListener);
        }
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        if (this.f1507a != null) {
            this.f1507a.setAdDisplayListener(appLovinAdDisplayListener);
        }
    }

    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        if (this.f1507a != null) {
            this.f1507a.setAdLoadListener(appLovinAdLoadListener);
        }
    }

    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        if (this.f1507a != null) {
            this.f1507a.setAdVideoPlaybackListener(appLovinAdVideoPlaybackListener);
        }
    }

    public void setAutoDestroy(boolean z) {
        if (this.f1507a != null) {
            this.f1507a.setAutoDestroy(z);
        }
    }
}
