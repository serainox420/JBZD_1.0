package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class ce extends bs {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final String a() {
        return "InMobi";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<bo> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bo("InMobiAndroidSDK", "4.5.3", "com.inmobi.monetization.IMInterstitial"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    @TargetApi(13)
    public final List<ActivityInfo> d() {
        ArrayList arrayList = new ArrayList();
        ActivityInfo activityInfo = new ActivityInfo();
        activityInfo.name = "com.inmobi.androidsdk.IMBrowserActivity";
        activityInfo.configChanges = 3248;
        arrayList.add(activityInfo);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<bo> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bo("InMobiAndroidSDK", "4.5.3", "com.inmobi.monetization.IMBanner"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.flurry.inmobi.MY_APP_ID");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final hl a(Context context, r rVar, Bundle bundle) {
        if (context == null || rVar == null || bundle == null) {
            return null;
        }
        return new ch(context, rVar, bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final gz a(Context context, r rVar, AdCreative adCreative, Bundle bundle) {
        if (context == null || rVar == null || adCreative == null || bundle == null) {
            return null;
        }
        return new cf(context, rVar, adCreative, bundle);
    }
}
