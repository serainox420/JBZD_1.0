package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes.dex */
public class AdViewControllerFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static AdViewControllerFactory f4513a = new AdViewControllerFactory();

    @Deprecated
    public static void setInstance(AdViewControllerFactory adViewControllerFactory) {
        f4513a = adViewControllerFactory;
    }

    public static AdViewController create(Context context, MoPubView moPubView) {
        return f4513a.a(context, moPubView);
    }

    protected AdViewController a(Context context, MoPubView moPubView) {
        return new AdViewController(context, moPubView);
    }
}
