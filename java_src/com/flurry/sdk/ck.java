package com.flurry.sdk;

import android.graphics.Point;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class ck {

    /* renamed from: a  reason: collision with root package name */
    private static final List<Integer> f2508a;
    private static final SparseArray<Point> b;

    public static int a(Point point) {
        for (Integer num : f2508a) {
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
        arrayList.add(4);
        arrayList.add(3);
        arrayList.add(1);
        arrayList.add(2);
        f2508a = Collections.unmodifiableList(arrayList);
        SparseArray<Point> sparseArray = new SparseArray<>();
        sparseArray.put(4, new Point(728, 90));
        sparseArray.put(3, new Point(480, 60));
        sparseArray.put(1, new Point(320, 50));
        sparseArray.put(2, new Point(300, 250));
        b = sparseArray;
    }
}
