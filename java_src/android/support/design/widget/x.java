package android.support.design.widget;

import android.graphics.PorterDuff;
import android.os.Build;
import android.support.design.widget.r;
/* compiled from: ViewUtils.java */
/* loaded from: classes.dex */
class x {

    /* renamed from: a  reason: collision with root package name */
    static final r.d f143a = new r.d() { // from class: android.support.design.widget.x.1
        @Override // android.support.design.widget.r.d
        public r a() {
            return new r(Build.VERSION.SDK_INT >= 12 ? new t() : new s());
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r a() {
        return f143a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PorterDuff.Mode a(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            default:
                return mode;
        }
    }
}
