package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.R;
import com.google.android.gms.internal.zzbln;
/* loaded from: classes2.dex */
class zzd {
    private final int zzarA;
    private final int zzarB;
    private final int zzarC;
    private final int zzarD;
    private final zza zzarE;
    private final Rect zzarz = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zza zzaVar) {
        this.zzarE = (zza) zzbln.zzw(zzaVar);
        Resources resources = zzaVar.getResources();
        this.zzarA = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zzarB = resources.getDimensionPixelOffset(R.dimen.cast_libraries_material_featurehighlight_inner_margin);
        this.zzarC = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_max_width);
        this.zzarD = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_horizontal_offset);
    }

    private int zza(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = i3 / 2;
        int i6 = i4 - i <= i2 - i4 ? (i4 - i5) + this.zzarD : (i4 - i5) - this.zzarD;
        return i6 - marginLayoutParams.leftMargin < i ? i + marginLayoutParams.leftMargin : (i6 + i3) + marginLayoutParams.rightMargin > i2 ? (i2 - i3) - marginLayoutParams.rightMargin : i6;
    }

    private void zza(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(Math.min((i - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, this.zzarC), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
    }

    private void zza(View view, Rect rect) {
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    private void zzb(View view, int i, int i2) {
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    private void zzc(View view, int i, int i2) {
        view.layout(i, i2 - view.getMeasuredHeight(), view.getMeasuredWidth() + i, i2);
    }

    private int zzd(Rect rect) {
        this.zzarE.zztg();
        return Math.max(this.zzarA * 2, rect.height());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(Rect rect, Rect rect2) {
        boolean z = false;
        View zzth = this.zzarE.zzth();
        if (rect.isEmpty() || rect2.isEmpty()) {
            zzth.layout(0, 0, 0, 0);
        } else {
            int centerY = rect.centerY();
            int centerX = rect.centerX();
            if (centerY < rect2.centerY()) {
                z = true;
            }
            int zzd = zzd(rect);
            int i = this.zzarB + (zzd / 2) + centerY;
            if (z) {
                zza(zzth, rect2.width(), rect2.bottom - i);
                zzb(zzth, zza(zzth, rect2.left, rect2.right, zzth.getMeasuredWidth(), centerX), i);
            } else {
                int i2 = (centerY - (zzd / 2)) - this.zzarB;
                zza(zzth, rect2.width(), i2 - rect2.top);
                zzc(zzth, zza(zzth, rect2.left, rect2.right, zzth.getMeasuredWidth(), centerX), i2);
            }
        }
        zza(zzth, this.zzarz);
        this.zzarE.zzti().zzb(rect, this.zzarz);
        this.zzarE.zztj().zzc(rect);
    }
}
