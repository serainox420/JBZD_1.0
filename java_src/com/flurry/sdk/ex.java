package com.flurry.sdk;

import android.os.Bundle;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.flurry.sdk.ey;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ex extends ey {

    /* renamed from: a  reason: collision with root package name */
    public String f2637a;
    public String b;

    public ex(Bundle bundle) {
        super(ey.a.IMAGE_POST);
        this.f2637a = bundle.getString("com.flurry.android.post_caption");
        this.b = bundle.getString("com.flurry.android.post_url");
        a(bundle.getString("com.flurry.android.post_ios_deeplinks"));
        b(bundle.getString("com.flurry.android.post_android_deeplinks"));
        c(bundle.getString("com.flurry.android.post_weblink"));
        this.e = bundle.getInt("com.flurry.android.post_id");
    }

    @Override // com.flurry.sdk.ey
    protected final Map<String, String> a() {
        try {
            URI uri = new URI(this.b);
            HashMap hashMap = new HashMap();
            if (uri.getScheme() != null && (uri.getScheme().equalsIgnoreCase("http") || uri.getScheme().equalsIgnoreCase("https"))) {
                a(hashMap, "source", this.b);
            } else if (new File(this.b).exists()) {
                a(hashMap, "data", this.b);
            }
            a(hashMap, "deep_link_ios", this.g);
            a(hashMap, "deep_link_android", this.h);
            a(hashMap, "deep_link_web", this.i);
            a(hashMap, "type", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO);
            a(hashMap, ShareConstants.FEED_CAPTION_PARAM, this.f2637a);
            a(hashMap, "syndication_id", jj.a(this.h));
            return hashMap;
        } catch (URISyntaxException e) {
            return Collections.emptyMap();
        }
    }
}
