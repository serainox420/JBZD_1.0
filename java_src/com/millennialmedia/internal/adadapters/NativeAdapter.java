package com.millennialmedia.internal.adadapters;

import android.graphics.Bitmap;
import com.millennialmedia.XIncentivizedEventListener;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class NativeAdapter extends AdAdapter {

    /* loaded from: classes3.dex */
    public static class ComponentInfo {
        public List<String> clickTrackerUrls;
        public String clickUrl;
    }

    /* loaded from: classes3.dex */
    public static class ImageComponentInfo extends ComponentInfo {
        public Bitmap bitmap;
        public String bitmapUrl;
        public int height;
        public int width;
    }

    /* loaded from: classes3.dex */
    public interface NativeAdapterListener {
        void initFailed(Throwable th);

        void initSucceeded();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);
    }

    /* loaded from: classes3.dex */
    public static class TextComponentInfo extends ComponentInfo {
        public String value;
    }

    public abstract List<TextComponentInfo> getBodyList();

    public abstract List<TextComponentInfo> getCallToActionList();

    public abstract List<String> getClickTrackers();

    public abstract String getDefaultAction();

    public abstract List<TextComponentInfo> getDisclaimerList();

    public abstract List<ImageComponentInfo> getIconImageList();

    public abstract List<String> getImpressionTrackers();

    public abstract List<ImageComponentInfo> getMainImageList();

    public abstract List<TextComponentInfo> getRatingList();

    public abstract List<TextComponentInfo> getTitleList();

    public abstract String getType();

    public abstract void init(NativeAdapterListener nativeAdapterListener);
}
