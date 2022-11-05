package com.pubmatic.sdk.banner.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
/* loaded from: classes3.dex */
public class ImageView extends android.widget.ImageView {
    private GifDecoder gifDecoder;
    private Worker gifWorker;

    public ImageView(Context context) {
        super(context);
        this.gifDecoder = null;
        this.gifWorker = null;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        resetGifState();
        super.setImageDrawable(drawable);
    }

    public void setImageGifDecoder(GifDecoder gifDecoder) {
        if (gifDecoder != null && gifDecoder.getFrameCount() == 0) {
            gifDecoder = null;
        }
        resetGifState();
        if (gifDecoder != null) {
            this.gifDecoder = gifDecoder;
            this.gifWorker = new Worker();
            this.gifWorker.start();
        }
    }

    public GifDecoder getImageGifDecoder() {
        return this.gifDecoder;
    }

    private void resetGifState() {
        if (this.gifWorker != null) {
            this.gifWorker.interrupt();
            this.gifWorker = null;
        }
        super.setImageDrawable(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGifBitmap(Bitmap bitmap) {
        Bitmap bitmap2;
        if (bitmap != null) {
            Drawable drawable = getDrawable();
            if (!(drawable instanceof BitmapDrawable)) {
                bitmap2 = null;
            } else {
                bitmap2 = ((BitmapDrawable) drawable).getBitmap();
            }
            super.setImageDrawable(new BitmapDrawable(getContext().getResources(), bitmap));
            if (bitmap2 != null) {
                bitmap2.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class Worker extends Thread {
        private Worker() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                int frameCount = ImageView.this.gifDecoder.getFrameCount();
                int loopCount = ImageView.this.gifDecoder.getLoopCount();
                boolean z = loopCount == 0;
                while (ImageView.this.gifWorker == this) {
                    if (!z) {
                        int i = loopCount - 1;
                        if (loopCount <= 0) {
                            return;
                        }
                        loopCount = i;
                    }
                    for (int i2 = 0; i2 < frameCount; i2++) {
                        int delay = ImageView.this.gifDecoder.getDelay(i2);
                        int i3 = delay < 0 ? 100 : delay;
                        final Bitmap createBitmap = Bitmap.createBitmap(ImageView.this.gifDecoder.getFrame(i2), ImageView.this.gifDecoder.getWidth(), ImageView.this.gifDecoder.getHeight(), Bitmap.Config.ARGB_4444);
                        ((Activity) ImageView.this.getContext()).runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.ui.ImageView.Worker.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ImageView.this.setGifBitmap(createBitmap);
                            }
                        });
                        sleep(i3);
                    }
                }
            } catch (Exception e) {
            }
        }
    }
}
