package com.applovin.impl.sdk;

import org.json.JSONObject;
/* loaded from: classes.dex */
class cf extends cy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ JSONObject f1631a;
    final /* synthetic */ ce b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf(ce ceVar, String str, bz bzVar, AppLovinSdkImpl appLovinSdkImpl, JSONObject jSONObject) {
        super(str, bzVar, appLovinSdkImpl);
        this.b = ceVar;
        this.f1631a = jSONObject;
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(int i) {
        q.a(i, this.f);
    }

    @Override // com.applovin.impl.sdk.cy
    protected void a(o oVar, p pVar) {
        oVar.a(q.a("device", this.f), this.f1631a, pVar);
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.b.a(jSONObject);
    }
}
