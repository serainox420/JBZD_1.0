package com.applovin.impl.sdk;

import org.json.JSONObject;
/* loaded from: classes.dex */
class co extends cy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cn f1637a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public co(cn cnVar, String str, bz bzVar, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, bzVar, appLovinSdkImpl);
        this.f1637a = cnVar;
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(int i) {
        this.f1637a.b(i);
    }

    @Override // com.applovin.impl.sdk.cy
    protected void a(o oVar, p pVar) {
        oVar.a(this.f1637a.c(), ((Integer) this.f.a(bx.p)).intValue(), pVar);
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        if (i == 200) {
            this.f1637a.b(jSONObject);
        } else {
            this.f1637a.b(i);
        }
    }
}
