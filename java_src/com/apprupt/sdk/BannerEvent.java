package com.apprupt.sdk;

import android.view.View;
import com.apprupt.sdk.CvMediator;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.InlineAdWrapper;
/* loaded from: classes.dex */
public abstract class BannerEvent extends BaseEvent {
    protected abstract void a(View view);

    /* renamed from: com.apprupt.sdk.BannerEvent$1  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements CvMediator.Completion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BannerEvent f1710a;

        @Override // com.apprupt.sdk.CvMediator.Completion
        public void a(String str) {
            this.f1710a.a(str);
        }

        @Override // com.apprupt.sdk.CvMediator.Completion
        public void a(AdWrapper adWrapper) {
            final InlineAdWrapper inlineAdWrapper = (InlineAdWrapper) adWrapper;
            inlineAdWrapper.a(new Runnable() { // from class: com.apprupt.sdk.BannerEvent.1.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.f1710a.a(inlineAdWrapper.c());
                }
            });
        }
    }

    /* renamed from: com.apprupt.sdk.BannerEvent$2  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements InlineAdWrapper.Listener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BannerEvent f1712a;

        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
        public void a() {
            this.f1712a.a();
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
        public void b() {
            this.f1712a.b();
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
        public void c() {
            this.f1712a.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.apprupt.sdk.BaseEvent
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.apprupt.sdk.BaseEvent
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.apprupt.sdk.BaseEvent
    public void c() {
    }
}
