package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzpb;
@zzme
@TargetApi(19)
/* loaded from: classes.dex */
public class zzlt extends zzlr {
    private Object zzQb;
    private PopupWindow zzQc;
    private boolean zzQd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlt(Context context, zzpb.zza zzaVar, zzqw zzqwVar, zzlq.zza zzaVar2) {
        super(context, zzaVar, zzqwVar, zzaVar2);
        this.zzQb = new Object();
        this.zzQd = false;
    }

    private void zziR() {
        synchronized (this.zzQb) {
            this.zzQd = true;
            if ((this.mContext instanceof Activity) && ((Activity) this.mContext).isDestroyed()) {
                this.zzQc = null;
            }
            if (this.zzQc != null) {
                if (this.zzQc.isShowing()) {
                    this.zzQc.dismiss();
                }
                this.zzQc = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlo, com.google.android.gms.internal.zzpq
    public void cancel() {
        zziR();
        super.cancel();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzlo
    public void zzQ(int i) {
        zziR();
        super.zzQ(i);
    }

    @Override // com.google.android.gms.internal.zzlr
    protected void zziQ() {
        Window window = this.mContext instanceof Activity ? ((Activity) this.mContext).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) this.mContext).isDestroyed()) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(this.mContext);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.addView(this.zzIs.getView(), -1, -1);
        synchronized (this.zzQb) {
            if (this.zzQd) {
                return;
            }
            this.zzQc = new PopupWindow((View) frameLayout, 1, 1, false);
            this.zzQc.setOutsideTouchable(true);
            this.zzQc.setClippingEnabled(false);
            zzpk.zzbf("Displaying the 1x1 popup off the screen.");
            try {
                this.zzQc.showAtLocation(window.getDecorView(), 0, -1, -1);
            } catch (Exception e) {
                this.zzQc = null;
            }
        }
    }
}
