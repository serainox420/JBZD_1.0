package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import org.json.JSONObject;
/* loaded from: classes.dex */
class db implements p {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ da f1650a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public db(da daVar) {
        this.f1650a = daVar;
    }

    @Override // com.applovin.impl.sdk.p
    public void a(int i) {
        AppLovinAdImpl appLovinAdImpl;
        AppLovinLogger appLovinLogger = this.f1650a.g;
        StringBuilder append = new StringBuilder().append("Failed to report reward for ad: ");
        appLovinAdImpl = this.f1650a.f1649a;
        appLovinLogger.d("TaskReportReward", append.append(appLovinAdImpl.getAdIdNumber()).append(" - error code: ").append(i).toString());
    }

    @Override // com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        AppLovinAdImpl appLovinAdImpl;
        AppLovinLogger appLovinLogger = this.f1650a.g;
        StringBuilder append = new StringBuilder().append("Reported reward successfully for ad: ");
        appLovinAdImpl = this.f1650a.f1649a;
        appLovinLogger.d("TaskReportReward", append.append(appLovinAdImpl.getAdIdNumber()).toString());
    }
}
