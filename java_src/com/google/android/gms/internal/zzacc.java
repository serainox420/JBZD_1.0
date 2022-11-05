package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.net.Uri;
import android.widget.ImageView;
/* loaded from: classes2.dex */
public final class zzacc extends ImageView {
    private Uri zzaET;
    private int zzaEU;

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void zzcQ(int i) {
        this.zzaEU = i;
    }

    public void zzr(Uri uri) {
        this.zzaET = uri;
    }

    public int zzxu() {
        return this.zzaEU;
    }
}
