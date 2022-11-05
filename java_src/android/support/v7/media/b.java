package android.support.v7.media;

import android.os.Bundle;
/* compiled from: MediaRouteDiscoveryRequest.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f646a;
    private f b;

    public b(f fVar, boolean z) {
        if (fVar == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        this.f646a = new Bundle();
        this.b = fVar;
        this.f646a.putBundle("selector", fVar.e());
        this.f646a.putBoolean("activeScan", z);
    }

    private b(Bundle bundle) {
        this.f646a = bundle;
    }

    public f a() {
        e();
        return this.b;
    }

    private void e() {
        if (this.b == null) {
            this.b = f.a(this.f646a.getBundle("selector"));
            if (this.b == null) {
                this.b = f.b;
            }
        }
    }

    public boolean b() {
        return this.f646a.getBoolean("activeScan");
    }

    public boolean c() {
        e();
        return this.b.d();
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            return a().equals(bVar.a()) && b() == bVar.b();
        }
        return false;
    }

    public int hashCode() {
        return (b() ? 1 : 0) ^ a().hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DiscoveryRequest{ selector=").append(a());
        sb.append(", activeScan=").append(b());
        sb.append(", isValid=").append(c());
        sb.append(" }");
        return sb.toString();
    }

    public Bundle d() {
        return this.f646a;
    }

    public static b a(Bundle bundle) {
        if (bundle != null) {
            return new b(bundle);
        }
        return null;
    }
}
