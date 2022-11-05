package pl.jbzd.app.view.gallery;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
/* loaded from: classes3.dex */
public class GalleryViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    public boolean f6051a;
    private float b;
    private boolean c;
    private boolean d;
    private boolean e;

    public GalleryViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f6051a = false;
    }

    public GalleryViewPager(Context context) {
        super(context);
        this.e = false;
        this.f6051a = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        this.e = z;
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() <= 1 || !this.e) {
            return super.dispatchTouchEvent(motionEvent);
        }
        requestDisallowInterceptTouchEvent(false);
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        requestDisallowInterceptTouchEvent(true);
        return dispatchTouchEvent;
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                getParent().requestDisallowInterceptTouchEvent(true);
                this.b = motionEvent.getX();
                break;
            case 1:
                getParent().requestDisallowInterceptTouchEvent(false);
                this.b = motionEvent.getX();
                this.c = false;
                this.d = false;
                break;
            case 2:
                if (getCurrentItem() == 0) {
                    if (this.b <= motionEvent.getX() && !this.d) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                        break;
                    } else {
                        this.d = true;
                        this.b = motionEvent.getX();
                        getParent().requestDisallowInterceptTouchEvent(true);
                        break;
                    }
                } else if (getCurrentItem() == getAdapter().getCount() - 1) {
                    if (this.b >= motionEvent.getX() && !this.c) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                        break;
                    } else {
                        this.c = true;
                        this.b = motionEvent.getX();
                        getParent().requestDisallowInterceptTouchEvent(true);
                        break;
                    }
                }
                break;
        }
        super.onTouchEvent(motionEvent);
        return true;
    }
}
