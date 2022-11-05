package android.support.design.internal;

import android.support.transition.t;
import android.support.transition.z;
import android.view.ViewGroup;
/* compiled from: BottomNavigationAnimationHelperIcs.java */
/* loaded from: classes.dex */
class b extends a {

    /* renamed from: a  reason: collision with root package name */
    private final z f31a = new android.support.transition.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public b() {
        this.f31a.a(0);
        this.f31a.a(115L);
        this.f31a.a(new android.support.v4.view.b.b());
        this.f31a.a(new g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.internal.a
    public void a(ViewGroup viewGroup) {
        t.a(viewGroup, this.f31a);
    }
}
