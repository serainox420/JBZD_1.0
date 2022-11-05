package com.smaato.soma.mediation;

import android.content.Context;
import com.smaato.soma.ErrorCode;
import java.util.Map;
/* compiled from: MediationEventInterstitial.java */
/* loaded from: classes3.dex */
public abstract class j {

    /* compiled from: MediationEventInterstitial.java */
    /* loaded from: classes3.dex */
    public interface a extends com.smaato.soma.interstitial.a {
        void a();

        void a(ErrorCode errorCode);

        void b();

        void c();

        void d();
    }

    public abstract void a();

    public abstract void b();

    protected void a(Context context, a aVar, Map<String, String> map, o oVar) {
    }
}
