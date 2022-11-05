package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Intents;
import com.mopub.common.util.Strings;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class VastVideoConfig implements Serializable {
    private String k;
    private String l;
    private String m;
    private String n;
    private VastCompanionAdConfig o;
    private VastCompanionAdConfig p;
    private g r;
    private String t;
    private String u;
    private String v;
    private VideoViewabilityTracker x;
    private String y;
    private boolean z;
    private DeviceUtils.ForceOrientation w = DeviceUtils.ForceOrientation.FORCE_LANDSCAPE;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<VastTracker> f4477a = new ArrayList<>();
    private final ArrayList<VastFractionalProgressTracker> b = new ArrayList<>();
    private final ArrayList<VastAbsoluteProgressTracker> c = new ArrayList<>();
    private final ArrayList<VastTracker> d = new ArrayList<>();
    private final ArrayList<VastTracker> e = new ArrayList<>();
    private final ArrayList<VastTracker> f = new ArrayList<>();
    private final ArrayList<VastTracker> g = new ArrayList<>();
    private final ArrayList<VastTracker> h = new ArrayList<>();
    private final ArrayList<VastTracker> i = new ArrayList<>();
    private final ArrayList<VastTracker> j = new ArrayList<>();
    private Map<String, VastCompanionAdConfig> q = new HashMap();
    private boolean s = false;

    public void setDspCreativeId(String str) {
        this.y = str;
    }

    public String getDspCreativeId() {
        return this.y;
    }

    public void addImpressionTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "impressionTrackers cannot be null");
        this.f4477a.addAll(list);
    }

    public void addFractionalTrackers(List<VastFractionalProgressTracker> list) {
        Preconditions.checkNotNull(list, "fractionalTrackers cannot be null");
        this.b.addAll(list);
        Collections.sort(this.b);
    }

    public void addAbsoluteTrackers(List<VastAbsoluteProgressTracker> list) {
        Preconditions.checkNotNull(list, "absoluteTrackers cannot be null");
        this.c.addAll(list);
        Collections.sort(this.c);
    }

    public void addCompleteTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "completeTrackers cannot be null");
        this.f.addAll(list);
    }

    public void addPauseTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "pauseTrackers cannot be null");
        this.d.addAll(list);
    }

    public void addResumeTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "resumeTrackers cannot be null");
        this.e.addAll(list);
    }

    public void addCloseTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "closeTrackers cannot be null");
        this.g.addAll(list);
    }

    public void addSkipTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "skipTrackers cannot be null");
        this.h.addAll(list);
    }

    public void addClickTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        this.i.addAll(list);
    }

    public void addErrorTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        this.j.addAll(list);
    }

    public void setClickThroughUrl(String str) {
        this.k = str;
    }

    public void setNetworkMediaFileUrl(String str) {
        this.l = str;
    }

    public void setDiskMediaFileUrl(String str) {
        this.m = str;
    }

    public void setVastCompanionAd(VastCompanionAdConfig vastCompanionAdConfig, VastCompanionAdConfig vastCompanionAdConfig2) {
        this.o = vastCompanionAdConfig;
        this.p = vastCompanionAdConfig2;
    }

    public void setSocialActionsCompanionAds(Map<String, VastCompanionAdConfig> map) {
        this.q = map;
    }

    public void setVastIconConfig(g gVar) {
        this.r = gVar;
    }

    public void setCustomCtaText(String str) {
        if (str != null) {
            this.t = str;
        }
    }

    public void setCustomSkipText(String str) {
        if (str != null) {
            this.u = str;
        }
    }

    public void setCustomCloseIconUrl(String str) {
        if (str != null) {
            this.v = str;
        }
    }

    public void setCustomForceOrientation(DeviceUtils.ForceOrientation forceOrientation) {
        if (forceOrientation != null && forceOrientation != DeviceUtils.ForceOrientation.UNDEFINED) {
            this.w = forceOrientation;
            this.z = true;
        }
    }

    public void setSkipOffset(String str) {
        if (str != null) {
            this.n = str;
        }
    }

    public void setVideoViewabilityTracker(VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker != null) {
            this.x = videoViewabilityTracker;
        }
    }

    public void setIsRewardedVideo(boolean z) {
        this.s = z;
    }

    public List<VastTracker> getImpressionTrackers() {
        return this.f4477a;
    }

    public ArrayList<VastAbsoluteProgressTracker> getAbsoluteTrackers() {
        return this.c;
    }

    public ArrayList<VastFractionalProgressTracker> getFractionalTrackers() {
        return this.b;
    }

    public List<VastTracker> getPauseTrackers() {
        return this.d;
    }

    public List<VastTracker> getResumeTrackers() {
        return this.e;
    }

    public List<VastTracker> getCompleteTrackers() {
        return this.f;
    }

    public List<VastTracker> getCloseTrackers() {
        return this.g;
    }

    public List<VastTracker> getSkipTrackers() {
        return this.h;
    }

    public List<VastTracker> getClickTrackers() {
        return this.i;
    }

    public List<VastTracker> getErrorTrackers() {
        return this.j;
    }

    public String getClickThroughUrl() {
        return this.k;
    }

    public String getNetworkMediaFileUrl() {
        return this.l;
    }

    public String getDiskMediaFileUrl() {
        return this.m;
    }

    public VastCompanionAdConfig getVastCompanionAd(int i) {
        switch (i) {
            case 1:
                return this.p;
            case 2:
                return this.o;
            default:
                return this.o;
        }
    }

    public Map<String, VastCompanionAdConfig> getSocialActionsCompanionAds() {
        return this.q;
    }

    public g getVastIconConfig() {
        return this.r;
    }

    public String getCustomCtaText() {
        return this.t;
    }

    public String getCustomSkipText() {
        return this.u;
    }

    public String getCustomCloseIconUrl() {
        return this.v;
    }

    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.x;
    }

    public boolean isCustomForceOrientationSet() {
        return this.z;
    }

    public boolean hasCompanionAd() {
        return (this.o == null || this.p == null) ? false : true;
    }

    public DeviceUtils.ForceOrientation getCustomForceOrientation() {
        return this.w;
    }

    public String getSkipOffsetString() {
        return this.n;
    }

    public boolean isRewardedVideo() {
        return this.s;
    }

    public void handleImpression(Context context, int i) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        TrackingRequest.makeVastTrackingHttpRequest(this.f4477a, null, Integer.valueOf(i), this.l, context);
    }

    public void handleClickForResult(Activity activity, int i, int i2) {
        a(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(Context context, int i) {
        a(context.getApplicationContext(), i, null);
    }

    private void a(final Context context, int i, final Integer num) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        TrackingRequest.makeVastTrackingHttpRequest(this.i, null, Integer.valueOf(i), this.l, context);
        if (TextUtils.isEmpty(this.k)) {
            return;
        }
        new UrlHandler.Builder().withDspCreativeId(this.y).withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastVideoConfig.1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(String str, UrlAction urlAction) {
                if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                    Bundle bundle = new Bundle();
                    bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfig.this.y);
                    Intent startActivityIntent = Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle);
                    try {
                        if (context instanceof Activity) {
                            Preconditions.checkNotNull(num);
                            ((Activity) context).startActivityForResult(startActivityIntent, num.intValue());
                        } else {
                            Intents.startActivity(context, startActivityIntent);
                        }
                    } catch (ActivityNotFoundException e) {
                        MoPubLog.d("Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                    } catch (IntentNotResolvableException e2) {
                        MoPubLog.d("Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                    }
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(String str, UrlAction urlAction) {
            }
        }).withoutMoPubBrowser().build().handleUrl(context, this.k);
    }

    public void handleResume(Context context, int i) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        TrackingRequest.makeVastTrackingHttpRequest(this.e, null, Integer.valueOf(i), this.l, context);
    }

    public void handlePause(Context context, int i) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        TrackingRequest.makeVastTrackingHttpRequest(this.d, null, Integer.valueOf(i), this.l, context);
    }

    public void handleClose(Context context, int i) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        TrackingRequest.makeVastTrackingHttpRequest(this.g, null, Integer.valueOf(i), this.l, context);
        TrackingRequest.makeVastTrackingHttpRequest(this.h, null, Integer.valueOf(i), this.l, context);
    }

    public void handleComplete(Context context, int i) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        TrackingRequest.makeVastTrackingHttpRequest(this.f, null, Integer.valueOf(i), this.l, context);
    }

    public void handleError(Context context, VastErrorCode vastErrorCode, int i) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        TrackingRequest.makeVastTrackingHttpRequest(this.j, vastErrorCode, Integer.valueOf(i), this.l, context);
    }

    public List<VastTracker> getUntriggeredTrackersBefore(int i, int i2) {
        if (Preconditions.NoThrow.checkArgument(i2 > 0)) {
            float f = i / i2;
            ArrayList arrayList = new ArrayList();
            VastAbsoluteProgressTracker vastAbsoluteProgressTracker = new VastAbsoluteProgressTracker("", i);
            int size = this.c.size();
            for (int i3 = 0; i3 < size; i3++) {
                VastAbsoluteProgressTracker vastAbsoluteProgressTracker2 = this.c.get(i3);
                if (vastAbsoluteProgressTracker2.compareTo(vastAbsoluteProgressTracker) > 0) {
                    break;
                }
                if (!vastAbsoluteProgressTracker2.isTracked()) {
                    arrayList.add(vastAbsoluteProgressTracker2);
                }
            }
            VastFractionalProgressTracker vastFractionalProgressTracker = new VastFractionalProgressTracker("", f);
            int size2 = this.b.size();
            for (int i4 = 0; i4 < size2; i4++) {
                VastFractionalProgressTracker vastFractionalProgressTracker2 = this.b.get(i4);
                if (vastFractionalProgressTracker2.compareTo(vastFractionalProgressTracker) > 0) {
                    break;
                }
                if (!vastFractionalProgressTracker2.isTracked()) {
                    arrayList.add(vastFractionalProgressTracker2);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(Integer.MAX_VALUE, Integer.MAX_VALUE).size();
    }

    public Integer getSkipOffsetMillis(int i) {
        Integer valueOf;
        if (this.n != null) {
            try {
                if (Strings.isAbsoluteTracker(this.n)) {
                    valueOf = Strings.parseAbsoluteOffset(this.n);
                } else if (Strings.isPercentageTracker(this.n)) {
                    valueOf = Integer.valueOf(Math.round((Float.parseFloat(this.n.replace("%", "")) / 100.0f) * i));
                } else {
                    MoPubLog.d(String.format("Invalid VAST skipoffset format: %s", this.n));
                    return null;
                }
                if (valueOf == null) {
                    return null;
                }
                return valueOf.intValue() < i ? valueOf : Integer.valueOf(i);
            } catch (NumberFormatException e) {
                MoPubLog.d(String.format("Failed to parse skipoffset %s", this.n));
                return null;
            }
        }
        return null;
    }
}
