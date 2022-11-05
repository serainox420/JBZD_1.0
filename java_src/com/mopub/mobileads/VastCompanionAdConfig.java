package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes3.dex */
public class VastCompanionAdConfig implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final int f4463a;
    private final int b;
    private final l c;
    private final String d;
    private final List<VastTracker> e;
    private final List<VastTracker> f;

    public VastCompanionAdConfig(int i, int i2, l lVar, String str, List<VastTracker> list, List<VastTracker> list2) {
        Preconditions.checkNotNull(lVar);
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        Preconditions.checkNotNull(list2, "creativeViewTrackers cannot be null");
        this.f4463a = i;
        this.b = i2;
        this.c = lVar;
        this.d = str;
        this.e = list;
        this.f = list2;
    }

    public void addClickTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        this.e.addAll(list);
    }

    public void addCreativeViewTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "creativeViewTrackers cannot be null");
        this.f.addAll(list);
    }

    public int getWidth() {
        return this.f4463a;
    }

    public int getHeight() {
        return this.b;
    }

    public l getVastResource() {
        return this.c;
    }

    public String getClickThroughUrl() {
        return this.d;
    }

    public List<VastTracker> getClickTrackers() {
        return this.e;
    }

    public List<VastTracker> getCreativeViewTrackers() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, int i) {
        Preconditions.checkNotNull(context);
        TrackingRequest.makeVastTrackingHttpRequest(this.f, null, Integer.valueOf(i), null, context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Context context, final int i, String str, final String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkArgument(context instanceof Activity, "context must be an activity");
        String correctClickThroughUrl = this.c.getCorrectClickThroughUrl(this.d, str);
        if (TextUtils.isEmpty(correctClickThroughUrl)) {
            return;
        }
        new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastCompanionAdConfig.1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(String str3, UrlAction urlAction) {
                if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                    Bundle bundle = new Bundle();
                    bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str3);
                    if (!TextUtils.isEmpty(str2)) {
                        bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str2);
                    }
                    try {
                        ((Activity) context).startActivityForResult(Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle), i);
                    } catch (ActivityNotFoundException e) {
                        MoPubLog.d("Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                    }
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(String str3, UrlAction urlAction) {
            }
        }).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
    }
}
