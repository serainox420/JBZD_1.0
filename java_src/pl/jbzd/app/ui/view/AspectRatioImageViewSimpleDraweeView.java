package pl.jbzd.app.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.SimpleDraweeView;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public class AspectRatioImageViewSimpleDraweeView extends SimpleDraweeView {

    /* renamed from: a  reason: collision with root package name */
    private float f5886a;
    private float b;
    private boolean c;

    public AspectRatioImageViewSimpleDraweeView(Context context, GenericDraweeHierarchy genericDraweeHierarchy) {
        super(context, genericDraweeHierarchy);
        a(context, null);
    }

    public AspectRatioImageViewSimpleDraweeView(Context context) {
        super(context);
        a(context, null);
    }

    public AspectRatioImageViewSimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public AspectRatioImageViewSimpleDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    public AspectRatioImageViewSimpleDraweeView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArray = null;
            try {
                typedArray = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AspectRatioImageView, 0, 0);
                if (typedArray != null) {
                    setAspectRatioWidth(typedArray.getInt(0, 4));
                    setAspectRationHeight(typedArray.getInt(1, 3));
                    setWidthAsBase(typedArray.getBoolean(2, true));
                }
            } finally {
                if (typedArray != null) {
                    typedArray.recycle();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (a()) {
            setMeasuredDimension(getMeasuredWidth(), (int) ((getMeasuredWidth() * getAspectRationHeight()) / getAspectRatioWidth()));
            return;
        }
        setMeasuredDimension((int) ((getMeasuredHeight() * getAspectRatioWidth()) / getAspectRationHeight()), getMeasuredHeight());
    }

    public float getAspectRatioWidth() {
        return this.f5886a;
    }

    public void setAspectRatioWidth(int i) {
        this.f5886a = i;
    }

    public float getAspectRationHeight() {
        return this.b;
    }

    public void setAspectRationHeight(int i) {
        this.b = i;
    }

    public boolean a() {
        return this.c;
    }

    public void setWidthAsBase(boolean z) {
        this.c = z;
    }
}
