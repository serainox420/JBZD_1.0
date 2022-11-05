package com.amazon.device.ads;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import com.amazon.device.ads.ThreadUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AndroidTargetUtils {
    public static final AndroidClassAdapter defaultAndroidClassAdapter = new AndroidClassAdapter(new AndroidBuildInfo());

    private AndroidTargetUtils() {
    }

    public static AndroidClassAdapter getDefaultAndroidClassAdapter() {
        return defaultAndroidClassAdapter;
    }

    /* loaded from: classes.dex */
    public static class AndroidClassAdapter {
        private final AndroidBuildInfo androidBuildInfo;

        public AndroidClassAdapter(AndroidBuildInfo androidBuildInfo) {
            this.androidBuildInfo = androidBuildInfo;
        }

        public WebSettingsAdapter withWebSettings(WebSettings webSettings) {
            return new WebSettingsAdapter(webSettings);
        }

        /* loaded from: classes.dex */
        public class WebSettingsAdapter {
            private final WebSettings webSettings;

            public WebSettingsAdapter(WebSettings webSettings) {
                this.webSettings = webSettings;
            }

            public void setMediaPlaybackRequiresUserGesture(boolean z) {
                if (AndroidClassAdapter.this.isAtLeastAndroidAPI(17)) {
                    JellyBeanMR1TargetUtils.setMediaPlaybackRequiresUserGesture(this.webSettings, z);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isAtLeastAndroidAPI(int i) {
            return AndroidTargetUtils.isAtLeastAndroidAPI(this.androidBuildInfo, i);
        }
    }

    public static boolean isAtLeastAndroidAPI(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    public static boolean isAtLeastAndroidAPI(AndroidBuildInfo androidBuildInfo, int i) {
        return androidBuildInfo.getSDKInt() >= i;
    }

    public static boolean isAtOrBelowAndroidAPI(int i) {
        return Build.VERSION.SDK_INT <= i;
    }

    public static boolean isAtOrBelowAndroidAPI(AndroidBuildInfo androidBuildInfo, int i) {
        return androidBuildInfo.getSDKInt() <= i;
    }

    public static boolean isAndroidAPI(int i) {
        return Build.VERSION.SDK_INT == i;
    }

    public static boolean isAndroidAPI(AndroidBuildInfo androidBuildInfo, int i) {
        return androidBuildInfo.getSDKInt() == i;
    }

    public static boolean isBetweenAndroidAPIs(AndroidBuildInfo androidBuildInfo, int i, int i2) {
        return isAtLeastAndroidAPI(androidBuildInfo, i) && isAtOrBelowAndroidAPI(androidBuildInfo, i2);
    }

    public static final void disableHardwareAcceleration(View view) {
        HoneycombTargetUtils.disableHardwareAcceleration(view);
    }

    public static void setImageButtonAlpha(ImageButton imageButton, int i) {
        if (isAtLeastAndroidAPI(16)) {
            JellyBeanTargetUtils.setImageButtonAlpha(imageButton, i);
        } else {
            imageButton.setAlpha(i);
        }
    }

    public static void setBackgroundDrawable(View view, Drawable drawable) {
        if (isAtLeastAndroidAPI(16)) {
            JellyBeanTargetUtils.setBackgroundForLinerLayout(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static <T> void executeAsyncTask(ThreadUtils.MobileAdsAsyncTask<T, ?, ?> mobileAdsAsyncTask, T... tArr) {
        if (isAtLeastAndroidAPI(11)) {
            HoneycombTargetUtils.executeAsyncTaskWithThreadPooling(mobileAdsAsyncTask, tArr);
        } else {
            mobileAdsAsyncTask.execute(tArr);
        }
    }

    public static void hideActionAndStatusBars(AndroidBuildInfo androidBuildInfo, Activity activity) {
        if (isAtLeastAndroidAPI(androidBuildInfo, 11)) {
            HoneycombTargetUtils.hideActionBar(activity);
        }
        if (isAtLeastAndroidAPI(androidBuildInfo, 16)) {
            JellyBeanTargetUtils.hideStatusBar(activity);
        }
    }

    public static void removeJavascriptInterface(WebView webView, String str) {
        HoneycombTargetUtils.removeJavascriptInterface(webView, str);
    }

    public static void enableWebViewDebugging(boolean z) {
        if (isAtLeastAndroidAPI(19)) {
            KitKatTargetUtils.enableWebViewDebugging(z);
        }
    }

    public static void enableHardwareAcceleration(AndroidBuildInfo androidBuildInfo, Window window) {
        if (isAtLeastAndroidAPI(androidBuildInfo, 11)) {
            HoneycombTargetUtils.enableHardwareAcceleration(window);
        }
    }

    @TargetApi(11)
    public static boolean isAdTransparent(View view) {
        return isAtLeastAndroidAPI(11) && view.getAlpha() == BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    /* loaded from: classes.dex */
    public static class HoneycombTargetUtils {
        private HoneycombTargetUtils() {
        }

        public static final void disableHardwareAcceleration(View view) {
            view.setLayerType(1, null);
        }

        protected static final <T> void executeAsyncTaskWithThreadPooling(ThreadUtils.MobileAdsAsyncTask<T, ?, ?> mobileAdsAsyncTask, T... tArr) {
            mobileAdsAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
        }

        protected static void hideActionBar(Activity activity) {
            ActionBar actionBar = activity.getActionBar();
            if (actionBar != null) {
                actionBar.hide();
            }
        }

        protected static void removeJavascriptInterface(WebView webView, String str) {
            webView.removeJavascriptInterface(str);
        }

        protected static void enableHardwareAcceleration(Window window) {
            window.setFlags(16777216, 16777216);
        }
    }

    @TargetApi(16)
    /* loaded from: classes.dex */
    private static class JellyBeanTargetUtils {
        private JellyBeanTargetUtils() {
        }

        public static void setBackgroundForLinerLayout(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        protected static void setImageButtonAlpha(ImageButton imageButton, int i) {
            imageButton.setImageAlpha(i);
        }

        public static void hideStatusBar(Activity activity) {
            activity.getWindow().getDecorView().setSystemUiVisibility(4);
        }
    }

    @TargetApi(17)
    /* loaded from: classes.dex */
    private static class JellyBeanMR1TargetUtils {
        private JellyBeanMR1TargetUtils() {
        }

        public static void setMediaPlaybackRequiresUserGesture(WebSettings webSettings, boolean z) {
            webSettings.setMediaPlaybackRequiresUserGesture(z);
        }
    }

    @TargetApi(19)
    /* loaded from: classes.dex */
    private static class KitKatTargetUtils {
        private KitKatTargetUtils() {
        }

        public static void enableWebViewDebugging(final boolean z) {
            ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AndroidTargetUtils.KitKatTargetUtils.1
                @Override // java.lang.Runnable
                public void run() {
                    WebView.setWebContentsDebuggingEnabled(z);
                }
            });
        }
    }
}
