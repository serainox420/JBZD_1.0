package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f766a;
    private boolean b;

    static {
        f766a = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i, 0);
    }

    @TargetApi(11)
    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet, i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        av a2 = av.a(context, attributeSet, R.styleable.PopupWindow, i, i2);
        if (a2.g(R.styleable.PopupWindow_overlapAnchor)) {
            a(a2.a(R.styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(a2.a(R.styleable.PopupWindow_android_popupBackground));
        int i3 = Build.VERSION.SDK_INT;
        if (i2 != 0 && i3 < 11 && a2.g(R.styleable.PopupWindow_android_popupAnimationStyle)) {
            setAnimationStyle(a2.g(R.styleable.PopupWindow_android_popupAnimationStyle, -1));
        }
        a2.a();
        if (Build.VERSION.SDK_INT < 14) {
            a(this);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f766a && this.b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    @TargetApi(19)
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f766a && this.b) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, (!f766a || !this.b) ? i2 : i2 - view.getHeight(), i3, i4);
    }

    private static void a(final PopupWindow popupWindow) {
        try {
            final Field declaredField = PopupWindow.class.getDeclaredField("mAnchor");
            declaredField.setAccessible(true);
            Field declaredField2 = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
            declaredField2.setAccessible(true);
            final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = (ViewTreeObserver.OnScrollChangedListener) declaredField2.get(popupWindow);
            declaredField2.set(popupWindow, new ViewTreeObserver.OnScrollChangedListener() { // from class: android.support.v7.widget.AppCompatPopupWindow.1
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public void onScrollChanged() {
                    try {
                        WeakReference weakReference = (WeakReference) declaredField.get(popupWindow);
                        if (weakReference != null && weakReference.get() != null) {
                            onScrollChangedListener.onScrollChanged();
                        }
                    } catch (IllegalAccessException e) {
                    }
                }
            });
        } catch (Exception e) {
            Log.d("AppCompatPopupWindow", "Exception while installing workaround OnScrollChangedListener", e);
        }
    }

    @RestrictTo
    public void a(boolean z) {
        if (f766a) {
            this.b = z;
        } else {
            android.support.v4.widget.s.a(this, z);
        }
    }
}
