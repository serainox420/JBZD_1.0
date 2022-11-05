package pl.aprilapps.easyphotopicker;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.content.FileProvider;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* compiled from: EasyImageFiles.java */
/* loaded from: classes3.dex */
class c {
    /* JADX INFO: Access modifiers changed from: private */
    public static String c(Context context) {
        return EasyImage.b(context).a();
    }

    private static File d(Context context) {
        File file = new File(context.getCacheDir(), "EasyImage");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static void a(InputStream inputStream, File file) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    inputStream.close();
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(File file, File file2) throws IOException {
        a(new FileInputStream(file), file2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final Context context, final List<File> list) {
        new Thread(new Runnable() { // from class: pl.aprilapps.easyphotopicker.c.1
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                for (File file : list) {
                    File file2 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), c.c(context));
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    File file3 = new File(file2, file.getName());
                    try {
                        file3.createNewFile();
                        c.b(file, file3);
                        arrayList.add(file3);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                c.b(context, arrayList);
            }
        }).run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<File> a(File file) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        return arrayList;
    }

    static void b(Context context, List<File> list) {
        String[] strArr = new String[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                strArr[i2] = list.get(i2).toString();
                i = i2 + 1;
            } else {
                MediaScannerConnection.scanFile(context, strArr, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: pl.aprilapps.easyphotopicker.c.2
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public void onScanCompleted(String str, Uri uri) {
                        timber.log.a.a("Scanned " + str + ":", new Object[0]);
                        timber.log.a.a("-> uri=" + uri, new Object[0]);
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File a(Context context, Uri uri) throws IOException {
        InputStream openInputStream = context.getContentResolver().openInputStream(uri);
        File file = new File(d(context), UUID.randomUUID().toString() + "." + b(context, uri));
        file.createNewFile();
        a(openInputStream, file);
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File a(Context context) throws IOException {
        return File.createTempFile(UUID.randomUUID().toString(), ".jpg", d(context));
    }

    private static String b(Context context, Uri uri) {
        if (uri.getScheme().equals("content")) {
            return MimeTypeMap.getSingleton().getExtensionFromMimeType(context.getContentResolver().getType(uri));
        }
        return MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(uri.getPath())).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri a(Context context, File file) {
        return FileProvider.a(context, context.getApplicationContext().getPackageName() + ".easyphotopicker.fileprovider", file);
    }
}
