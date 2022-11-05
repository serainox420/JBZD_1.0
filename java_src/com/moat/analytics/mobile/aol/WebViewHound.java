package com.moat.analytics.mobile.aol;

import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.aol.base.annotation.NonNull;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface WebViewHound {
    @NonNull
    Optional<WebView> sniff(ViewGroup viewGroup) throws MoatException;
}
