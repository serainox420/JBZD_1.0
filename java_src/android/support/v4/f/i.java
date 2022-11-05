package android.support.v4.f;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* compiled from: Pair.java */
/* loaded from: classes.dex */
public class i<F, S> {

    /* renamed from: a  reason: collision with root package name */
    public final F f325a;
    public final S b;

    public i(F f, S s) {
        this.f325a = f;
        this.b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return a(iVar.f325a, this.f325a) && a(iVar.b, this.b);
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f325a == null ? 0 : this.f325a.hashCode();
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f325a) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + String.valueOf(this.b) + "}";
    }
}
