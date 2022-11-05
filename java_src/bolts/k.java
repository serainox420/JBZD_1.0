package bolts;

import bolts.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnobservedErrorNotifier.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private i<?> f948a;

    public k(i<?> iVar) {
        this.f948a = iVar;
    }

    protected void finalize() throws Throwable {
        i.b a2;
        try {
            i<?> iVar = this.f948a;
            if (iVar != null && (a2 = i.a()) != null) {
                a2.a(iVar, new UnobservedTaskException(iVar.g()));
            }
        } finally {
            super.finalize();
        }
    }

    public void a() {
        this.f948a = null;
    }
}
