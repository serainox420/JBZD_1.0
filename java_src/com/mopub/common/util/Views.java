package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ai;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3.dex */
public class Views {
    public static void removeFromParent(View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public static View getTopmostView(Context context, View view) {
        View a2 = a(context);
        return a2 != null ? a2 : a(view);
    }

    private static View a(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        return ((Activity) context).getWindow().getDecorView().findViewById(16908290);
    }

    private static View a(View view) {
        if (view == null) {
            return null;
        }
        if (!ai.H(view)) {
            MoPubLog.d("Attempting to call View#getRootView() on an unattached View.");
        }
        View rootView = view.getRootView();
        if (rootView == null) {
            return null;
        }
        View findViewById = rootView.findViewById(16908290);
        return findViewById == null ? rootView : findViewById;
    }
}
