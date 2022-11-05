package android.support.design.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
/* loaded from: classes.dex */
class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: a  reason: collision with root package name */
    private int f96a;

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f96a = getVisibility();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        a(i, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f96a = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getUserSetVisibility() {
        return this.f96a;
    }
}
