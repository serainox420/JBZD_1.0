package com.applovin.impl.sdk;

import org.json.JSONObject;
/* loaded from: classes.dex */
abstract class bu extends bw {
    /* JADX INFO: Access modifiers changed from: protected */
    public bu(String str, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, appLovinSdkImpl);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, JSONObject jSONObject, p pVar) {
        bv bvVar = new bv(this, "Repeat" + this.e, bx.g, this.f, str, jSONObject, pVar);
        bvVar.a(bx.j);
        bvVar.run();
    }
}
