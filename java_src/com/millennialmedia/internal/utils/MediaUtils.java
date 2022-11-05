package com.millennialmedia.internal.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Base64;
import com.facebook.imagepipeline.common.RotationOptions;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.MMIntentWrapperActivity;
import com.millennialmedia.internal.utils.IOUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes3.dex */
public class MediaUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4177a = MediaUtils.class.getSimpleName();

    /* loaded from: classes3.dex */
    public interface PhotoListener {
        void onError(String str);

        void onPhoto(Uri uri);
    }

    /* loaded from: classes3.dex */
    public interface PlayVideoListener {
        void onError(String str);

        void onVideoStarted(Uri uri);
    }

    /* loaded from: classes3.dex */
    public interface SavePictureListener {
        void onError(String str);

        void onPictureSaved(File file);
    }

    public static void savePicture(final Context context, String str, String str2, final SavePictureListener savePictureListener) {
        File uniqueFileName;
        if (savePictureListener == null) {
            MMLog.e(f4177a, "PictureListener is required");
        } else if (!EnvironmentUtils.isExternalStorageWritable()) {
            savePictureListener.onError("Storage not mounted, cannot add image to photo library");
        } else if (str == null) {
            savePictureListener.onError("url is required");
        } else {
            Uri parse = Uri.parse(str);
            if (parse.getScheme().startsWith("http")) {
                File picturesDirectory = EnvironmentUtils.getPicturesDirectory();
                if (picturesDirectory == null) {
                    savePictureListener.onError("Cannot access pictures directory");
                    return;
                }
                if (str2 == null) {
                    uniqueFileName = IOUtils.getUniqueFileName(picturesDirectory, parse.getLastPathSegment());
                } else {
                    uniqueFileName = IOUtils.getUniqueFileName(picturesDirectory, str2);
                }
                if (uniqueFileName == null) {
                    savePictureListener.onError("Unable to store photo");
                    return;
                } else {
                    IOUtils.downloadFile(str, null, uniqueFileName, new IOUtils.DownloadListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.1
                        @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
                        public void onDownloadSucceeded(File file) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(MediaUtils.f4177a, "Picture downloaded to: " + file.getAbsolutePath());
                            }
                            MediaUtils.b(context, file, savePictureListener, true);
                        }

                        @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
                        public void onDownloadFailed(Throwable th) {
                            savePictureListener.onError("Unable to download file");
                        }
                    });
                    return;
                }
            }
            File file = new File(parse.getPath());
            if (!file.exists()) {
                savePictureListener.onError("No file found at " + file.getAbsolutePath());
            } else {
                b(context, file, savePictureListener, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, final File file, final SavePictureListener savePictureListener, final boolean z) {
        MediaScannerConnection.scanFile(context, new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.2
            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public void onScanCompleted(String str, Uri uri) {
                if (uri == null) {
                    if (z) {
                        file.delete();
                    }
                    savePictureListener.onError("Failed to scan file " + str);
                    return;
                }
                savePictureListener.onPictureSaved(file);
            }
        });
    }

    public static void startVideoPlayer(Context context, String str, PlayVideoListener playVideoListener) {
        if (playVideoListener == null) {
            MMLog.e(f4177a, "VideoListener is required");
        } else if (str == null) {
            playVideoListener.onError("url is required");
        } else {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(parse, "video/*");
            try {
                context.startActivity(intent);
                playVideoListener.onVideoStarted(parse);
            } catch (ActivityNotFoundException e) {
                playVideoListener.onError("No video application installed");
            }
        }
    }

    public static void getPhotoFromCamera(Context context, final PhotoListener photoListener) {
        if (photoListener == null) {
            MMLog.e(f4177a, "PhotoListener is required");
        } else if (!EnvironmentUtils.hasCamera()) {
            photoListener.onError("This device does not have a camera");
        } else {
            File picturesDirectory = EnvironmentUtils.getPicturesDirectory();
            if (picturesDirectory == null) {
                photoListener.onError("Cannot access pictures directory");
                return;
            }
            try {
                final File createTempFile = File.createTempFile("CAMERA_", ".tmp", picturesDirectory);
                Uri fromFile = Uri.fromFile(createTempFile);
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                intent.putExtra("output", fromFile);
                MMIntentWrapperActivity.launch(context, intent, new MMIntentWrapperActivity.MMIntentWrapperListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.3
                    @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                    public void onData(Intent intent2) {
                        if (createTempFile != null && createTempFile.exists()) {
                            photoListener.onPhoto(Uri.fromFile(createTempFile));
                            createTempFile.delete();
                            return;
                        }
                        photoListener.onError("Unable to get image from camera");
                    }

                    @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                    public void onError(String str) {
                        if (createTempFile != null && createTempFile.exists()) {
                            createTempFile.delete();
                        }
                        photoListener.onError(str);
                    }
                });
            } catch (IOException e) {
                photoListener.onError("Unable to create temporary file for picture");
            }
        }
    }

    public static void getPhotoFromGallery(Context context, final PhotoListener photoListener) {
        if (photoListener == null) {
            MMLog.e(f4177a, "PhotoListener is required");
        } else {
            MMIntentWrapperActivity.launch(context, b(), new MMIntentWrapperActivity.MMIntentWrapperListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.4
                @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                public void onData(Intent intent) {
                    Uri data;
                    if (intent != null && (data = intent.getData()) != null) {
                        PhotoListener.this.onPhoto(data);
                    } else {
                        PhotoListener.this.onError("Unable to get image from gallery");
                    }
                }

                @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                public void onError(String str) {
                    PhotoListener.this.onError(str);
                }
            });
        }
    }

    private static Intent b() {
        return new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    }

    public static boolean isPictureChooserAvailable() {
        if (EnvironmentUtils.isExternalStorageReadable()) {
            List<ResolveInfo> queryIntentActivities = EnvironmentUtils.getApplicationContext().getPackageManager().queryIntentActivities(b(), 65536);
            return queryIntentActivities != null && queryIntentActivities.size() > 0;
        }
        return false;
    }

    private static Bitmap a(Context context, Uri uri, BitmapFactory.Options options) throws Exception {
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
            IOUtils.closeStream(openInputStream);
            return decodeStream;
        } catch (Exception e) {
            MMLog.e(f4177a, "Bitmap file not found <" + uri.toString() + ">", e);
            throw e;
        }
    }

    public static String getMimeTypeFromUri(Context context, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            a(context, uri, options);
            return options.outMimeType;
        } catch (Exception e) {
            return null;
        }
    }

    private static int a(Context context, Uri uri) {
        String str;
        int i;
        String path = uri.getPath();
        Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        if (query != null) {
            str = query.moveToFirst() ? query.getString(query.getColumnIndex("_data")) : path;
            query.close();
        } else {
            str = path;
        }
        if (str != null) {
            try {
                switch (new ExifInterface(new File(str).getCanonicalPath()).getAttributeInt("Orientation", 1)) {
                    case 3:
                        i = RotationOptions.ROTATE_180;
                        break;
                    case 4:
                    case 5:
                    case 7:
                    default:
                        i = 0;
                        break;
                    case 6:
                        i = 90;
                        break;
                    case 8:
                        i = RotationOptions.ROTATE_270;
                        break;
                }
                return i;
            } catch (IOException e) {
                return 0;
            }
        }
        return 0;
    }

    public static Bitmap getScaledBitmapFromUri(Context context, Uri uri, int i, int i2, boolean z, boolean z2) {
        int i3;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            a(context, uri, options);
            if (z2) {
                int a2 = a(context, uri);
                if (a2 == 90 || a2 == 270) {
                    i3 = a2;
                    i = i2;
                    i2 = i;
                } else {
                    i3 = a2;
                }
            } else {
                i3 = 0;
            }
            options.inSampleSize = 1;
            if (options.outWidth > i || options.outHeight > i2) {
                int i4 = options.outWidth / 2;
                int i5 = options.outHeight / 2;
                while (i4 / options.inSampleSize > i && i5 / options.inSampleSize > i2) {
                    options.inSampleSize *= 2;
                }
            }
            options.inJustDecodeBounds = false;
            try {
                Bitmap a3 = a(context, uri, options);
                if (a3 == null || options.outWidth == 0 || options.outHeight == 0) {
                    MMLog.e(f4177a, "Failed to load bitmap <" + uri.toString() + ">");
                    return null;
                }
                float min = Math.min(1.0f, i / options.outWidth);
                float min2 = Math.min(1.0f, i2 / options.outHeight);
                if (z) {
                    min2 = Math.min(min, min2);
                    min = min2;
                }
                if (min == 1.0f && min2 == 1.0f && i3 == 0) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4177a, "Unscaled and unrotated bitmap: " + a3.getWidth() + " x " + a3.getHeight());
                        return a3;
                    }
                    return a3;
                }
                Matrix matrix = new Matrix();
                matrix.postScale(min, min2);
                if (i3 > 0) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4177a, "Rotating image " + i3 + " degrees");
                    }
                    matrix.postRotate(i3);
                }
                Bitmap createBitmap = Bitmap.createBitmap(a3, 0, 0, options.outWidth, options.outHeight, matrix, true);
                if (createBitmap == null) {
                    MMLog.e(f4177a, "Unable to create scaled bitmap");
                } else if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4177a, "Scaled and rotated bitmap: " + createBitmap.getWidth() + " x " + createBitmap.getHeight());
                }
                a3.recycle();
                return createBitmap;
            } catch (Exception e) {
                return null;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    public static String base64EncodeBitmap(Bitmap bitmap, String str) {
        Bitmap.CompressFormat compressFormat;
        if ("image/jpg".equalsIgnoreCase(str) || "image/jpeg".equalsIgnoreCase(str)) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        } else if ("image/webp".equalsIgnoreCase(str)) {
            compressFormat = Bitmap.CompressFormat.WEBP;
        } else {
            str = "image/png";
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (!bitmap.compress(compressFormat, 100, byteArrayOutputStream)) {
            MMLog.e(f4177a, "Unable to compress bitmap for encoding");
            return null;
        }
        return "data:" + str + ";base64," + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    }

    public static void setFileDescription(File file, String str) {
        if (str != null) {
            try {
                ExifInterface exifInterface = new ExifInterface(file.getCanonicalPath());
                exifInterface.setAttribute("UserComment", str);
                exifInterface.saveAttributes();
            } catch (IOException e) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4177a, "Cannot set description on media file <" + file.getAbsolutePath() + ">");
                }
            }
        }
    }
}
