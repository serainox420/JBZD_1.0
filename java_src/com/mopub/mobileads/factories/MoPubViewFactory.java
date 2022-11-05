package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes.dex */
public class MoPubViewFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static MoPubViewFactory f4520a = new MoPubViewFactory();

    @VisibleForTesting
    @Deprecated
    public static void setInstance(MoPubViewFactory moPubViewFactory) {
        f4520a = moPubViewFactory;
    }

    public static MoPubView create(Context context) {
        return f4520a.a(context);
    }

    protected MoPubView a(Context context) {
        return new MoPubView(context);
    }
}
