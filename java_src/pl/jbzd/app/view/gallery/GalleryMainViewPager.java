package pl.jbzd.app.view.gallery;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
/* loaded from: classes3.dex */
public class GalleryMainViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    float f6039a;
    private ViewPager b;

    public GalleryMainViewPager(Context context) {
        super(context);
        a(context);
    }

    public GalleryMainViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public void setInnerViewPager(ViewPager viewPager) {
        this.b = viewPager;
    }

    private void a(Context context) {
        int complexToDimensionPixelSize;
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(16843499, typedValue, true) && (complexToDimensionPixelSize = TypedValue.complexToDimensionPixelSize(typedValue.data, getResources().getDisplayMetrics())) > 0) {
            this.f6039a = complexToDimensionPixelSize;
        }
        this.f6039a = (float) (this.f6039a * 1.5d);
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        switch (motionEvent.getAction()) {
            case 0:
                if (this.b != null && this.b != null && this.b.getAdapter() != null && this.b.getCurrentItem() < this.b.getAdapter().getCount() - 1) {
                    z = true;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            try {
                return super.onInterceptTouchEvent(motionEvent);
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
