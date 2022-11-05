package com.facebook.ads;

import android.content.Context;
import android.view.View;
import com.facebook.ads.internal.view.a;
/* loaded from: classes.dex */
public class NativeAdView {

    /* loaded from: classes.dex */
    public enum Type {
        HEIGHT_100(-1, 100),
        HEIGHT_120(-1, 120),
        HEIGHT_300(-1, 300),
        HEIGHT_400(-1, 400);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f2047a;
        private final int b;

        Type(int i, int i2) {
            this.f2047a = i;
            this.b = i2;
        }

        public int getHeight() {
            return this.b;
        }

        public int getValue() {
            switch (this.b) {
                case 100:
                    return 1;
                case 120:
                    return 2;
                case 300:
                    return 3;
                case 400:
                    return 4;
                default:
                    return -1;
            }
        }

        public int getWidth() {
            return this.f2047a;
        }
    }

    public static View render(Context context, NativeAd nativeAd, Type type) {
        return render(context, nativeAd, type, null);
    }

    public static View render(Context context, NativeAd nativeAd, Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAd.isNativeConfigEnabled()) {
            nativeAdViewAttributes = nativeAd.getAdViewAttributes();
        } else if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        nativeAd.a(type);
        return new a(context, nativeAd, type, nativeAdViewAttributes);
    }
}
