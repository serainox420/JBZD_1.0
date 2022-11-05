package com.flurry.sdk;

import com.flurry.sdk.d;
import java.util.List;
/* loaded from: classes2.dex */
public class t extends o {
    private static final String r = t.class.getSimpleName();
    private static int s = 0;
    public List<Integer> k;
    public List<String> l;
    public List<String> m;
    public List<String> n;
    public String o;
    public String p;
    public String q;
    private bj t;
    private a u;

    /* loaded from: classes2.dex */
    enum a {
        INIT,
        READY
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.o
    public final void a(d dVar) {
        if (d.a.kOnFetched.equals(dVar.b)) {
            if (this.h == null) {
                fh.a(this, bb.kMissingAdController);
                return;
            }
            p();
            this.t = new bj(this);
            synchronized (this) {
                this.u = a.READY;
            }
        }
        if (d.a.kOnAppExit.equals(dVar.b) && dVar.f2524a.equals(this)) {
            s();
        }
    }

    @Override // com.flurry.sdk.r
    public final boolean t() {
        if (!a.READY.equals(this.u)) {
            return false;
        }
        return this.i.n();
    }
}
