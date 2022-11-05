package com.openx.view.video.network;

import android.content.Context;
import com.openx.core.network.BaseNetworkTask;
import com.openx.errors.ServerWrongStatusCode;
import com.openx.errors.UnknownError;
import com.openx.view.video.AdVideoView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes3.dex */
public class DownloadTask extends BaseNetworkTask {
    private AdVideoView.AdVideoPreloadedListener adVideoPreloadedListener;
    private String connectionURL;
    private Context context;
    private File file;
    private InputStream input;
    private OutputStream output;
    private URL url;

    public DownloadTask(Context context, AdVideoView.AdVideoPreloadedListener adVideoPreloadedListener) {
        super(adVideoPreloadedListener);
        this.input = null;
        this.output = null;
        this.connectionURL = null;
        this.file = null;
        this.adVideoPreloadedListener = adVideoPreloadedListener;
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.openx.core.network.BaseNetworkTask, android.os.AsyncTask
    public BaseNetworkTask.GetUrlResult doInBackground(BaseNetworkTask.GetUrlParams... getUrlParamsArr) {
        new BaseNetworkTask.GetUrlResult();
        this.connectionURL = getUrlParamsArr[0].url;
        return super.doInBackground(getUrlParamsArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0098, code lost:
        if (r12.file.exists() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x009a, code lost:
        r12.file.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x009f, code lost:
        r0.setException(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a5, code lost:
        if (r12.output == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a7, code lost:
        r12.output.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ae, code lost:
        if (r12.input == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b0, code lost:
        r12.input.close();
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
                this.file.delete();
            }
            try {
                try {
                    int contentLength = httpURLConnection.getContentLength();
                    this.input = httpURLConnection.getInputStream();
                    this.output = new FileOutputStream(this.context.getFilesDir() + substring);
                    byte[] bArr = new byte[4096];
                    long j = 0;
                    while (true) {
                        int read = this.input.read(bArr);
                        if (read == -1) {
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
                        } else if (isCancelled()) {
                            break;
                        } else {
                            j += read;
                            if (contentLength > 0) {
                                publishProgress(new Integer[]{Integer.valueOf((int) ((100 * j) / contentLength))});
                            }
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

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.openx.core.network.BaseNetworkTask, android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate(numArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.openx.core.network.BaseNetworkTask, android.os.AsyncTask
    public void onPostExecute(BaseNetworkTask.GetUrlResult getUrlResult) {
        if (this.file != null && getUrlResult.getException() == null) {
            this.adVideoPreloadedListener.preloaded();
        } else if (getUrlResult.getException() != null) {
            this.adVideoPreloadedListener.preloadedError();
        }
    }
}
