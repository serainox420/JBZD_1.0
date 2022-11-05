package com.flurry.sdk;

import android.os.Bundle;
import com.flurry.sdk.ey;
import com.millennialmedia.NativeAd;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class fa extends ey {

    /* renamed from: a  reason: collision with root package name */
    public String f2649a;
    public String b;

    public fa(Bundle bundle) {
        super(ey.a.TEXT_POST);
        this.f2649a = bundle.getString("com.flurry.android.post_title");
        this.b = bundle.getString("com.flurry.android.post_body");
        a(bundle.getString("com.flurry.android.post_ios_deeplinks"));
        b(bundle.getString("com.flurry.android.post_android_deeplinks"));
        c(bundle.getString("com.flurry.android.post_weblink"));
        this.e = bundle.getInt("com.flurry.android.post_id");
    }

    @Override // com.flurry.sdk.ey
    protected final Map<String, String> a() {
        HashMap hashMap = new HashMap();
        a(hashMap, "title", this.f2649a);
        a(hashMap, NativeAd.COMPONENT_ID_BODY, this.b);
        a(hashMap, "deep_link_ios", this.g);
        a(hashMap, "deep_link_android", this.h);
        a(hashMap, "deep_link_web", this.i);
        a(hashMap, "type", CommonConstants.RESPONSE_TEXT);
        a(hashMap, "syndication_id", jj.a(this.h));
        return hashMap;
    }
}
