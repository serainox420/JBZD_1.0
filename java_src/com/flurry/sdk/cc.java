package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import com.google.android.gms.ads.AdActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class cc extends bs {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final String a() {
        return "AdMob";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<bo> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bo("GooglePlayServicesSdk", "6.5.+", "com.google.android.gms.ads.InterstitialAd"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    @TargetApi(13)
    public final List<ActivityInfo> d() {
        ArrayList arrayList = new ArrayList();
        ActivityInfo activityInfo = new ActivityInfo();
        activityInfo.name = AdActivity.CLASS_NAME;
        activityInfo.configChanges = 4016;
        arrayList.add(activityInfo);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<bo> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bo("GooglePlayServicesSdk", "6.5.+", "com.google.android.gms.ads.AdView"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.flurry.gms.ads.MY_AD_UNIT_ID");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final List<String> h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final hl a(Context context, r rVar, Bundle bundle) {
        if (context == null || rVar == null || bundle == null) {
            return null;
        }
        return new cd(context, rVar, bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.bs
    public final gz a(Context context, r rVar, AdCreative adCreative, Bundle bundle) {
        if (context == null || rVar == null || adCreative == null || bundle == null) {
            return null;
        }
        return new cb(context, rVar, adCreative, bundle);
    }
}
