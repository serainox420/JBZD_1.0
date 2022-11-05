package com.revmob.ads.link.a;

import com.revmob.RevMobAdsListener;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class a extends com.revmob.ads.a.b {
    public a(com.revmob.ads.a.a aVar, RevMobAdsListener revMobAdsListener) {
        super(aVar, revMobAdsListener);
    }

    @Override // com.revmob.ads.a.b, com.revmob.client.f
    public final void a(String str) {
        JSONObject jSONObject = new JSONObject(str).getJSONObject("anchor");
        String b = b(jSONObject);
        boolean c = c(jSONObject);
        JSONArray jSONArray = jSONObject.getJSONArray("links");
        String a2 = a(jSONArray);
        boolean a3 = a(jSONObject);
        b bVar = new b(c(jSONArray), b(jSONArray), a2, a3, b, c);
        bVar.d = this.c.c;
        bVar.f = this.c.b;
        this.b.updateWithData(bVar);
    }
}
