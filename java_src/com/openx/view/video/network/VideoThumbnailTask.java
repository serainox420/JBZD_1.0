package com.openx.view.video.network;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.widget.ImageView;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.ResponseHandler;
import com.openx.errors.ServerWrongStatusCode;
import com.openx.errors.UnknownError;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class VideoThumbnailTask extends BaseNetworkTask {
    private final String TAG;
    private String connectionURL;
    private Context context;
    private File file;
    private boolean gotThumbnail;
    private ImageView imageView;
    private InputStream input;
    private OutputStream output;
    private ThumbnailCreatedListener thumbnailListener;
    private URL url;

    /* loaded from: classes3.dex */
    public interface ThumbnailCreatedListener extends ResponseHandler {
        void thumbnailCreated(File file);
    }

    public VideoThumbnailTask(Context context, ImageView imageView, ThumbnailCreatedListener thumbnailCreatedListener) {
        super(thumbnailCreatedListener);
        this.TAG = "NewVideoThumbnailTask";
        this.input = null;
        this.output = null;
        this.connectionURL = null;
        this.imageView = imageView;
        this.context = context;
        this.thumbnailListener = thumbnailCreatedListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.openx.core.network.BaseNetworkTask, android.os.AsyncTask
    public BaseNetworkTask.GetUrlResult doInBackground(BaseNetworkTask.GetUrlParams... getUrlParamsArr) {
        if (getUrlParamsArr[0].url.contains("/data/data/")) {
            this.file = new File(getUrlParamsArr[0].url);
            return new BaseNetworkTask.GetUrlResult();
        }
        new BaseNetworkTask.GetUrlResult();
        this.connectionURL = getUrlParamsArr[0].url;
        return super.doInBackground(getUrlParamsArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00eb, code lost:
        if (r8.file.exists() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00ed, code lost:
        com.openx.common.utils.logger.OXLog.debug("NewVideoThumbnailTask", "file.exists and deleting #######");
        r8.file.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f9, code lost:
        r0.setException(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ff, code lost:
        if (r8.output == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0101, code lost:
        r8.output.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0108, code lost:
        if (r8.input == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x010a, code lost:
        r8.input.close();
     */
    @Override // com.openx.core.network.BaseNetworkTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BaseNetworkTask.GetUrlResult customParser(int i, HttpURLConnection httpURLConnection) {
        BaseNetworkTask.GetUrlResult getUrlResult = new BaseNetworkTask.GetUrlResult();
        if (i != 200) {
            getUrlResult.setException(new ServerWrongStatusCode(i));
        } else {
            try {
                this.url = new URL(this.connectionURL);
            } catch (MalformedURLException e) {
                getUrlResult.setException(new UnknownError(e.getMessage()));
            }
            String substring = this.url.toString().substring(this.url.toString().lastIndexOf("/"), this.url.toString().length());
            this.file = new File(this.context.getFilesDir(), substring);
            if (this.file.exists()) {
                OXLog.debug("NewVideoThumbnailTask", "deleting: " + this.file.getPath() + " name: " + this.file.getName());
                this.file.delete();
            }
            try {
                try {
                    this.input = httpURLConnection.getInputStream();
                    this.output = new FileOutputStream(this.context.getFilesDir() + substring);
                    byte[] bArr = new byte[4096];
                    long j = 0;
                    while (true) {
                        int read = this.input.read(bArr);
                        if (read == -1 || j >= 600000) {
                            try {
                                if (this.output != null) {
                                    this.output.close();
                                }
                                if (this.input != null) {
                                    this.input.close();
                                }
                            } catch (IOException e2) {
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } else {
                            OXLog.info("NewVideoThumbnailTask", "count: " + read + " total: " + j);
                            if (isCancelled()) {
                                break;
                            }
                            j += read;
                            this.output.write(bArr, 0, read);
                        }
                    }
                } catch (Exception e3) {
                    getUrlResult.setException(new UnknownError(e3.getMessage()));
                    try {
                        if (this.output != null) {
                            this.output.close();
                        }
                        if (this.input != null) {
                            this.input.close();
                        }
                    } catch (IOException e4) {
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            } catch (Throwable th) {
                try {
                    if (this.output != null) {
                        this.output.close();
                    }
                    if (this.input != null) {
                        this.input.close();
                    }
                } catch (IOException e5) {
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        }
        return getUrlResult;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        return getUrlResult;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.openx.core.network.BaseNetworkTask, android.os.AsyncTask
    public void onPostExecute(BaseNetworkTask.GetUrlResult getUrlResult) {
        super.onPostExecute(getUrlResult);
        if (this.file != null && !TextUtils.isEmpty(this.file.getPath()) && getUrlResult.getException() == null) {
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(this.file.getPath());
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(2000000L, 3);
                mediaMetadataRetriever.release();
                this.imageView.setImageBitmap(frameAtTime);
                this.thumbnailListener.thumbnailCreated(this.file);
                this.file.delete();
            } catch (IllegalArgumentException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.openx.core.network.BaseNetworkTask, android.os.AsyncTask
    @SuppressLint({"NewApi"})
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate(numArr);
        OXLog.debug("NewVideoThumbnailTask", "length: " + numArr[0]);
        if (numArr[0].intValue() > 600000 && !this.gotThumbnail) {
            this.gotThumbnail = true;
            OXLog.error("NewVideoThumbnailTask", "creating Thumbnail task");
            new createThumnailTask().execute(new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class createThumnailTask extends AsyncTask<Void, Void, Bitmap> {
        private createThumnailTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... voidArr) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(VideoThumbnailTask.this.file.getPath());
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(2000000L, 3);
            mediaMetadataRetriever.release();
            return frameAtTime;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute((createThumnailTask) bitmap);
            OXLog.error("NewVideoThumbnailTask", "setting Bitmap");
            VideoThumbnailTask.this.imageView.setImageBitmap(bitmap);
            VideoThumbnailTask.this.thumbnailListener.thumbnailCreated(VideoThumbnailTask.this.file);
            VideoThumbnailTask.this.file.delete();
        }
    }
}
