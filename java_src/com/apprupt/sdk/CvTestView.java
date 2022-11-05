package com.apprupt.sdk;

import android.os.Handler;
import android.view.View;
/* loaded from: classes.dex */
class CvTestView extends View {

    /* renamed from: a  reason: collision with root package name */
    Listener f1886a;
    Handler b;

    /* loaded from: classes.dex */
    interface Listener {
        void a();
    }

    @Override // android.view.View
    protected void onAnimationEnd() {
        super.onAnimationEnd();
        this.b.post(new Runnable() { // from class: com.apprupt.sdk.CvTestView.1
            @Override // java.lang.Runnable
            public void run() {
                if (CvTestView.this.f1886a != null) {
                    CvTestView.this.f1886a.a();
                }
            }
        });
    }
}
