package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
@zzme
/* loaded from: classes.dex */
class zzqt extends zzqu implements ViewTreeObserver.OnScrollChangedListener {
    private final WeakReference<ViewTreeObserver.OnScrollChangedListener> zzZs;

    public zzqt(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.zzZs = new WeakReference<>(onScrollChangedListener);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.zzZs.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            detach();
        }
    }

    @Override // com.google.android.gms.internal.zzqu
    protected void zza(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    @Override // com.google.android.gms.internal.zzqu
    protected void zzb(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }
}
