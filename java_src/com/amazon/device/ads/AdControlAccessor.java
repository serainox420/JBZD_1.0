package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdControlAccessor {
    private final AdController adController;

    public AdControlAccessor(AdController adController) {
        this.adController = adController;
    }

    public void stashView() {
        this.adController.stashView();
    }

    public boolean popView() {
        return this.adController.popView();
    }

    public void fireAdEvent(AdEvent adEvent) {
        this.adController.fireAdEvent(adEvent);
    }

    public void injectJavascript(String str) {
        this.adController.injectJavascript(str, false);
    }

    public void injectJavascriptPreload(String str) {
        this.adController.injectJavascript(str, true);
    }

    public void preloadHtml(String str, String str2, PreloadCallback preloadCallback) {
        this.adController.preloadHtml(str, str2, preloadCallback);
    }

    public void loadHtml(String str, String str2) {
        this.adController.loadHtml(str, str2);
    }

    public void loadHtml(String str, String str2, boolean z, PreloadCallback preloadCallback) {
        this.adController.loadHtml(str, str2, z, preloadCallback);
    }

    public void preloadUrl(String str, PreloadCallback preloadCallback) {
        this.adController.preloadUrl(str, preloadCallback);
    }

    public void loadUrl(String str) {
        this.adController.loadUrl(str);
    }

    public void openUrl(String str) {
        this.adController.openUrl(str);
    }

    public boolean closeAd() {
        return this.adController.closeAd();
    }

    public void enableCloseButton(boolean z) {
        enableCloseButton(z, null);
    }

    public void enableCloseButton(boolean z, RelativePosition relativePosition) {
        this.adController.enableNativeCloseButton(z, relativePosition);
    }

    public void removeCloseButton() {
        this.adController.removeNativeCloseButton();
    }

    public void showNativeCloseButtonImage(boolean z) {
        this.adController.showNativeCloseButtonImage(z);
    }

    public Context getContext() {
        return this.adController.getContext();
    }

    public int getViewWidth() {
        return this.adController.getViewWidth();
    }

    public int getViewHeight() {
        return this.adController.getViewHeight();
    }

    public void moveViewToViewGroup(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, boolean z) {
        this.adController.moveViewToViewGroup(viewGroup, layoutParams, z);
    }

    public void moveViewBackToParent(ViewGroup.LayoutParams layoutParams) {
        this.adController.moveViewBackToParent(layoutParams);
    }

    public ViewGroup getViewParentIfExpanded() {
        return this.adController.getViewParentIfExpanded();
    }

    public void setExpanded(boolean z) {
        this.adController.setExpanded(z);
    }

    public AdState getAdState() {
        return this.adController.getAdState();
    }

    public Position getCurrentPosition() {
        return this.adController.getAdPosition();
    }

    public Size getMaxSize() {
        return this.adController.getMaxExpandableSize();
    }

    public Size getScreenSize() {
        return this.adController.getScreenSize();
    }

    public boolean isInterstitial() {
        return this.adController.isInterstitial();
    }

    public void addSDKEventListener(SDKEventListener sDKEventListener) {
        this.adController.addSDKEventListener(sDKEventListener);
    }

    public void addJavascriptInterface(Object obj, boolean z, String str) {
        this.adController.addJavascriptInterface(obj, z, str);
    }

    public void reload() {
        this.adController.reload();
    }

    public void overrideBackButton(boolean z) {
        this.adController.overrideBackButton(z);
    }

    public boolean isVisible() {
        return this.adController.isVisible();
    }

    public boolean isModal() {
        return this.adController.isModal();
    }

    public int getWindowWidth() {
        return this.adController.getWindowWidth();
    }

    public int getWindowHeight() {
        return this.adController.getWindowHeight();
    }

    public int getAdWidth() {
        return this.adController.getAdData().getWidth();
    }

    public int getAdHeight() {
        return this.adController.getAdData().getHeight();
    }

    public double getScalingMultiplier() {
        return this.adController.getScalingMultiplier();
    }

    public void orientationChangeAttemptedWhenNotAllowed() {
        this.adController.orientationChangeAttemptedWhenNotAllowed();
    }

    public void registerViewabilityInterest() {
        this.adController.registerViewabilityInterest();
    }

    public void deregisterViewabilityInterest() {
        this.adController.deregisterViewabilityInterest();
    }

    public String getInstrumentationPixelUrl() {
        return this.adController.getInstrumentationPixelUrl();
    }

    public boolean isViewable() {
        return this.adController.isViewable();
    }

    public void setAdActivity(Activity activity) {
        this.adController.setAdActivity(activity);
    }

    public boolean onBackButtonPress() {
        return this.adController.onBackButtonPress();
    }

    public void addOnGlobalLayoutListener(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.adController.addOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public void removeOnGlobalLayoutListener(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.adController.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public View getRootView() {
        return this.adController.getRootView();
    }

    public Activity getAdActivity() {
        return this.adController.getAdActivity();
    }

    public String getSlotID() {
        return this.adController.getSlotID();
    }
}
