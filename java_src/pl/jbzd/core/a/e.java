package pl.jbzd.core.a;
/* compiled from: StringHelper.java */
/* loaded from: classes3.dex */
public final class e {
    public static String a(int i, String[] strArr) {
        if (i < 0 || strArr.length != 3) {
            return "error";
        }
        if (i == 1) {
            return strArr[0];
        }
        int i2 = i % 10;
        int i3 = i % 100;
        return (i2 <= 1 || i2 >= 5 || (i3 >= 5 && i3 <= 21)) ? strArr[2] : strArr[1];
    }
}
