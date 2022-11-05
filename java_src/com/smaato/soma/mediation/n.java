package com.smaato.soma.mediation;

import android.content.Context;
import com.smaato.soma.ErrorCode;
import java.util.Map;
/* compiled from: MediationEventNative.java */
/* loaded from: classes3.dex */
public abstract class n {

    /* compiled from: MediationEventNative.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void a(ErrorCode errorCode);

        void a(com.smaato.soma.internal.b.a aVar);

        void b();
    }

    public abstract void a();

    public void a(Context context, a aVar, Map<String, String> map, o oVar) {
    }
}
