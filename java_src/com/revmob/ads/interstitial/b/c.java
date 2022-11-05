package com.revmob.ads.interstitial.b;

import com.revmob.internal.RMLog;
/* loaded from: classes3.dex */
final class c implements com.revmob.internal.i {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ b f4764a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f4764a = bVar;
    }

    @Override // com.revmob.internal.i
    public final void a() {
        RMLog.d("Closing Fullscreen activity");
        this.f4764a.f4763a.f4762a.finish();
    }
}
