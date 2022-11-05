package android.support.design.widget;

import android.support.design.widget.r;
import android.util.StateSet;
import java.util.ArrayList;
/* compiled from: StateListAnimator.java */
/* loaded from: classes.dex */
final class p {
    private final ArrayList<a> b = new ArrayList<>();
    private a c = null;

    /* renamed from: a  reason: collision with root package name */
    r f128a = null;
    private final r.a d = new r.b() { // from class: android.support.design.widget.p.1
        @Override // android.support.design.widget.r.b, android.support.design.widget.r.a
        public void b(r rVar) {
            if (p.this.f128a == rVar) {
                p.this.f128a = null;
            }
        }
    };

    public void a(int[] iArr, r rVar) {
        a aVar = new a(iArr, rVar);
        rVar.a(this.d);
        this.b.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr) {
        a aVar;
        int size = this.b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.b.get(i);
            if (StateSet.stateSetMatches(aVar.f130a, iArr)) {
                break;
            }
            i++;
        }
        if (aVar != this.c) {
            if (this.c != null) {
                b();
            }
            this.c = aVar;
            if (aVar != null) {
                a(aVar);
            }
        }
    }

    private void a(a aVar) {
        this.f128a = aVar.b;
        this.f128a.a();
    }

    private void b() {
        if (this.f128a != null) {
            this.f128a.e();
            this.f128a = null;
        }
    }

    public void a() {
        if (this.f128a != null) {
            this.f128a.g();
            this.f128a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StateListAnimator.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final int[] f130a;
        final r b;

        a(int[] iArr, r rVar) {
            this.f130a = iArr;
            this.b = rVar;
        }
    }
}
