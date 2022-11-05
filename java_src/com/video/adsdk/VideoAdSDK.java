package com.video.adsdk;

import android.content.Context;
import android.view.View;
import com.video.adsdk.internal.ADVideoFile;
import com.video.adsdk.internal.VideoAdSDKControllerUsingActivity;
/* loaded from: classes3.dex */
public abstract class VideoAdSDK {
    public static final String VIDEOADSDKVERSION = "1.4.7";

    public static boolean registerWithPublisherID(Context context, String str, VideoAdSDKListener videoAdSDKListener) {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            return VideoAdSDKControllerUsingActivity.Instance.registerWithPublisherID(context, str, videoAdSDKListener, false);
        }
        return false;
    }

    public static boolean registerWithPublisherID(Context context, String str, String str2, VideoAdSDKListener videoAdSDKListener) {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            return VideoAdSDKControllerUsingActivity.Instance.registerWithPublisherID(context, str, str2, videoAdSDKListener, false);
        }
        return false;
    }

    public static boolean registerWithPublisherID(Context context, String str, VideoAdSDKListener videoAdSDKListener, boolean z) {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            return VideoAdSDKControllerUsingActivity.Instance.registerWithPublisherID(context, str, videoAdSDKListener, z);
        }
        return false;
    }

    public static boolean registerWithPublisherID(Context context, String str, String str2, VideoAdSDKListener videoAdSDKListener, boolean z) {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            return VideoAdSDKControllerUsingActivity.Instance.registerWithPublisherID(context, str, str2, videoAdSDKListener, z);
        }
        return false;
    }

    public static void playAdvertising() {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            VideoAdSDKControllerUsingActivity.Instance.startLoadingAdvertisingURL();
        }
    }

    public static void startPrefetching() {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            VideoAdSDKControllerUsingActivity.Instance.startLoadingPrefetchingURL();
        }
    }

    public static void startAdvertising() {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            VideoAdSDKControllerUsingActivity.Instance.displayAdvertising();
        }
    }

    public static void setUserAttribute(String str, String str2) {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            VideoAdSDKControllerUsingActivity.Instance.setUserAttribute(str, str2);
        }
    }

    public static void clearCache() {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            VideoAdSDKControllerUsingActivity.Instance.clearCache();
        }
    }

    public static ADVideoFile getCurrentAdVideoFile() {
        if (VideoAdSDKControllerUsingActivity.Instance.isCorrectVersion()) {
            return VideoAdSDKControllerUsingActivity.Instance.getCurrentFile();
        }
        return null;
    }

    public static void enableEmbedView(View view) {
        VideoAdSDKControllerUsingActivity.Instance.enableEmbedView(view);
    }

    public static void disableEmbedView() {
        VideoAdSDKControllerUsingActivity.Instance.disableEmbedView();
    }

    public static boolean isViewEmbed() {
        return VideoAdSDKControllerUsingActivity.Instance.isViewEmbed();
    }

    public static void setWiFiOnly(boolean z) {
        VideoAdSDKControllerUsingActivity.Instance.setWiFiOnly(z);
    }

    public static boolean isWiFiOnly() {
        return VideoAdSDKControllerUsingActivity.Instance.isWiFiOnly();
    }
}
