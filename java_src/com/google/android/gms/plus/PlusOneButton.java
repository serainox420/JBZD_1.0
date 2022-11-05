package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzap;
import com.google.android.gms.plus.internal.zzg;
/* loaded from: classes2.dex */
public final class PlusOneButton extends FrameLayout {
    public static final int ANNOTATION_BUBBLE = 1;
    public static final int ANNOTATION_INLINE = 2;
    public static final int ANNOTATION_NONE = 0;
    public static final int DEFAULT_ACTIVITY_REQUEST_CODE = -1;
    public static final int SIZE_MEDIUM = 1;
    public static final int SIZE_SMALL = 0;
    public static final int SIZE_STANDARD = 3;
    public static final int SIZE_TALL = 2;
    private int mSize;
    private String zzE;
    private View zzbBL;
    private int zzbBM;
    private int zzbBN;
    private OnPlusOneClickListener zzbBO;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public class DefaultOnPlusOneClickListener implements View.OnClickListener, OnPlusOneClickListener {
        private final OnPlusOneClickListener zzbBP;

        public DefaultOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
            this.zzbBP = onPlusOneClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = (Intent) PlusOneButton.this.zzbBL.getTag();
            if (this.zzbBP != null) {
                this.zzbBP.onPlusOneClick(intent);
            } else {
                onPlusOneClick(intent);
            }
        }

        @Override // com.google.android.gms.plus.PlusOneButton.OnPlusOneClickListener
        public void onPlusOneClick(Intent intent) {
            Context context = PlusOneButton.this.getContext();
            if (!(context instanceof Activity) || intent == null) {
                return;
            }
            ((Activity) context).startActivityForResult(intent, PlusOneButton.this.zzbBN);
        }
    }

    /* loaded from: classes2.dex */
    public interface OnPlusOneClickListener {
        void onPlusOneClick(Intent intent);
    }

    public PlusOneButton(Context context) {
        this(context, null);
    }

    public PlusOneButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSize = getSize(context, attributeSet);
        this.zzbBM = getAnnotation(context, attributeSet);
        this.zzbBN = -1;
        zzaO(getContext());
        if (isInEditMode()) {
        }
    }

    protected static int getAnnotation(Context context, AttributeSet attributeSet) {
        String zza = zzap.zza("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", context, attributeSet, true, false, "PlusOneButton");
        if ("INLINE".equalsIgnoreCase(zza)) {
            return 2;
        }
        return !"NONE".equalsIgnoreCase(zza) ? 1 : 0;
    }

    protected static int getSize(Context context, AttributeSet attributeSet) {
        String zza = zzap.zza("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", context, attributeSet, true, false, "PlusOneButton");
        if ("SMALL".equalsIgnoreCase(zza)) {
            return 0;
        }
        if ("MEDIUM".equalsIgnoreCase(zza)) {
            return 1;
        }
        return "TALL".equalsIgnoreCase(zza) ? 2 : 3;
    }

    private void zzaO(Context context) {
        if (this.zzbBL != null) {
            removeView(this.zzbBL);
        }
        this.zzbBL = zzg.zza(context, this.mSize, this.zzbBM, this.zzE, this.zzbBN);
        setOnPlusOneClickListener(this.zzbBO);
        addView(this.zzbBL);
    }

    public void initialize(String str, int i) {
        zzac.zza(getContext() instanceof Activity, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener).");
        this.zzE = str;
        this.zzbBN = i;
        zzaO(getContext());
    }

    public void initialize(String str, OnPlusOneClickListener onPlusOneClickListener) {
        this.zzE = str;
        this.zzbBN = 0;
        zzaO(getContext());
        setOnPlusOneClickListener(onPlusOneClickListener);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.zzbBL.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.zzbBL;
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void plusOneClick() {
        this.zzbBL.performClick();
    }

    public void setAnnotation(int i) {
        this.zzbBM = i;
        zzaO(getContext());
    }

    public void setIntent(Intent intent) {
        this.zzbBL.setTag(intent);
    }

    public void setOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
        this.zzbBO = onPlusOneClickListener;
        this.zzbBL.setOnClickListener(new DefaultOnPlusOneClickListener(onPlusOneClickListener));
    }

    public void setSize(int i) {
        this.mSize = i;
        zzaO(getContext());
    }
}
