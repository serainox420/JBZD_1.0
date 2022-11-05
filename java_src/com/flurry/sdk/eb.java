package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class eb implements lg<Bitmap> {
    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, Bitmap bitmap) throws IOException {
        Bitmap bitmap2 = bitmap;
        if (outputStream == null || bitmap2 == null) {
            return;
        }
        throw new UnsupportedOperationException("Serialization for bitmaps is not yet implemented");
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ Bitmap a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        return BitmapFactory.decodeStream(inputStream);
    }
}
