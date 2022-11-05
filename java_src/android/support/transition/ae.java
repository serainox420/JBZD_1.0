package android.support.transition;

import android.view.View;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: TransitionValues.java */
/* loaded from: classes.dex */
public class ae {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, Object> f165a = new HashMap();
    public View b;

    public boolean equals(Object obj) {
        return (obj instanceof ae) && this.b == ((ae) obj).b && this.f165a.equals(((ae) obj).f165a);
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.f165a.hashCode();
    }

    public String toString() {
        String next;
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.b + "\n") + "    values:";
        Iterator<String> it = this.f165a.keySet().iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                str = str2 + "    " + it.next() + ": " + this.f165a.get(next) + "\n";
            } else {
                return str2;
            }
        }
    }
}
