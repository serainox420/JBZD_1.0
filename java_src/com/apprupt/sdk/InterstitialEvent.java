package com.apprupt.sdk;

import com.apprupt.sdk.CvMediator;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
/* loaded from: classes.dex */
public abstract class InterstitialEvent extends BaseEvent {

    /* renamed from: a  reason: collision with root package name */
    protected InterstitialAdWrapper f1910a = null;

    protected abstract void d();

    /* renamed from: com.apprupt.sdk.InterstitialEvent$1  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements CvMediator.Completion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterstitialEvent f1911a;

        @Override // com.apprupt.sdk.CvMediator.Completion
        public void a(String str) {
            this.f1911a.a(str);
        }

        @Override // com.apprupt.sdk.CvMediator.Completion
        public void a(final AdWrapper adWrapper) {
            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.InterstitialEvent.1.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.f1911a.f1910a = (InterstitialAdWrapper) adWrapper;
                    AnonymousClass1.this.f1911a.f1910a.a(new InterstitialAdWrapper.Listener() { // from class: com.apprupt.sdk.InterstitialEvent.1.1.1
                        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                        public void a() {
                            AnonymousClass1.this.f1911a.a();
                        }

                        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                        public void b() {
                            AnonymousClass1.this.f1911a.b();
                        }

                        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                        public void c() {
                            AnonymousClass1.this.f1911a.c();
                        }
                    });
                }
            }, true);
            this.f1911a.d();
        }
    }
}
