package me.relex.photodraweeview;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.DraweeView;
/* compiled from: DefaultOnDoubleTapListener.java */
/* loaded from: classes3.dex */
public class b implements GestureDetector.OnDoubleTapListener {

    /* renamed from: a  reason: collision with root package name */
    protected a f5822a;

    public b(a aVar) {
        a(aVar);
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        DraweeView<GenericDraweeHierarchy> a2;
        RectF i;
        if (this.f5822a == null || (a2 = this.f5822a.a()) == null) {
            return false;
        }
        if (this.f5822a.f() != null && (i = this.f5822a.i()) != null) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (i.contains(x, y)) {
                this.f5822a.f().a(a2, (x - i.left) / i.width(), (y - i.top) / i.height());
                return true;
            }
        }
        if (this.f5822a.g() == null) {
            return false;
        }
        this.f5822a.g().a(a2, motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        if (this.f5822a == null) {
            return false;
        }
        try {
            float e = this.f5822a.e();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (e < this.f5822a.c()) {
                this.f5822a.a(this.f5822a.c(), x, y, true);
            } else if (e >= this.f5822a.c() && e < this.f5822a.d()) {
                this.f5822a.a(this.f5822a.d(), x, y, true);
            } else {
                this.f5822a.a(this.f5822a.b(), x, y, true);
            }
            return true;
        } catch (Exception e2) {
            return true;
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    public void a(a aVar) {
        this.f5822a = aVar;
    }
}
