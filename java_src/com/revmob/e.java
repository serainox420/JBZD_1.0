package com.revmob;

import android.webkit.WebView;
import com.revmob.internal.s;
/* loaded from: classes3.dex */
final class e extends s {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ FullscreenActivity f4794a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(FullscreenActivity fullscreenActivity) {
        super(null, null);
        this.f4794a = fullscreenActivity;
    }

    @Override // com.revmob.internal.s, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.f4794a.e();
    }
}
