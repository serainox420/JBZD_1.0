package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
@zzme
/* loaded from: classes.dex */
class zzqs extends zzqu implements ViewTreeObserver.OnGlobalLayoutListener {
    private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> zzZs;

    public zzqs(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.zzZs = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzZs.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            detach();
        }
    }

    @Override // com.google.android.gms.internal.zzqu
    protected void zza(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // com.google.android.gms.internal.zzqu
    protected void zzb(ViewTreeObserver viewTreeObserver) {
        com.google.android.gms.ads.internal.zzw.zzcO().zza(viewTreeObserver, this);
    }
}
