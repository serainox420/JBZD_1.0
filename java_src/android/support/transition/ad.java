package android.support.transition;

import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RestrictTo;
import android.support.transition.y;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: TransitionSetPort.java */
@TargetApi(14)
/* loaded from: classes.dex */
class ad extends y {
    int b;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<y> f162a = new ArrayList<>();
    boolean c = false;
    private boolean w = true;

    public ad a(int i) {
        switch (i) {
            case 0:
                this.w = true;
                break;
            case 1:
                this.w = false;
                break;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        }
        return this;
    }

    public ad a(y yVar) {
        if (yVar != null) {
            this.f162a.add(yVar);
            yVar.o = this;
            if (this.e >= 0) {
                yVar.a(this.e);
            }
        }
        return this;
    }

    @Override // android.support.transition.y
    /* renamed from: b */
    public ad a(long j) {
        super.a(j);
        if (this.e >= 0) {
            int size = this.f162a.size();
            for (int i = 0; i < size; i++) {
                this.f162a.get(i).a(j);
            }
        }
        return this;
    }

    @Override // android.support.transition.y
    /* renamed from: b */
    public ad a(TimeInterpolator timeInterpolator) {
        return (ad) super.a(timeInterpolator);
    }

    @Override // android.support.transition.y
    /* renamed from: c */
    public ad a(y.b bVar) {
        return (ad) super.a(bVar);
    }

    @Override // android.support.transition.y
    /* renamed from: d */
    public ad b(y.b bVar) {
        return (ad) super.b(bVar);
    }

    private void k() {
        a aVar = new a(this);
        Iterator<y> it = this.f162a.iterator();
        while (it.hasNext()) {
            it.next().a(aVar);
        }
        this.b = this.f162a.size();
    }

    @Override // android.support.transition.y
    @RestrictTo
    protected void a(ViewGroup viewGroup, af afVar, af afVar2) {
        Iterator<y> it = this.f162a.iterator();
        while (it.hasNext()) {
            it.next().a(viewGroup, afVar, afVar2);
        }
    }

    @Override // android.support.transition.y
    @RestrictTo
    protected void e() {
        if (this.f162a.isEmpty()) {
            f();
            g();
            return;
        }
        k();
        if (!this.w) {
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= this.f162a.size()) {
                    break;
                }
                final y yVar = this.f162a.get(i2);
                this.f162a.get(i2 - 1).a(new y.c() { // from class: android.support.transition.ad.1
                    @Override // android.support.transition.y.c, android.support.transition.y.b
                    public void a(y yVar2) {
                        yVar.e();
                        yVar2.b(this);
                    }
                });
                i = i2 + 1;
            }
            y yVar2 = this.f162a.get(0);
            if (yVar2 != null) {
                yVar2.e();
                return;
            }
            return;
        }
        Iterator<y> it = this.f162a.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // android.support.transition.y
    public void a(ae aeVar) {
        int id = aeVar.b.getId();
        if (a(aeVar.b, id)) {
            Iterator<y> it = this.f162a.iterator();
            while (it.hasNext()) {
                y next = it.next();
                if (next.a(aeVar.b, id)) {
                    next.a(aeVar);
                }
            }
        }
    }

    @Override // android.support.transition.y
    public void b(ae aeVar) {
        int id = aeVar.b.getId();
        if (a(aeVar.b, id)) {
            Iterator<y> it = this.f162a.iterator();
            while (it.hasNext()) {
                y next = it.next();
                if (next.a(aeVar.b, id)) {
                    next.b(aeVar);
                }
            }
        }
    }

    @Override // android.support.transition.y
    @RestrictTo
    public void a(View view) {
        super.a(view);
        int size = this.f162a.size();
        for (int i = 0; i < size; i++) {
            this.f162a.get(i).a(view);
        }
    }

    @Override // android.support.transition.y
    @RestrictTo
    public void b(View view) {
        super.b(view);
        int size = this.f162a.size();
        for (int i = 0; i < size; i++) {
            this.f162a.get(i).b(view);
        }
    }

    @Override // android.support.transition.y
    String a(String str) {
        String a2 = super.a(str);
        int i = 0;
        while (i < this.f162a.size()) {
            String str2 = a2 + "\n" + this.f162a.get(i).a(str + "  ");
            i++;
            a2 = str2;
        }
        return a2;
    }

    @Override // android.support.transition.y
    /* renamed from: j */
    public ad h() {
        ad adVar = (ad) super.clone();
        adVar.f162a = new ArrayList<>();
        int size = this.f162a.size();
        for (int i = 0; i < size; i++) {
            adVar.a(this.f162a.get(i).clone());
        }
        return adVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransitionSetPort.java */
    /* loaded from: classes.dex */
    public static class a extends y.c {

        /* renamed from: a  reason: collision with root package name */
        ad f164a;

        a(ad adVar) {
            this.f164a = adVar;
        }

        @Override // android.support.transition.y.c, android.support.transition.y.b
        public void d(y yVar) {
            if (!this.f164a.c) {
                this.f164a.f();
                this.f164a.c = true;
            }
        }

        @Override // android.support.transition.y.c, android.support.transition.y.b
        public void a(y yVar) {
            ad adVar = this.f164a;
            adVar.b--;
            if (this.f164a.b == 0) {
                this.f164a.c = false;
                this.f164a.g();
            }
            yVar.b(this);
        }
    }
}
