package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.RelativeLayout;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.internal.featurehighlight.zza;
/* loaded from: classes2.dex */
public class zzxb extends RelativeLayout implements IntroductoryOverlay {
    private Activity mActivity;
    private int mColor;
    private final boolean zzaqM;
    private com.google.android.gms.cast.framework.internal.featurehighlight.zza zzaqN;
    private boolean zzaqO;
    private View zzaqv;
    private String zzaqx;
    private IntroductoryOverlay.OnOverlayDismissedListener zzaqy;

    @TargetApi(15)
    public zzxb(IntroductoryOverlay.Builder builder) {
        super(builder.getActivity());
        this.mActivity = builder.getActivity();
        this.zzaqM = builder.zzsU();
        this.zzaqy = builder.zzsS();
        this.zzaqv = builder.zzsR();
        this.zzaqx = builder.zzsV();
        this.mColor = builder.zzsT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        removeAllViews();
        this.mActivity = null;
        this.zzaqy = null;
        this.zzaqv = null;
        this.zzaqN = null;
        this.zzaqx = null;
        this.mColor = 0;
        this.zzaqO = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzax(Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        return accessibilityManager != null && accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        reset();
        super.onDetachedFromWindow();
    }

    @Override // com.google.android.gms.cast.framework.IntroductoryOverlay
    public void remove() {
        if (this.zzaqO) {
            ((ViewGroup) this.mActivity.getWindow().getDecorView()).removeView(this);
            reset();
        }
    }

    @Override // com.google.android.gms.cast.framework.IntroductoryOverlay
    public void show() {
        if (this.mActivity == null || this.zzaqv == null || this.zzaqO || zzax(this.mActivity)) {
            return;
        }
        if (this.zzaqM && IntroductoryOverlay.zza.zzav(this.mActivity)) {
            reset();
            return;
        }
        this.zzaqN = new com.google.android.gms.cast.framework.internal.featurehighlight.zza(this.mActivity);
        if (this.mColor != 0) {
            this.zzaqN.zzca(this.mColor);
        }
        addView(this.zzaqN);
        com.google.android.gms.cast.framework.internal.featurehighlight.zzb zzbVar = (com.google.android.gms.cast.framework.internal.featurehighlight.zzb) this.mActivity.getLayoutInflater().inflate(R.layout.cast_help_text, (ViewGroup) this.zzaqN, false);
        zzbVar.setText(this.zzaqx, null);
        this.zzaqN.zza(zzbVar);
        this.zzaqN.zza(this.zzaqv, null, true, new zza.InterfaceC0157zza() { // from class: com.google.android.gms.internal.zzxb.1
            @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zza.InterfaceC0157zza
            public void dismiss() {
                if (!zzxb.this.zzaqO) {
                    return;
                }
                IntroductoryOverlay.zza.zzau(zzxb.this.mActivity);
                zzxb.this.zzaqN.zzi(new Runnable() { // from class: com.google.android.gms.internal.zzxb.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (zzxb.this.zzaqO) {
                            ((ViewGroup) zzxb.this.mActivity.getWindow().getDecorView()).removeView(zzxb.this);
                            if (zzxb.this.zzaqy != null) {
                                zzxb.this.zzaqy.onOverlayDismissed();
                            }
                            zzxb.this.reset();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zza.InterfaceC0157zza
            public void zztc() {
                if (!zzxb.this.zzaqO) {
                    return;
                }
                IntroductoryOverlay.zza.zzau(zzxb.this.mActivity);
                zzxb.this.zzaqN.zzj(new Runnable() { // from class: com.google.android.gms.internal.zzxb.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (zzxb.this.zzaqO) {
                            ((ViewGroup) zzxb.this.mActivity.getWindow().getDecorView()).removeView(zzxb.this);
                            if (zzxb.this.zzaqy != null) {
                                zzxb.this.zzaqy.onOverlayDismissed();
                            }
                            zzxb.this.reset();
                        }
                    }
                });
            }
        });
        this.zzaqO = true;
        ((ViewGroup) this.mActivity.getWindow().getDecorView()).addView(this);
        this.zzaqN.zzh(null);
    }
}
