package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f761a = {16843016};
    private l b;

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(as.a(context), attributeSet, i);
        this.b = l.a(this);
        this.b.a(attributeSet, i);
        this.b.a();
        av a2 = av.a(getContext(), attributeSet, f761a, i, 0);
        setCheckMarkDrawable(a2.a(0));
        a2.a();
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(android.support.v7.a.a.b.b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.b != null) {
            this.b.a(context, i);
        }
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.b != null) {
            this.b.a();
        }
    }
}
