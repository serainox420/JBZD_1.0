package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.zzbkd;
/* loaded from: classes2.dex */
final class zza {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Rect zza(Text text) {
        Point[] cornerPoints;
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        for (Point point : text.getCornerPoints()) {
            i4 = Math.min(i4, point.x);
            i3 = Math.max(i3, point.x);
            i = Math.min(i, point.y);
            i2 = Math.max(i2, point.y);
        }
        return new Rect(i4, i, i3, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Point[] zza(zzbkd zzbkdVar) {
        double sin = Math.sin(Math.toRadians(zzbkdVar.zzbPv));
        double cos = Math.cos(Math.toRadians(zzbkdVar.zzbPv));
        Point[] pointArr = {new Point(zzbkdVar.left, zzbkdVar.top), new Point((int) (zzbkdVar.left + (zzbkdVar.width * cos)), (int) (zzbkdVar.top + (zzbkdVar.width * sin))), new Point((int) (pointArr[1].x - (sin * zzbkdVar.height)), (int) ((cos * zzbkdVar.height) + pointArr[1].y)), new Point(pointArr[0].x + (pointArr[2].x - pointArr[1].x), pointArr[0].y + (pointArr[2].y - pointArr[1].y))};
        return pointArr;
    }
}
