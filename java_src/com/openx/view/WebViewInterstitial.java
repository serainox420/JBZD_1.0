package com.openx.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import com.openx.common.utils.logger.OXLog;
import com.openx.model.Ad;
import com.openx.view.mraid.BaseJSInterface;
import com.openx.view.mraid.InterstitialJSInterface;
import com.openx.view.video.PreloadManager;
import java.io.InputStream;
import java.net.URL;
import java.util.UUID;
/* loaded from: classes3.dex */
public class WebViewInterstitial extends WebViewBase {
    private static final String TAG = "WebViewBase";
    private int dimColor;
    private Bitmap image;
    private String imageURL;
    public boolean isImage;

    public WebViewInterstitial(Context context, Ad ad, UUID uuid, boolean z, PreloadManager.PreloadedListener preloadedListener) {
        super(context, ad, uuid, z, preloadedListener);
        this.isImage = false;
        BaseJSInterface interstitialJSInterface = new InterstitialJSInterface(context, this);
        addJavascriptInterface(interstitialJSInterface, "jsBridge");
        setBaseJSInterface(interstitialJSInterface);
    }

    public WebViewInterstitial(Context context, Ad ad, UUID uuid, boolean z, PreloadManager.PreloadedListener preloadedListener, boolean z2) {
        super(context, ad, z, preloadedListener);
        this.isImage = false;
        BaseJSInterface interstitialJSInterface = new InterstitialJSInterface(getParentContext(), this);
        addJavascriptInterface(interstitialJSInterface, "jsBridge");
        setBaseJSInterface(interstitialJSInterface);
        this.isImage = z2;
        this.imageURL = ad.getCreative().getMedia();
        new DownloadImageTask().execute(this.imageURL);
    }

    public Bitmap getImage() {
        return this.image;
    }

    public void setDimColor(int i) {
        this.dimColor = i;
    }

    public int getDimColor() {
        return this.dimColor;
    }

    /* loaded from: classes3.dex */
    private class DownloadImageTask extends AsyncTask<String, Void, Bitmap> {
        private DownloadImageTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(String... strArr) {
            InputStream inputStream;
            Bitmap bitmap = null;
            try {
                inputStream = new URL(strArr[0]).openStream();
                try {
                    bitmap = BitmapFactory.decodeStream(inputStream);
                } catch (Exception e) {
                    e = e;
                    OXLog.error(WebViewInterstitial.TAG, "DownloadImageTask failed with : " + e.getMessage());
                    e.printStackTrace();
                    inputStream.close();
                    return bitmap;
                }
            } catch (Exception e2) {
                e = e2;
                inputStream = null;
            }
            try {
                inputStream.close();
            } catch (Exception e3) {
                OXLog.error(WebViewInterstitial.TAG, "DownloadImageTask failed to close inputstream : " + e3.getMessage());
                e3.printStackTrace();
            }
            return bitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            WebViewInterstitial.this.image = bitmap;
            if (WebViewInterstitial.this.getPreloadedListener() != null) {
                WebViewInterstitial.this.getPreloadedListener().preloaded(WebViewInterstitial.this);
            }
        }
    }
}
