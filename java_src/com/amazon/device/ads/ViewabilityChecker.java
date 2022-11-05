package com.amazon.device.ads;

import android.graphics.Rect;
import android.view.View;
import com.amazon.device.ads.MobileAdsLogger;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ViewabilityChecker {
    static final String HEIGHT_AD = "height";
    static final String INSTRUMENTATION_URL = "instrumentationPixelUrl";
    static final String IS_AD_ONSCREEN = "isAdOnScreen";
    private static final String LOGTAG = ViewabilityChecker.class.getSimpleName();
    static final String VIEWABLE_PERCENTAGE = "viewablePercentage";
    static final String WIDTH_AD = "width";
    static final String X_POSITION_AD = "x";
    static final String Y_POSITION_AD = "y";
    private final AdController adController;
    private float adTotalArea;
    private View adView;
    private final MobileAdsLogger logger;
    private ViewabilityOverlapCalculator viewabilityOverlapCalculator;

    public ViewabilityChecker(AdController adController) {
        this(adController, new MobileAdsLoggerFactory(), new ViewabilityOverlapCalculator(adController));
    }

    ViewabilityChecker(AdController adController, MobileAdsLoggerFactory mobileAdsLoggerFactory, ViewabilityOverlapCalculator viewabilityOverlapCalculator) {
        this.adController = adController;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        if (this.adController == null) {
            throw new IllegalArgumentException("AdController is null");
        }
        this.viewabilityOverlapCalculator = viewabilityOverlapCalculator;
    }

    public ViewabilityInfo getViewabilityInfo() {
        float f;
        boolean z = false;
        Rect rect = new Rect();
        this.adView = this.adController.getAdContainer().getCurrentAdView();
        if (this.adView == null) {
            this.adTotalArea = BitmapDescriptorFactory.HUE_RED;
        } else {
            this.adTotalArea = this.adView.getWidth() * this.adView.getHeight();
        }
        if (this.adTotalArea == 0.0d) {
            this.logger.w("AdView width and height not set");
            return null;
        }
        boolean globalVisibleRect = this.adView.getGlobalVisibleRect(rect);
        boolean isShown = this.adView.isShown();
        boolean hasWindowFocus = hasWindowFocus();
        boolean isAdTransparent = AndroidTargetUtils.isAdTransparent(this.adController.getAdContainer());
        if (isAdTransparent) {
            this.logger.forceLog(MobileAdsLogger.Level.WARN, "This ad view is transparent therefore it will not be considered viewable. Please ensure the ad view is completely opaque.", new Object[0]);
        }
        this.logger.d("IsAdVisible: %s, IsAdShown: %s, windowHasFocus: %s, IsAdTransparent: %s", Boolean.valueOf(globalVisibleRect), Boolean.valueOf(isShown), Boolean.valueOf(hasWindowFocus), Boolean.valueOf(isAdTransparent));
        boolean z2 = globalVisibleRect && isShown && hasWindowFocus && !isAdTransparent;
        if (!z2) {
            f = 0.0f;
        } else if (this.adController.isModal()) {
            f = 100.0f;
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            f = this.viewabilityOverlapCalculator.calculateViewablePercentage(this.adView, rect);
            this.logger.d("Total computation time: %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
        if (f != BitmapDescriptorFactory.HUE_RED) {
            z = z2;
        }
        return new ViewabilityInfo(z, getJSONObject(f, z, this.adView));
    }

    private JSONObject getJSONObject(float f, boolean z, View view) {
        JSONObject jSONObject = new JSONObject();
        int[] iArr = new int[2];
        try {
            jSONObject.put(VIEWABLE_PERCENTAGE, f);
            jSONObject.put("width", view.getWidth());
            jSONObject.put("height", view.getHeight());
            if (z) {
                this.adView.getLocationOnScreen(iArr);
            }
            jSONObject.put("x", iArr[0]);
            jSONObject.put("y", iArr[1]);
            return jSONObject;
        } catch (JSONException e) {
            this.logger.w("JSON Error occured %s", e.getMessage());
            return null;
        }
    }

    private boolean hasWindowFocus() {
        View rootView = this.adController.getRootView();
        if (rootView == null) {
            return false;
        }
        return rootView.hasWindowFocus();
    }
}
