package com.video.adsdk.utils;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes3.dex */
public class ViewGroupUtils {
    public static ViewGroup getParent(View view) {
        return (ViewGroup) view.getParent();
    }

    public static void removeView(View view) {
        ViewGroup parent = getParent(view);
        if (parent != null) {
            parent.removeView(view);
        }
    }

    public static void replaceView(View view, View view2) {
        ViewGroup parent = getParent(view);
        if (parent != null) {
            int indexOfChild = parent.indexOfChild(view);
            removeView(view);
            removeView(view2);
            parent.addView(view2, indexOfChild);
        }
    }
}
