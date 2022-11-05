package com.flurry.sdk;
/* loaded from: classes2.dex */
public final class lu {

    /* renamed from: a  reason: collision with root package name */
    long f3041a = 1000;
    boolean b = true;
    boolean c = false;
    ma d = new ma() { // from class: com.flurry.sdk.lu.1
        @Override // com.flurry.sdk.ma
        public final void a() {
            ki.a().a(new ls());
            if (lu.this.b && lu.this.c) {
                jy.a().a(lu.this.d, lu.this.f3041a);
            }
        }
    };

    public final synchronized void a() {
        if (!this.c) {
            jy.a().a(this.d, this.f3041a);
            this.c = true;
        }
    }

    public final synchronized void b() {
        if (this.c) {
            jy a2 = jy.a();
            ma maVar = this.d;
            if (maVar != null) {
                a2.c.removeCallbacks(maVar);
            }
            this.c = false;
        }
    }
}
