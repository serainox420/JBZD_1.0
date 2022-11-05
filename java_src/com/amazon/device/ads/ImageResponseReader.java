package com.amazon.device.ads;

import android.graphics.Bitmap;
/* loaded from: classes.dex */
class ImageResponseReader extends ResponseReader {
    final GraphicsUtils graphicsUtils;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageResponseReader(ResponseReader responseReader, GraphicsUtils graphicsUtils) {
        super(responseReader.getInputStream());
        this.graphicsUtils = graphicsUtils;
    }

    public Bitmap readAsBitmap() {
        return this.graphicsUtils.createBitmapImage(getInputStream());
    }
}
