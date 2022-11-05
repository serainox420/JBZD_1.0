package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import java.util.List;
/* loaded from: classes2.dex */
public interface Text {
    Rect getBoundingBox();

    List<? extends Text> getComponents();

    Point[] getCornerPoints();

    String getValue();
}
