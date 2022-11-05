package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaj;
import com.google.android.gms.common.internal.zzak;
import com.google.android.gms.dynamic.zzf;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mColor;
    private int mSize;
    private View zzayF;
    private View.OnClickListener zzayG;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzayG = null;
        zzb(context, attributeSet);
        setStyle(this.mSize, this.mColor);
    }

    private void zzaO(Context context) {
        if (this.zzayF != null) {
            removeView(this.zzayF);
        }
        try {
            this.zzayF = zzaj.zzd(context, this.mSize, this.mColor);
        } catch (zzf.zza e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.zzayF = zzc(context, this.mSize, this.mColor);
        }
        addView(this.zzayF);
        this.zzayF.setEnabled(isEnabled());
        this.zzayF.setOnClickListener(this);
    }

    private void zzb(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SignInButton, 0, 0);
        try {
            this.mSize = obtainStyledAttributes.getInt(R.styleable.SignInButton_buttonSize, 0);
            this.mColor = obtainStyledAttributes.getInt(R.styleable.SignInButton_colorScheme, 2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private static Button zzc(Context context, int i, int i2) {
        zzak zzakVar = new zzak(context);
        zzakVar.zza(context.getResources(), i, i2);
        return zzakVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.zzayG == null || view != this.zzayF) {
            return;
        }
        this.zzayG.onClick(this);
    }

    public void setColorScheme(int i) {
        setStyle(this.mSize, i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.zzayF.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzayG = onClickListener;
        if (this.zzayF != null) {
            this.zzayF.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(Scope[] scopeArr) {
        setStyle(this.mSize, this.mColor);
    }

    public void setSize(int i) {
        setStyle(i, this.mColor);
    }

    public void setStyle(int i, int i2) {
        this.mSize = i;
        this.mColor = i2;
        zzaO(getContext());
    }

    @Deprecated
    public void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
