package com.amazon.device.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
/* loaded from: classes.dex */
interface ImageViewFactory {
    BitmapDrawable createBitmapDrawable(Resources resources, String str);

    /* renamed from: createImageView */
    ImageView mo31createImageView(Context context, String str);
}
