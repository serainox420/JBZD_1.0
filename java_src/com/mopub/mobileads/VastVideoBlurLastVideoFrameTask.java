package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.os.Build;
import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;
/* loaded from: classes3.dex */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final MediaMetadataRetriever f4474a;
    private final ImageView b;
    private int c;
    private Bitmap d;
    private Bitmap e;

    public VastVideoBlurLastVideoFrameTask(MediaMetadataRetriever mediaMetadataRetriever, ImageView imageView, int i) {
        this.f4474a = mediaMetadataRetriever;
        this.b = imageView;
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 10) {
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                return false;
            }
            try {
                this.f4474a.setDataSource(strArr[0]);
                this.d = this.f4474a.getFrameAtTime((this.c * 1000) - 200000, 3);
                if (this.d == null) {
                    z = false;
                } else {
                    this.e = ImageUtils.applyFastGaussianBlurToBitmap(this.d, 4);
                    z = true;
                }
                return z;
            } catch (Exception e) {
                MoPubLog.d("Failed to blur last video frame", e);
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        if (isCancelled()) {
            onCancelled();
        } else if (bool != null && bool.booleanValue()) {
            this.b.setImageBitmap(this.e);
            ImageUtils.setImageViewAlpha(this.b, 100);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        MoPubLog.d("VastVideoBlurLastVideoFrameTask was cancelled.");
    }
}
