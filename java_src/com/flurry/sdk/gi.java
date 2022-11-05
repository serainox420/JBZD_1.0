package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.RelativeLayout;
import com.flurry.sdk.gz;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public final class gi extends gm {
    private int e;

    public gi(Context context, r rVar, gz.a aVar) {
        super(context, rVar, aVar);
        this.e = 0;
        if (this.f2732a == null) {
            this.f2732a = new gu(context);
        }
        if (this.f2732a != null) {
            this.f2732a.f2749a = this;
        }
        setAutoPlay(rVar.l().b.b.t);
    }

    @Override // com.flurry.sdk.gm
    protected final int getViewParams() {
        if (this.e == 0) {
            this.e = getAdController().f().j;
        }
        return this.e;
    }

    @Override // com.flurry.sdk.gm
    public final void setAutoPlay(boolean z) {
        super.setAutoPlay(true);
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str, float f, float f2) {
        super.a(str, f, f2);
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            this.e |= 1;
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public final void initLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.f2732a.d, layoutParams);
        showProgressDialog();
    }
}
