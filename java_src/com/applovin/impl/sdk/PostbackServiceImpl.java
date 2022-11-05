package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinPostbackService;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
/* loaded from: classes.dex */
public class PostbackServiceImpl implements AppLovinPostbackService {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1579a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PostbackServiceImpl(AppLovinSdkImpl appLovinSdkImpl) {
        this.f1579a = appLovinSdkImpl;
    }

    @Override // com.applovin.sdk.AppLovinPostbackService
    public void dispatchPostbackAsync(String str, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackAsync(str, null, appLovinPostbackListener);
    }

    public void dispatchPostbackAsync(String str, Map map, int i, int i2, int i3, AppLovinPostbackListener appLovinPostbackListener) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            this.f1579a.getLogger().e("PostbackService", "Requested a postback dispatch for an empty URL; nothing to do...");
            if (appLovinPostbackListener == null) {
                return;
            }
            appLovinPostbackListener.onPostbackFailure(str, AppLovinErrorCodes.INVALID_URL);
            return;
        }
        cl clVar = new cl(this.f1579a, str, map, appLovinPostbackListener);
        clVar.b(i2);
        clVar.a(i);
        clVar.c(i3);
        this.f1579a.a().a(clVar, cs.POSTBACKS);
    }

    public void dispatchPostbackAsync(String str, Map map, AppLovinPostbackListener appLovinPostbackListener) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            this.f1579a.getLogger().d("PostbackService", "Ignoring enqueued postback request to invalid URL");
            return;
        }
        this.f1579a.a().a(new cl(this.f1579a, str, map, new bq(this, appLovinPostbackListener)), cs.POSTBACKS);
    }
}
