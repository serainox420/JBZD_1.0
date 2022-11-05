package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.y;
import android.util.AttributeSet;
import android.widget.LinearLayout;
@RestrictTo
/* loaded from: classes.dex */
public class FitWindowsLinearLayout extends LinearLayout implements y {

    /* renamed from: a  reason: collision with root package name */
    private y.a f784a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v7.widget.y
    public void setOnFitSystemWindowsListener(y.a aVar) {
        this.f784a = aVar;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (this.f784a != null) {
            this.f784a.a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
