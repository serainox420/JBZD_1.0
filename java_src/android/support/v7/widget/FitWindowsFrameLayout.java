package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.y;
import android.util.AttributeSet;
import android.widget.FrameLayout;
@RestrictTo
/* loaded from: classes.dex */
public class FitWindowsFrameLayout extends FrameLayout implements y {

    /* renamed from: a  reason: collision with root package name */
    private y.a f783a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v7.widget.y
    public void setOnFitSystemWindowsListener(y.a aVar) {
        this.f783a = aVar;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (this.f783a != null) {
            this.f783a.a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
