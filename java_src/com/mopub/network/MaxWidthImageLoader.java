package com.mopub.network;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes3.dex */
public class MaxWidthImageLoader extends ImageLoader {

    /* renamed from: a  reason: collision with root package name */
    private final int f4651a;

    @TargetApi(13)
    public MaxWidthImageLoader(RequestQueue requestQueue, Context context, ImageLoader.ImageCache imageCache) {
        super(requestQueue, imageCache);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT < 13) {
            point.set(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        } else {
            defaultDisplay.getSize(point);
        }
        this.f4651a = Math.min(point.x, point.y);
    }

    @Override // com.mopub.volley.toolbox.ImageLoader
    public ImageLoader.ImageContainer get(String str, ImageLoader.ImageListener imageListener) {
        return super.get(str, imageListener, this.f4651a, 0);
    }
}
