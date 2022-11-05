package com.mdotm.android.vast;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public class MdotMVastNative extends BaseVastAd {
    protected ArrayList<String> nativeBodyText;
    protected ArrayList<String> nativeCTAText;
    protected ArrayList<String> nativeClickThroughURL;
    protected ArrayList<String> nativeCoverImageLink;
    protected ArrayList<String> nativeIconImageLink;
    protected ArrayList<String> nativeTitleText;
    protected ArrayList<String> nativeClickTrackingURL = new ArrayList<>();
    protected ArrayList<String> nativeImpressionTrackingURL = new ArrayList<>();

    public ArrayList<String> getNativeCoverImageLink() {
        return this.nativeCoverImageLink;
    }

    public ArrayList<String> getNativeIconImageLink() {
        return this.nativeIconImageLink;
    }

    public ArrayList<String> getNativeTitleText() {
        return this.nativeTitleText;
    }

    public ArrayList<String> getNativeBodyText() {
        return this.nativeBodyText;
    }

    public ArrayList<String> getNativeCTAText() {
        return this.nativeCTAText;
    }

    public ArrayList<String> getNativeClickThroughURL() {
        return this.nativeClickThroughURL;
    }

    public ArrayList<String> getNativeClickTrackingURL() {
        return this.nativeClickTrackingURL;
    }

    public void setNativeClickTrackingURL(ArrayList<String> arrayList) {
        this.nativeClickTrackingURL = arrayList;
    }

    public ArrayList<String> getNativeImpressionTrackingURL() {
        return this.nativeImpressionTrackingURL;
    }

    public void setNativeImpressionTrackingURL(ArrayList<String> arrayList) {
        this.nativeImpressionTrackingURL = arrayList;
    }
}
