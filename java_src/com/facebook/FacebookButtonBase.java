package com.facebook;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.support.v4.app.Fragment;
import android.support.v4.content.b;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.FragmentWrapper;
/* loaded from: classes.dex */
public abstract class FacebookButtonBase extends Button {
    private String analyticsButtonCreatedEventName;
    private String analyticsButtonTappedEventName;
    private View.OnClickListener externalOnClickListener;
    private View.OnClickListener internalOnClickListener;
    private boolean overrideCompoundPadding;
    private int overrideCompoundPaddingLeft;
    private int overrideCompoundPaddingRight;
    private FragmentWrapper parentFragment;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getDefaultRequestCode();

    /* JADX INFO: Access modifiers changed from: protected */
    public FacebookButtonBase(Context context, AttributeSet attributeSet, int i, int i2, String str, String str2) {
        super(context, attributeSet, 0);
        int defaultStyleResource = i2 == 0 ? getDefaultStyleResource() : i2;
        configureButton(context, attributeSet, i, defaultStyleResource == 0 ? R.style.com_facebook_button : defaultStyleResource);
        this.analyticsButtonCreatedEventName = str;
        this.analyticsButtonTappedEventName = str2;
        setClickable(true);
        setFocusable(true);
    }

    public void setFragment(Fragment fragment) {
        this.parentFragment = new FragmentWrapper(fragment);
    }

    public void setFragment(android.app.Fragment fragment) {
        this.parentFragment = new FragmentWrapper(fragment);
    }

    public Fragment getFragment() {
        if (this.parentFragment != null) {
            return this.parentFragment.getSupportFragment();
        }
        return null;
    }

    public android.app.Fragment getNativeFragment() {
        if (this.parentFragment != null) {
            return this.parentFragment.getNativeFragment();
        }
        return null;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.externalOnClickListener = onClickListener;
    }

    public int getRequestCode() {
        return getDefaultRequestCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            logButtonCreated(getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if ((getGravity() & 1) != 0) {
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - measureTextWidth(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
            this.overrideCompoundPaddingLeft = compoundPaddingLeft - min;
            this.overrideCompoundPaddingRight = compoundPaddingRight + min;
            this.overrideCompoundPadding = true;
        }
        super.onDraw(canvas);
        this.overrideCompoundPadding = false;
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return this.overrideCompoundPadding ? this.overrideCompoundPaddingLeft : super.getCompoundPaddingLeft();
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return this.overrideCompoundPadding ? this.overrideCompoundPaddingRight : super.getCompoundPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Activity getActivity() {
        Context context = getContext();
        while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        throw new FacebookException("Unable to get Activity.");
    }

    protected int getDefaultStyleResource() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int measureTextWidth(String str) {
        return (int) Math.ceil(getPaint().measureText(str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void configureButton(Context context, AttributeSet attributeSet, int i, int i2) {
        parseBackgroundAttributes(context, attributeSet, i, i2);
        parseCompoundDrawableAttributes(context, attributeSet, i, i2);
        parseContentAttributes(context, attributeSet, i, i2);
        parseTextAttributes(context, attributeSet, i, i2);
        setupOnClickListener();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void callExternalOnClickListener(View view) {
        if (this.externalOnClickListener != null) {
            this.externalOnClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setInternalOnClickListener(View.OnClickListener onClickListener) {
        this.internalOnClickListener = onClickListener;
    }

    private void logButtonCreated(Context context) {
        AppEventsLogger.newLogger(context).logSdkEvent(this.analyticsButtonCreatedEventName, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logButtonTapped(Context context) {
        AppEventsLogger.newLogger(context).logSdkEvent(this.analyticsButtonTappedEventName, null, null);
    }

    private void parseBackgroundAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, i, i2);
            try {
                if (obtainStyledAttributes.hasValue(0)) {
                    int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        setBackgroundResource(resourceId);
                    } else {
                        setBackgroundColor(obtainStyledAttributes.getColor(0, 0));
                    }
                } else {
                    setBackgroundColor(b.c(context, R.color.com_facebook_blue));
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    @SuppressLint({"ResourceType"})
    private void parseCompoundDrawableAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i, i2);
        try {
            setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes.getResourceId(0, 0), obtainStyledAttributes.getResourceId(1, 0), obtainStyledAttributes.getResourceId(2, 0), obtainStyledAttributes.getResourceId(3, 0));
            setCompoundDrawablePadding(obtainStyledAttributes.getDimensionPixelSize(4, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void parseContentAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i, i2);
        try {
            setPadding(obtainStyledAttributes.getDimensionPixelSize(0, 0), obtainStyledAttributes.getDimensionPixelSize(1, 0), obtainStyledAttributes.getDimensionPixelSize(2, 0), obtainStyledAttributes.getDimensionPixelSize(3, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void parseTextAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842904}, i, i2);
        try {
            setTextColor(obtainStyledAttributes.getColorStateList(0));
            obtainStyledAttributes.recycle();
            obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842927}, i, i2);
            try {
                setGravity(obtainStyledAttributes.getInt(0, 17));
                obtainStyledAttributes.recycle();
                obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842901, 16842903, 16843087}, i, i2);
                try {
                    setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(0, 0));
                    setTypeface(Typeface.defaultFromStyle(obtainStyledAttributes.getInt(1, 1)));
                    setText(obtainStyledAttributes.getString(2));
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    private void setupOnClickListener() {
        super.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.FacebookButtonBase.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FacebookButtonBase.this.logButtonTapped(FacebookButtonBase.this.getContext());
                if (FacebookButtonBase.this.internalOnClickListener != null) {
                    FacebookButtonBase.this.internalOnClickListener.onClick(view);
                } else if (FacebookButtonBase.this.externalOnClickListener != null) {
                    FacebookButtonBase.this.externalOnClickListener.onClick(view);
                }
            }
        });
    }
}
