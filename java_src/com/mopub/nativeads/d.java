package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.WeakHashMap;
/* compiled from: NativeAdViewHelper.java */
@Deprecated
/* loaded from: classes.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private static final WeakHashMap<View, NativeAd> f4629a = new WeakHashMap<>();

    /* compiled from: NativeAdViewHelper.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    enum a {
        EMPTY,
        AD
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static View a(View view, ViewGroup viewGroup, Context context, NativeAd nativeAd) {
        if (view != null) {
            a(view);
        }
        if (nativeAd == null || nativeAd.isDestroyed()) {
            MoPubLog.d("NativeAd null or invalid. Returning empty view");
            if (view == null || !a.EMPTY.equals(view.getTag())) {
                View view2 = new View(context);
                view2.setTag(a.EMPTY);
                view2.setVisibility(8);
                return view2;
            }
            return view;
        }
        if (view == null || !a.AD.equals(view.getTag())) {
            view = nativeAd.createAdView(context, viewGroup);
            view.setTag(a.AD);
        }
        a(view, nativeAd);
        nativeAd.renderAdView(view);
        return view;
    }

    private static void a(View view) {
        NativeAd nativeAd = f4629a.get(view);
        if (nativeAd != null) {
            nativeAd.clear(view);
        }
    }

    private static void a(View view, NativeAd nativeAd) {
        f4629a.put(view, nativeAd);
        nativeAd.prepare(view);
    }
}
