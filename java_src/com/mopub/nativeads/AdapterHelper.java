package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
@Deprecated
/* loaded from: classes.dex */
public final class AdapterHelper {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f4576a;
    private final Context b;
    private final int c;
    private final int d;

    @Deprecated
    public AdapterHelper(Context context, int i, int i2) {
        boolean z = true;
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkArgument(i >= 0, "start position must be non-negative");
        Preconditions.checkArgument(i2 < 2 ? false : z, "interval must be at least 2");
        this.f4576a = new WeakReference<>(context);
        this.b = context.getApplicationContext();
        this.c = i;
        this.d = i2;
    }

    @Deprecated
    public View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd, ViewBinder viewBinder) {
        Context context = this.f4576a.get();
        if (context == null) {
            MoPubLog.w("Weak reference to Context in AdapterHelper became null. Returning empty view.");
            return new View(this.b);
        }
        return d.a(view, viewGroup, context, nativeAd);
    }

    @Deprecated
    public View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd) {
        return getAdView(view, viewGroup, nativeAd, null);
    }

    @Deprecated
    public int shiftedCount(int i) {
        return b(i) + i;
    }

    @Deprecated
    public int shiftedPosition(int i) {
        return i - a(i);
    }

    @Deprecated
    public boolean isAdPosition(int i) {
        return i >= this.c && (i - this.c) % this.d == 0;
    }

    private int a(int i) {
        if (i <= this.c) {
            return 0;
        }
        return ((int) Math.floor((i - this.c) / this.d)) + 1;
    }

    private int b(int i) {
        if (i <= this.c) {
            return 0;
        }
        int i2 = this.d - 1;
        if ((i - this.c) % i2 == 0) {
            return (i - this.c) / i2;
        }
        return ((int) Math.floor((i - this.c) / i2)) + 1;
    }
}
