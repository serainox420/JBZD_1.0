package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
@zzme
/* loaded from: classes.dex */
public class zzqr {
    public void zza(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new zzqs(view, onGlobalLayoutListener).zzln();
    }

    public void zza(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new zzqt(view, onScrollChangedListener).zzln();
    }
}
