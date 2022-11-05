package com.facebook.ads.internal.b;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Vector;
/* loaded from: classes.dex */
public class e {
    public static double a(View view, Context context) {
        if (a(context) && d(view)) {
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                return 0.0d;
            }
            Vector<Rect> a2 = a(view);
            int a3 = a(a2);
            a2.add(rect);
            return ((a(a2) - a3) * 1.0d) / (view.getMeasuredHeight() * view.getMeasuredWidth());
        }
        return 0.0d;
    }

    private static int a(Vector<Rect> vector) {
        int size = vector.size();
        int[] iArr = new int[size * 2];
        int[] iArr2 = new int[size * 2];
        boolean[][] zArr = (boolean[][]) Array.newInstance(Boolean.TYPE, size * 2, size * 2);
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Rect elementAt = vector.elementAt(i3);
            int i4 = i2 + 1;
            iArr[i2] = elementAt.left;
            int i5 = i + 1;
            iArr2[i] = elementAt.bottom;
            i2 = i4 + 1;
            iArr[i4] = elementAt.right;
            i = i5 + 1;
            iArr2[i5] = elementAt.top;
        }
        Arrays.sort(iArr);
        Arrays.sort(iArr2);
        for (int i6 = 0; i6 < size; i6++) {
            Rect elementAt2 = vector.elementAt(i6);
            int a2 = a(iArr, elementAt2.left);
            int a3 = a(iArr, elementAt2.right);
            int a4 = a(iArr2, elementAt2.top);
            int a5 = a(iArr2, elementAt2.bottom);
            for (int i7 = a2 + 1; i7 <= a3; i7++) {
                for (int i8 = a4 + 1; i8 <= a5; i8++) {
                    zArr[i7][i8] = true;
                }
            }
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < size * 2) {
            int i11 = i10;
            for (int i12 = 0; i12 < size * 2; i12++) {
                i11 += zArr[i9][i12] ? (iArr[i9] - iArr[i9 - 1]) * (iArr2[i12] - iArr2[i12 - 1]) : 0;
            }
            i9++;
            i10 = i11;
        }
        return i10;
    }

    private static int a(int[] iArr, int i) {
        int i2;
        int i3 = 0;
        int length = iArr.length;
        while (i3 < length) {
            int i4 = ((length - i3) / 2) + i3;
            if (iArr[i4] == i) {
                return i4;
            }
            if (iArr[i4] > i) {
                i2 = i3;
            } else {
                int i5 = length;
                i2 = i4 + 1;
                i4 = i5;
            }
            i3 = i2;
            length = i4;
        }
        return -1;
    }

    private static Vector<Rect> a(View view) {
        Vector<Rect> vector = new Vector<>();
        if (!(view.getParent() instanceof ViewGroup)) {
            return vector;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int indexOfChild = viewGroup.indexOfChild(view);
        while (true) {
            indexOfChild++;
            if (indexOfChild >= viewGroup.getChildCount()) {
                vector.addAll(a(viewGroup));
                return vector;
            }
            vector.addAll(b(viewGroup.getChildAt(indexOfChild)));
        }
    }

    private static boolean a(Context context) {
        boolean z;
        Window window;
        if (context == null) {
            return true;
        }
        try {
            if (!((PowerManager) context.getSystemService("power")).isScreenOn()) {
                return false;
            }
            if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null) {
                z = false;
            } else {
                int i = window.getAttributes().flags;
                z = ((4194304 & i) == 0 && (i & 524288) == 0) ? false : true;
            }
            return !((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode() || z;
        } catch (Exception e) {
            return false;
        }
    }

    private static Vector<Rect> b(View view) {
        Vector<Rect> vector = new Vector<>();
        if (!view.isShown() || (Build.VERSION.SDK_INT >= 11 && view.getAlpha() <= BitmapDescriptorFactory.HUE_RED)) {
            return vector;
        }
        if (!(view instanceof ViewGroup) || !c(view)) {
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect)) {
                vector.add(rect);
            }
            return vector;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            vector.addAll(b(viewGroup.getChildAt(i)));
        }
        return vector;
    }

    private static boolean c(View view) {
        return view.getBackground() == null || (Build.VERSION.SDK_INT >= 19 && view.getBackground().getAlpha() <= 0);
    }

    private static boolean d(View view) {
        if (view != null && view.isShown() && view.getWindowVisibility() == 0 && view.getVisibility() == 0 && view.getMeasuredWidth() > 0 && view.getMeasuredHeight() > 0) {
            return Build.VERSION.SDK_INT < 11 || view.getAlpha() >= 0.9f;
        }
        return false;
    }
}
