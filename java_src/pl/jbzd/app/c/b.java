package pl.jbzd.app.c;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.MediaStore;
import android.text.format.DateFormat;
import android.util.Log;
import com.commit451.youtubeextractor.YouTubeExtractionResult;
import com.commit451.youtubeextractor.e;
import com.facebook.common.executors.CallerThreadExecutor;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.datasource.BaseBitmapDataSubscriber;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.loopme.common.VideoUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import pl.jbzd.R;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: DownloadUtils.java */
/* loaded from: classes3.dex */
public final class b {

    /* compiled from: DownloadUtils.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(File file);

        void a(String str);
    }

    public static void a(final Context context, String str, final File file, final a aVar) {
        Fresco.getImagePipeline().fetchDecodedImage(ImageRequestBuilder.newBuilderWithSource(Uri.parse(str)).build(), context).subscribe(new BaseBitmapDataSubscriber() { // from class: pl.jbzd.app.c.b.1
            @Override // com.facebook.imagepipeline.datasource.BaseBitmapDataSubscriber
            public void onNewResultImpl(Bitmap bitmap) {
                File file2 = new File(file, b.b() + ".jpg");
                if (file2.exists()) {
                    file2.delete();
                }
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
                    contentValues.put("mime_type", "image/jpeg");
                    contentValues.put("_data", file2.getAbsolutePath());
                    if (context != null) {
                        context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                    }
                    if (aVar != null) {
                        aVar.a(file2);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (context != null && aVar != null) {
                        aVar.a(context.getString(R.string.error_save_image_canceled));
                    }
                }
            }

            @Override // com.facebook.datasource.BaseDataSubscriber
            public void onFailureImpl(DataSource<CloseableReference<CloseableImage>> dataSource) {
                Throwable failureCause = dataSource.getFailureCause();
                if (failureCause != null) {
                    Log.e(b.class.getSimpleName(), failureCause.getMessage());
                }
                if (context != null && aVar != null) {
                    aVar.a(context.getString(R.string.error_save_image_canceled));
                }
            }
        }, CallerThreadExecutor.getInstance());
    }

    public static void b(final Context context, String str, final File file, final a aVar) {
        e.b().a(str).enqueue(new Callback<YouTubeExtractionResult>() { // from class: pl.jbzd.app.c.b.2
            @Override // retrofit2.Callback
            public void onResponse(Call<YouTubeExtractionResult> call, Response<YouTubeExtractionResult> response) {
                Uri e = response.body().e();
                if (e == null) {
                    if (context != null && aVar != null) {
                        aVar.a(context.getString(R.string.error_save_image_canceled));
                        return;
                    }
                    return;
                }
                b.c(context, e.toString(), file, aVar);
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<YouTubeExtractionResult> call, Throwable th) {
                th.printStackTrace();
                if (context != null && aVar != null) {
                    aVar.a(context.getString(R.string.error_save_image_canceled));
                }
            }
        });
    }

    public static void c(final Context context, String str, File file, final a aVar) {
        new c(context, file, new a() { // from class: pl.jbzd.app.c.b.3
            @Override // pl.jbzd.app.c.b.a
            public void a(File file2) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("mime_type", "video/mp4");
                contentValues.put("_data", file2.getAbsolutePath());
                if (context != null) {
                    context.getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
                }
                if (aVar != null) {
                    aVar.a(file2);
                }
            }

            @Override // pl.jbzd.app.c.b.a
            public void a(String str2) {
                if (aVar != null) {
                    aVar.a(str2);
                }
            }
        }).execute(new String[]{str});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b() {
        return DateFormat.format("yyyyMMdd_HHmmss", new Date()).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DownloadUtils.java */
    /* loaded from: classes3.dex */
    public static class c extends AbstractAsyncTaskC0600b {
        public c(Context context, File file, a aVar) {
            super(context, file, aVar);
        }

        @Override // pl.jbzd.app.c.b.AbstractAsyncTaskC0600b
        protected File a(File file, String str) {
            FileOutputStream fileOutputStream;
            ByteArrayOutputStream byteArrayOutputStream;
            BufferedInputStream bufferedInputStream;
            InputStream inputStream;
            Throwable th;
            Exception e;
            File file2 = null;
            try {
                try {
                    URLConnection openConnection = new URL(str).openConnection();
                    File file3 = new File(file, b.b() + VideoUtils.MP4_FORMAT);
                    inputStream = openConnection.getInputStream();
                    try {
                        bufferedInputStream = new BufferedInputStream(inputStream);
                        try {
                            byteArrayOutputStream = new ByteArrayOutputStream();
                        } catch (Exception e2) {
                            e = e2;
                            fileOutputStream = null;
                            byteArrayOutputStream = null;
                        } catch (Throwable th2) {
                            fileOutputStream = null;
                            byteArrayOutputStream = null;
                            th = th2;
                        }
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = bufferedInputStream.read(bArr, 0, bArr.length);
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                            fileOutputStream = new FileOutputStream(file3);
                            try {
                                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        file2 = file3;
                                    } catch (Exception e3) {
                                        file2 = file3;
                                        e = e3;
                                        e.printStackTrace();
                                        return file2;
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.flush();
                                        byteArrayOutputStream.close();
                                    } catch (Exception e4) {
                                        e = e4;
                                        e.printStackTrace();
                                        return file2;
                                    }
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } catch (Exception e5) {
                                e = e5;
                                e.printStackTrace();
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                    } catch (Exception e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.flush();
                                    byteArrayOutputStream.close();
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                return file2;
                            }
                        } catch (Exception e7) {
                            e = e7;
                            fileOutputStream = null;
                        } catch (Throwable th3) {
                            fileOutputStream = null;
                            th = th3;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                } catch (Exception e8) {
                                    e8.printStackTrace();
                                    throw th;
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.flush();
                                byteArrayOutputStream.close();
                            }
                            if (bufferedInputStream != null) {
                                bufferedInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                    } catch (Exception e9) {
                        e = e9;
                        fileOutputStream = null;
                        byteArrayOutputStream = null;
                        bufferedInputStream = null;
                    } catch (Throwable th4) {
                        fileOutputStream = null;
                        byteArrayOutputStream = null;
                        bufferedInputStream = null;
                        th = th4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Exception e10) {
                e = e10;
                fileOutputStream = null;
                byteArrayOutputStream = null;
                bufferedInputStream = null;
                inputStream = null;
            } catch (Throwable th6) {
                fileOutputStream = null;
                byteArrayOutputStream = null;
                bufferedInputStream = null;
                inputStream = null;
                th = th6;
            }
            return file2;
        }
    }

    /* compiled from: DownloadUtils.java */
    /* renamed from: pl.jbzd.app.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static abstract class AbstractAsyncTaskC0600b extends AsyncTask<String, Integer, File> {

        /* renamed from: a  reason: collision with root package name */
        protected final a f5885a;
        protected final Context b;
        protected final File c;

        protected abstract File a(File file, String str);

        public AbstractAsyncTaskC0600b(Context context, File file, a aVar) {
            this.b = context;
            this.f5885a = aVar;
            this.c = file;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            if (this.b != null && this.f5885a != null) {
                this.f5885a.a(this.b.getString(R.string.error_save_image_canceled));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onProgressUpdate(Integer... numArr) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public File doInBackground(String... strArr) {
            return a(this.c, strArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(File file) {
            if (this.b != null && this.f5885a != null) {
                if (file == null) {
                    this.f5885a.a(this.b.getString(R.string.error_save_while_downloading));
                } else {
                    this.f5885a.a(file);
                }
            }
        }
    }
}
