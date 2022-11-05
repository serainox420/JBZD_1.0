package com.pubmatic.sdk.banner;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.pubmatic.sdk.banner.ui.GifDecoder;
import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes3.dex */
public class ImageRequest {
    private Handler handler;
    private final int timeout;
    private final String url;
    private final boolean useGifDecoder;
    private final String userAgent;

    /* loaded from: classes3.dex */
    public interface Handler {
        void imageFailed(ImageRequest imageRequest, Exception exc);

        void imageReceived(ImageRequest imageRequest, Object obj);
    }

    public static ImageRequest create(int i, String str, String str2, boolean z, Handler handler) {
        if (handler == null) {
            return null;
        }
        ImageRequest imageRequest = new ImageRequest(i, str, str2, z, handler);
        imageRequest.start();
        return imageRequest;
    }

    public ImageRequest(int i, String str, String str2, boolean z, Handler handler) {
        this.handler = null;
        this.timeout = i;
        this.url = str;
        this.userAgent = str2;
        this.useGifDecoder = z;
        this.handler = handler;
    }

    public void cancel() {
        this.handler = null;
    }

    private void start() {
        Background.getExecutor().execute(new RequestProcessor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class RequestProcessor implements Runnable {
        private RequestProcessor() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmap;
            boolean z = false;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(ImageRequest.this.url).openConnection();
                httpURLConnection.setConnectTimeout(ImageRequest.this.timeout * 1000);
                httpURLConnection.setRequestProperty("User-Agent", ImageRequest.this.userAgent);
                httpURLConnection.setRequestProperty("Connection", "close");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestMethod("GET");
                if (httpURLConnection.getResponseCode() != 200) {
                    if (ImageRequest.this.handler != null) {
                        ImageRequest.this.handler.imageFailed(ImageRequest.this, null);
                        return;
                    }
                    return;
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream(), 32768);
                bufferedInputStream.mark(32768);
                if (ImageRequest.this.useGifDecoder) {
                    byte[] bArr = new byte[3];
                    bufferedInputStream.read(bArr);
                    if (bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70) {
                        z = true;
                    }
                    bufferedInputStream.reset();
                }
                if (z) {
                    GifDecoder gifDecoder = new GifDecoder();
                    int read = gifDecoder.read(bufferedInputStream);
                    bitmap = gifDecoder;
                    if (read != 0) {
                        bitmap = null;
                    }
                } else {
                    Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream);
                    bitmap = decodeStream;
                    if (decodeStream == null) {
                        bitmap = null;
                    }
                }
                if (bitmap != null) {
                    ImageRequest.this.handler.imageReceived(ImageRequest.this, bitmap);
                } else {
                    ImageRequest.this.handler.imageFailed(ImageRequest.this, null);
                }
                bufferedInputStream.close();
                httpURLConnection.disconnect();
            } catch (Exception e) {
                ImageRequest.this.handler.imageFailed(ImageRequest.this, e);
            }
        }
    }
}
