package com.applovin.impl.sdk;

import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bv extends cy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f1623a;
    final /* synthetic */ JSONObject b;
    final /* synthetic */ p c;
    final /* synthetic */ bu d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bv(bu buVar, String str, bz bzVar, AppLovinSdkImpl appLovinSdkImpl, String str2, JSONObject jSONObject, p pVar) {
        super(str, bzVar, appLovinSdkImpl);
        this.d = buVar;
        this.f1623a = str2;
        this.b = jSONObject;
        this.c = pVar;
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(int i) {
        this.c.a(i);
    }

    @Override // com.applovin.impl.sdk.cy
    protected void a(o oVar, p pVar) {
        oVar.a(q.a(q.a(this.f1623a, this.f)), this.b, pVar);
    }

    @Override // com.applovin.impl.sdk.cy, com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.c.a(jSONObject, i);
    }
}
