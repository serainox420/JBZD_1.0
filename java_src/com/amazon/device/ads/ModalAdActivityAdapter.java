package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.amazon.device.ads.AdActivity;
import com.amazon.device.ads.AdEvent;
import com.amazon.device.ads.JSONUtils;
import com.amazon.device.ads.LayoutFactory;
import com.amazon.device.ads.SDKEvent;
import com.openx.view.mraid.JSInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ModalAdActivityAdapter implements AdActivity.AdActivityAdapter {
    private static final String CONTENT_DESCRIPTION_AD_CONTAINER_VIEW = "adContainerView";
    private static final String CONTENT_DESCRIPTION_EXPANSION_VIEW = "expansionView";
    private static final String LOGTAG = ModalAdActivityAdapter.class.getSimpleName();
    private Activity activity;
    private ViewGroup adContainerView;
    private AdControlAccessor adControlAccessor;
    private final AdUtils2 adUtils;
    private final AndroidBuildInfo buildInfo;
    private final ExpandProperties expandProperties;
    private ViewGroup expansionView;
    private final JSONUtils.JSONUtilities jsonUtils;
    private Size lastReportedSize;
    private final LayoutFactory layoutFactory;
    private final MobileAdsLogger logger;
    private final OrientationProperties orientationProperties;
    private String url;
    private final ViewUtils viewUtils;

    public ModalAdActivityAdapter() {
        this(new MobileAdsLoggerFactory(), new AdUtils2(), new JSONUtils.JSONUtilities(), new ExpandProperties(), new OrientationProperties(), new AndroidBuildInfo(), new LayoutFactory(), new ViewUtils());
    }

    ModalAdActivityAdapter(MobileAdsLoggerFactory mobileAdsLoggerFactory, AdUtils2 adUtils2, JSONUtils.JSONUtilities jSONUtilities, ExpandProperties expandProperties, OrientationProperties orientationProperties, AndroidBuildInfo androidBuildInfo, LayoutFactory layoutFactory, ViewUtils viewUtils) {
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.adUtils = adUtils2;
        this.jsonUtils = jSONUtilities;
        this.expandProperties = expandProperties;
        this.orientationProperties = orientationProperties;
        this.buildInfo = androidBuildInfo;
        this.layoutFactory = layoutFactory;
        this.viewUtils = viewUtils;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void preOnCreate() {
        this.activity.requestWindowFeature(1);
        this.activity.getWindow().setFlags(1024, 1024);
        AndroidTargetUtils.hideActionAndStatusBars(this.buildInfo, this.activity);
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onCreate() {
        Intent intent = this.activity.getIntent();
        String stringExtra = intent.getStringExtra("url");
        if (!StringUtils.isNullOrWhiteSpace(stringExtra)) {
            this.url = stringExtra;
        }
        this.expandProperties.fromJSONObject(this.jsonUtils.getJSONObjectFromString(intent.getStringExtra("expandProperties")));
        if (this.url != null) {
            this.expandProperties.setWidth(-1);
            this.expandProperties.setHeight(-1);
        }
        this.orientationProperties.fromJSONObject(this.jsonUtils.getJSONObjectFromString(intent.getStringExtra("orientationProperties")));
        AndroidTargetUtils.enableHardwareAcceleration(this.buildInfo, this.activity.getWindow());
        this.adControlAccessor = AdControllerFactory.getCachedAdControlAccessor();
        if (this.adControlAccessor == null) {
            this.logger.e("Failed to show expanded ad due to an error in the Activity.");
            this.activity.finish();
            return;
        }
        this.adControlAccessor.setAdActivity(this.activity);
        this.adControlAccessor.addSDKEventListener(new ModalAdSDKEventListener());
        expandAd();
        orientationPropertyChange();
        this.adControlAccessor.fireAdEvent(new AdEvent(AdEvent.AdEventType.EXPANDED));
        this.adControlAccessor.injectJavascript("mraidBridge.stateChange('expanded');");
        reportSizeChangeEvent();
    }

    private void reportSizeChangeEvent() {
        this.expansionView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.ModalAdActivityAdapter.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Size size;
                ModalAdActivityAdapter.this.viewUtils.removeOnGlobalLayoutListener(ModalAdActivityAdapter.this.expansionView.getViewTreeObserver(), this);
                Position currentPosition = ModalAdActivityAdapter.this.adControlAccessor.getCurrentPosition();
                if (currentPosition != null && (size = currentPosition.getSize()) != null && !size.equals(ModalAdActivityAdapter.this.lastReportedSize)) {
                    ModalAdActivityAdapter.this.lastReportedSize = size;
                    ModalAdActivityAdapter.this.adControlAccessor.injectJavascript("mraidBridge.sizeChange(" + size.getWidth() + "," + size.getHeight() + ");");
                }
            }
        });
    }

    private void orientationPropertyChange() {
        if (this.adControlAccessor.isVisible() && this.adControlAccessor.isModal()) {
            if (this.activity == null) {
                this.logger.e("unable to handle orientation property change because the context did not contain an activity");
                return;
            }
            int requestedOrientation = this.activity.getRequestedOrientation();
            this.logger.d("Current Orientation: " + requestedOrientation);
            switch (this.orientationProperties.getForceOrientation()) {
                case PORTRAIT:
                    this.activity.setRequestedOrientation(7);
                    break;
                case LANDSCAPE:
                    this.activity.setRequestedOrientation(6);
                    break;
            }
            if (ForceOrientation.NONE.equals(this.orientationProperties.getForceOrientation())) {
                if (this.orientationProperties.isAllowOrientationChange().booleanValue()) {
                    this.activity.setRequestedOrientation(-1);
                } else {
                    this.activity.setRequestedOrientation(DisplayUtils.determineCanonicalScreenOrientation(this.activity, this.buildInfo));
                }
            }
            int requestedOrientation2 = this.activity.getRequestedOrientation();
            this.logger.d("New Orientation: " + requestedOrientation2);
            if (requestedOrientation2 != requestedOrientation) {
                reportSizeChangeEvent();
            }
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onPause() {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onResume() {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onStop() {
        if (this.activity.isFinishing() && this.adControlAccessor != null) {
            this.adControlAccessor.closeAd();
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onDestroy() {
        if (this.adControlAccessor != null) {
            this.adControlAccessor.closeAd();
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        reportSizeChangeEvent();
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public boolean onBackPressed() {
        if (this.adControlAccessor != null) {
            return this.adControlAccessor.onBackButtonPress();
        }
        return false;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onWindowFocusChanged() {
    }

    private void expandAd() {
        boolean z = true;
        if (this.url != null) {
            this.adControlAccessor.stashView();
        }
        Size computeExpandedSizeInPixels = computeExpandedSizeInPixels(this.expandProperties);
        createExpandedView();
        this.adControlAccessor.moveViewToViewGroup(this.adContainerView, new RelativeLayout.LayoutParams(-1, -1), true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(computeExpandedSizeInPixels.getWidth(), computeExpandedSizeInPixels.getHeight());
        layoutParams.addRule(13);
        this.expansionView.addView(this.adContainerView, layoutParams);
        this.activity.setContentView(this.expansionView, new RelativeLayout.LayoutParams(-1, -1));
        AdControlAccessor adControlAccessor = this.adControlAccessor;
        if (this.expandProperties.getUseCustomClose().booleanValue()) {
            z = false;
        }
        adControlAccessor.enableCloseButton(z);
    }

    private void createExpandedView() {
        this.expansionView = this.layoutFactory.createLayout(this.activity, LayoutFactory.LayoutType.RELATIVE_LAYOUT, CONTENT_DESCRIPTION_EXPANSION_VIEW);
        this.adContainerView = this.layoutFactory.createLayout(this.activity, LayoutFactory.LayoutType.FRAME_LAYOUT, CONTENT_DESCRIPTION_AD_CONTAINER_VIEW);
    }

    private Size computeExpandedSizeInPixels(ExpandProperties expandProperties) {
        this.logger.d("Expanding Ad to " + expandProperties.getWidth() + JSInterface.JSON_X + expandProperties.getHeight());
        return new Size(this.adUtils.deviceIndependentPixelToPixel(expandProperties.getWidth()), this.adUtils.deviceIndependentPixelToPixel(expandProperties.getHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishActivity() {
        if (!this.activity.isFinishing()) {
            this.adControlAccessor = null;
            this.activity.finish();
        }
    }

    /* loaded from: classes.dex */
    private class ModalAdSDKEventListener implements SDKEventListener {
        private ModalAdSDKEventListener() {
        }

        @Override // com.amazon.device.ads.SDKEventListener
        public void onSDKEvent(SDKEvent sDKEvent, AdControlAccessor adControlAccessor) {
            if (sDKEvent.getEventType().equals(SDKEvent.SDKEventType.CLOSED)) {
                ModalAdActivityAdapter.this.finishActivity();
            }
        }
    }
}
