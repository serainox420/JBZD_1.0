package com.apprupt.sdk.mediation;

import android.view.View;
import com.apprupt.sdk.mediation.AdWrapper;
/* loaded from: classes.dex */
public interface InlineAdWrapper extends AdWrapper {

    /* loaded from: classes.dex */
    public interface Listener extends AdWrapper.Listener {
    }

    void a(Runnable runnable);

    boolean a();

    void b();

    View c();

    Listener d();
}
