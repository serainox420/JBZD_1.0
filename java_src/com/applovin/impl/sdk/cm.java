package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinPostbackListener;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
class cm extends cy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cl f1635a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cm(cl clVar, String str, int i, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, i, appLovinSdkImpl);
        this.f1635a = clVar;
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(int i) {
        AppLovinPostbackListener appLovinPostbackListener;
        String str;
        appLovinPostbackListener = this.f1635a.c;
        str = this.f1635a.f1634a;
        appLovinPostbackListener.onPostbackFailure(str, i);
    }

    @Override // com.applovin.impl.sdk.cy
    protected void a(o oVar, p pVar) {
        int i;
        Map map;
        String str;
        Map map2;
        String str2;
        i = this.f1635a.j;
        int intValue = i < 0 ? ((Integer) this.f.a(bx.as)).intValue() : this.f1635a.j;
        map = this.f1635a.b;
        if (map == null) {
            str2 = this.f1635a.f1634a;
            oVar.a(str2, intValue, false, pVar);
            return;
        }
        str = this.f1635a.f1634a;
        map2 = this.f1635a.b;
        oVar.a(str, intValue, new JSONObject(map2), false, pVar);
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        AppLovinPostbackListener appLovinPostbackListener;
        String str;
        appLovinPostbackListener = this.f1635a.c;
        str = this.f1635a.f1634a;
        appLovinPostbackListener.onPostbackSuccess(str);
    }
}
