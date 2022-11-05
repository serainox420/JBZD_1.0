package com.smaato.soma.mediation;

import android.content.Context;
import android.view.View;
import com.smaato.soma.ErrorCode;
import java.util.Map;
/* compiled from: MediationEventBanner.java */
/* loaded from: classes3.dex */
public abstract class f {

    /* compiled from: MediationEventBanner.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void a(View view);

        void a(ErrorCode errorCode);

        void b();

        void c();
    }

    public abstract void a();

    protected void a(Context context, a aVar, Map<String, String> map, o oVar) {
    }
}
