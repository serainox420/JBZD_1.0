package com.flurry.sdk;

import android.graphics.Point;
import android.util.SparseArray;
import com.intentsoftware.addapptr.AATKit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class cg {

    /* renamed from: a  reason: collision with root package name */
    private static final List<Integer> f2504a;
    private static final SparseArray<Point> b;

    public static int a(Point point) {
        for (Integer num : f2504a) {
            Point a2 = a(num.intValue());
            if (a2 != null && point.x >= a2.x && point.y >= a2.y) {
                return num.intValue();
            }
        }
        return -1;
    }

    public static Point a(int i) {
        return b.get(i);
    }

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(11);
        arrayList.add(12);
        arrayList.add(15);
        arrayList.add(10);
        arrayList.add(13);
        f2504a = Collections.unmodifiableList(arrayList);
        SparseArray<Point> sparseArray = new SparseArray<>();
        sparseArray.put(11, new Point(728, 90));
        sparseArray.put(12, new Point(468, 60));
        sparseArray.put(15, new Point(320, 50));
        sparseArray.put(10, new Point(300, 250));
        sparseArray.put(13, new Point(120, AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS));
        b = sparseArray;
    }
}
