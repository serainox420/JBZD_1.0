package com.moat.analytics.mobile.aol;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.aol.NoOp;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
/* loaded from: classes.dex */
public abstract class MoatFactory {
    public abstract <T> T createCustomTracker(MoatPlugin<T> moatPlugin);

    public abstract NativeDisplayTracker createNativeDisplayTracker(View view, String str);

    public abstract NativeVideoTracker createNativeVideoTracker(String str);

    public abstract WebAdTracker createWebAdTracker(ViewGroup viewGroup);

    public abstract WebAdTracker createWebAdTracker(WebView webView);

    @Deprecated
    public abstract WebAdTracker createWebDisplayTracker(ViewGroup viewGroup);

    @Deprecated
    public abstract WebAdTracker createWebDisplayTracker(WebView webView);

    public static MoatFactory create(Activity activity) {
        try {
            return new MoatFactoryImpl(activity);
        } catch (Exception e) {
            Exceptions.handleException(e);
            return new NoOp.MoatFactory();
        }
    }
}
