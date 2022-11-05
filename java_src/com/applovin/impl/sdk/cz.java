package com.applovin.impl.sdk;

import android.util.Log;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cz implements p {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinSdkImpl f1648a;
    final /* synthetic */ String b;
    final /* synthetic */ cy c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cz(cy cyVar, AppLovinSdkImpl appLovinSdkImpl, String str) {
        this.c = cyVar;
        this.f1648a = appLovinSdkImpl;
        this.b = str;
    }

    @Override // com.applovin.impl.sdk.p
    public void a(int i) {
        int i2;
        long j;
        int i3;
        int i4;
        int i5;
        boolean z = true;
        boolean z2 = i < 200 || i >= 500;
        if (i == -103) {
            z = false;
        }
        if (z2 && z) {
            i2 = this.c.f1647a;
            if (i2 > 0) {
                j = this.c.b;
                long longValue = j < 0 ? ((Long) this.f1648a.a(bx.l)).longValue() : this.c.b;
                String str = this.b;
                StringBuilder append = new StringBuilder().append("Unable to send request due to server failure (code ").append(i).append("). ");
                i3 = this.c.f1647a;
                Log.w(str, append.append(i3).append(" attempts left, retrying in ").append(longValue / 1000.0d).append(" seconds...").toString());
                cy cyVar = this.c;
                i4 = this.c.f1647a;
                cyVar.f1647a = i4 - 1;
                i5 = this.c.f1647a;
                if (i5 == 0) {
                    this.c.c();
                }
                this.f1648a.a().a(this.c, cs.BACKGROUND, longValue);
                return;
            }
        }
        this.c.a(i);
    }

    @Override // com.applovin.impl.sdk.p
    public void a(JSONObject jSONObject, int i) {
        this.c.f1647a = 0;
        this.c.a(jSONObject, i);
    }
}
