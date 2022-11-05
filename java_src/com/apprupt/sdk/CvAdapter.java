package com.apprupt.sdk;

import android.app.Activity;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.Mediator;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CvAdapter implements Adapter {
    @Override // com.apprupt.sdk.mediation.Adapter
    public void a(Activity activity) {
    }

    @Override // com.apprupt.sdk.mediation.Adapter
    public String a() {
        return Adapter.Info.APPRUPT.toString();
    }

    @Override // com.apprupt.sdk.mediation.Adapter
    public boolean b() {
        return true;
    }

    @Override // com.apprupt.sdk.mediation.Adapter
    public void a(JSONObject jSONObject) {
    }

    @Override // com.apprupt.sdk.mediation.Adapter
    public boolean a(Mediator mediator) {
        return true;
    }

    @Override // com.apprupt.sdk.mediation.Adapter
    public boolean b(Mediator mediator) {
        return true;
    }

    @Override // com.apprupt.sdk.mediation.Adapter
    public void c(Mediator mediator) {
        new CvInlineAdWrapper(this, (CvMediator) mediator).k();
    }

    @Override // com.apprupt.sdk.mediation.Adapter
    public void d(Mediator mediator) {
        new CvInterstitialAdWrapper(this, (CvMediator) mediator).k();
    }
}
