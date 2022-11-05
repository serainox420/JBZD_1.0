package android.support.v7.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ListView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
final class OverlayListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f563a;

    public OverlayListView(Context context) {
        super(context);
        this.f563a = new ArrayList();
    }

    public OverlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f563a = new ArrayList();
    }

    public OverlayListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f563a = new ArrayList();
    }

    public void a(a aVar) {
        this.f563a.add(aVar);
    }

    public void a() {
        for (a aVar : this.f563a) {
            if (!aVar.b()) {
                aVar.b(getDrawingTime());
            }
        }
    }

    public void b() {
        for (a aVar : this.f563a) {
            aVar.c();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f563a.size() > 0) {
            Iterator<a> it = this.f563a.iterator();
            while (it.hasNext()) {
                a next = it.next();
                BitmapDrawable a2 = next.a();
                if (a2 != null) {
                    a2.draw(canvas);
                }
                if (!next.c(getDrawingTime())) {
                    it.remove();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private BitmapDrawable f564a;
        private Rect c;
        private Interpolator d;
        private long e;
        private Rect f;
        private int g;
        private long j;
        private boolean k;
        private boolean l;
        private InterfaceC0035a m;
        private float b = 1.0f;
        private float h = 1.0f;
        private float i = 1.0f;

        /* renamed from: android.support.v7.app.OverlayListView$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0035a {
            void a();
        }

        public a(BitmapDrawable bitmapDrawable, Rect rect) {
            this.f564a = bitmapDrawable;
            this.f = rect;
            this.c = new Rect(rect);
            if (this.f564a != null && this.c != null) {
                this.f564a.setAlpha((int) (this.b * 255.0f));
                this.f564a.setBounds(this.c);
            }
        }

        public BitmapDrawable a() {
            return this.f564a;
        }

        public boolean b() {
            return this.k;
        }

        public a a(float f, float f2) {
            this.h = f;
            this.i = f2;
            return this;
        }

        public a a(int i) {
            this.g = i;
            return this;
        }

        public a a(long j) {
            this.e = j;
            return this;
        }

        public a a(Interpolator interpolator) {
            this.d = interpolator;
            return this;
        }

        public a a(InterfaceC0035a interfaceC0035a) {
            this.m = interfaceC0035a;
            return this;
        }

        public void b(long j) {
            this.j = j;
            this.k = true;
        }

        public void c() {
            this.k = true;
            this.l = true;
            if (this.m != null) {
                this.m.a();
            }
        }

        public boolean c(long j) {
            float f = BitmapDescriptorFactory.HUE_RED;
            if (this.l) {
                return false;
            }
            float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, ((float) (j - this.j)) / ((float) this.e)));
            if (this.k) {
                f = max;
            }
            float interpolation = this.d == null ? f : this.d.getInterpolation(f);
            int i = (int) (this.g * interpolation);
            this.c.top = this.f.top + i;
            this.c.bottom = i + this.f.bottom;
            this.b = (interpolation * (this.i - this.h)) + this.h;
            if (this.f564a != null && this.c != null) {
                this.f564a.setAlpha((int) (this.b * 255.0f));
                this.f564a.setBounds(this.c);
            }
            if (this.k && f >= 1.0f) {
                this.l = true;
                if (this.m != null) {
                    this.m.a();
                }
            }
            return !this.l;
        }
    }
}
