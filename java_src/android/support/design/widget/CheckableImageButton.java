package android.support.design.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ai;
import android.support.v7.appcompat.R;
import android.support.v7.widget.AppCompatImageButton;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import com.google.android.gms.vision.barcode.Barcode;
@RestrictTo
/* loaded from: classes.dex */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f50a = {16842912};
    private boolean b;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ai.a(this, new android.support.v4.view.a() { // from class: android.support.design.widget.CheckableImageButton.1
            @Override // android.support.v4.view.a
            public void a(View view, AccessibilityEvent accessibilityEvent) {
                super.a(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // android.support.v4.view.a
            public void a(View view, android.support.v4.view.a.c cVar) {
                super.a(view, cVar);
                cVar.a(true);
                cVar.b(CheckableImageButton.this.isChecked());
            }
        });
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.b != z) {
            this.b = z;
            refreshDrawableState();
            sendAccessibilityEvent(Barcode.PDF417);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.b;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.b);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.b ? mergeDrawableStates(super.onCreateDrawableState(f50a.length + i), f50a) : super.onCreateDrawableState(i);
    }
}
