package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
@zzme
/* loaded from: classes.dex */
public final class zzqd {
    private final View mView;
    private Activity zzYJ;
    private boolean zzYK;
    private boolean zzYL;
    private boolean zzYM;
    private ViewTreeObserver.OnGlobalLayoutListener zzYN;
    private ViewTreeObserver.OnScrollChangedListener zzYO;

    public zzqd(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzYJ = activity;
        this.mView = view;
        this.zzYN = onGlobalLayoutListener;
        this.zzYO = onScrollChangedListener;
    }

    private void zzlg() {
        if (!this.zzYK) {
            if (this.zzYN != null) {
                if (this.zzYJ != null) {
                    com.google.android.gms.ads.internal.zzw.zzcM().zza(this.zzYJ, this.zzYN);
                }
                com.google.android.gms.ads.internal.zzw.zzdk().zza(this.mView, this.zzYN);
            }
            if (this.zzYO != null) {
                if (this.zzYJ != null) {
                    com.google.android.gms.ads.internal.zzw.zzcM().zza(this.zzYJ, this.zzYO);
                }
                com.google.android.gms.ads.internal.zzw.zzdk().zza(this.mView, this.zzYO);
            }
            this.zzYK = true;
        }
    }

    private void zzlh() {
        if (this.zzYJ != null && this.zzYK) {
            if (this.zzYN != null && this.zzYJ != null) {
                com.google.android.gms.ads.internal.zzw.zzcO().zzb(this.zzYJ, this.zzYN);
            }
            if (this.zzYO != null && this.zzYJ != null) {
                com.google.android.gms.ads.internal.zzw.zzcM().zzb(this.zzYJ, this.zzYO);
            }
            this.zzYK = false;
        }
    }

    public void onAttachedToWindow() {
        this.zzYL = true;
        if (this.zzYM) {
            zzlg();
        }
    }

    public void onDetachedFromWindow() {
        this.zzYL = false;
        zzlh();
    }

    public void zzl(Activity activity) {
        this.zzYJ = activity;
    }

    public void zzle() {
        this.zzYM = true;
        if (this.zzYL) {
            zzlg();
        }
    }

    public void zzlf() {
        this.zzYM = false;
        zzlh();
    }
}
