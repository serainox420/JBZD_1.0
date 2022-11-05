package com.inmobi.re.controller.util;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.configs.Initializer;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes2.dex */
public class ImageProcessing {
    public static String getBase64EncodedImage(Bitmap bitmap, Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, getDefaultImgQuality(context), byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    public static String convertMediaUriToPath(Uri uri, Context context) {
        Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        int columnIndexOrThrow = query.getColumnIndexOrThrow("_data");
        query.moveToFirst();
        String string = query.getString(columnIndexOrThrow);
        query.close();
        return string;
    }

    public static int getDefaultImgWidth(Context context) {
        return Initializer.getConfigParams().getPicWidth();
    }

    public static int getDefaultImgHeight(Context context) {
        return Initializer.getConfigParams().getPicHeight();
    }

    public static int getDefaultImgQuality(Context context) {
        return Initializer.getConfigParams().getPicQuality();
    }

    public static Bitmap getCompressedBitmap(String str, Context context) {
        Bitmap decodeStream;
        try {
            int defaultImgHeight = getDefaultImgHeight(context) * getDefaultImgWidth(context);
            FileInputStream fileInputStream = new FileInputStream(str);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream, null, options);
            fileInputStream.close();
            int i = 1;
            while (options.outWidth * options.outHeight * (1.0d / Math.pow(i, 2.0d)) > defaultImgHeight) {
                i++;
            }
            FileInputStream fileInputStream2 = new FileInputStream(str);
            if (i > 1) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = i - 1;
                Bitmap decodeStream2 = BitmapFactory.decodeStream(fileInputStream2, null, options2);
                int height = decodeStream2.getHeight();
                int width = decodeStream2.getWidth();
                double sqrt = Math.sqrt(defaultImgHeight / (width / height));
                decodeStream = Bitmap.createScaledBitmap(decodeStream2, (int) ((sqrt / height) * width), (int) sqrt, true);
                decodeStream2.recycle();
                System.gc();
            } else {
                decodeStream = BitmapFactory.decodeStream(fileInputStream2);
            }
            fileInputStream2.close();
            Log.debug(Constants.RENDERING_LOG_TAG, "bitmap size - width: " + decodeStream.getWidth() + ", height: " + decodeStream.getHeight());
            return decodeStream;
        } catch (IOException e) {
            Log.debug(Constants.RENDERING_LOG_TAG, e.getMessage(), e);
            return null;
        }
    }
}
