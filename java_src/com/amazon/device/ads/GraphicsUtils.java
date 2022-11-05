package com.amazon.device.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.provider.MediaStore;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GraphicsUtils {
    private static final String LOGTAG = GraphicsUtils.class.getSimpleName();
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    public Bitmap createBitmapImage(InputStream inputStream) {
        if (inputStream != null) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 32768);
            bufferedInputStream.mark(32768);
            Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream);
            try {
                bufferedInputStream.close();
                return decodeStream;
            } catch (IOException e) {
                this.logger.e("IOException while trying to close the input stream.");
                return decodeStream;
            }
        }
        return null;
    }

    public String insertImageInMediaStore(Context context, Bitmap bitmap, String str, String str2) {
        return MediaStore.Images.Media.insertImage(context.getContentResolver(), bitmap, str, str2);
    }
}
