package com.mopub.mobileads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastIconConfig.java */
/* loaded from: classes3.dex */
public class g implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final int f4523a;
    private final int b;
    private final int c;
    private final Integer d;
    private final l e;
    private final List<VastTracker> f;
    private final String g;
    private final List<VastTracker> h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(int i, int i2, Integer num, Integer num2, l lVar, List<VastTracker> list, String str, List<VastTracker> list2) {
        Preconditions.checkNotNull(lVar);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.f4523a = i;
        this.b = i2;
        this.c = num == null ? 0 : num.intValue();
        this.d = num2;
        this.e = lVar;
        this.f = list;
        this.g = str;
        this.h = list2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f4523a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer d() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l e() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> f() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, int i, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        TrackingRequest.makeVastTrackingHttpRequest(this.h, null, Integer.valueOf(i), str, context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Context context, String str, final String str2) {
        Preconditions.checkNotNull(context);
        String correctClickThroughUrl = this.e.getCorrectClickThroughUrl(this.g, str);
        if (TextUtils.isEmpty(correctClickThroughUrl)) {
            return;
        }
        new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.g.1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(String str3, UrlAction urlAction) {
                if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                    Bundle bundle = new Bundle();
                    bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str3);
                    if (!TextUtils.isEmpty(str2)) {
                        bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str2);
                    }
                    try {
                        Intents.startActivity(context, Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle));
                    } catch (IntentNotResolvableException e) {
                        MoPubLog.d(e.getMessage());
                    }
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(String str3, UrlAction urlAction) {
            }
        }).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
    }
}
