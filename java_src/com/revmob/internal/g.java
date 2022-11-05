package com.revmob.internal;

import android.webkit.WebView;
/* loaded from: classes3.dex */
final class g extends s {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f4802a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(f fVar) {
        super(null, null);
        this.f4802a = fVar;
    }

    @Override // com.revmob.internal.s, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.f4802a.f4801a.a(str);
    }
}
