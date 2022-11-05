package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.webkit.WebChromeClient;
@zzme
@TargetApi(14)
/* loaded from: classes.dex */
public final class zzrf extends zzrd {
    public zzrf(zzqw zzqwVar) {
        super(zzqwVar);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        zza(view, i, customViewCallback);
    }
}
