package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class ci extends bs {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final String a() {
        return "Millennial Media";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<bo> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bo("MMAdView", "5.3.0", "com.millennialmedia.android.MMInterstitial"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    @TargetApi(13)
    public final List<ActivityInfo> d() {
        ArrayList arrayList = new ArrayList();
        ActivityInfo activityInfo = new ActivityInfo();
        activityInfo.name = "com.millennialmedia.android.MMActivity";
        activityInfo.configChanges = 3248;
        arrayList.add(activityInfo);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.flurry.millennial.MYAPIDINTERSTITIAL");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<bo> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bo("MMAdView", "5.3.0", "com.millennialmedia.android.MMAdView"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.flurry.millennial.MYAPID");
        arrayList.add("com.flurry.millennial.MYAPIDRECTANGLE");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> g() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final hl a(Context context, r rVar, Bundle bundle) {
        if (context == null || rVar == null || bundle == null) {
            return null;
        }
        return new cl(context, rVar, bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final gz a(Context context, r rVar, AdCreative adCreative, Bundle bundle) {
        if (context == null || rVar == null || adCreative == null || bundle == null) {
            return null;
        }
        return new cj(context, rVar, adCreative, bundle);
    }
}
