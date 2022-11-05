package com.loopme;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.loopme.adview.AdView;
import com.loopme.common.Logging;
import com.loopme.common.Utils;
import com.loopme.constants.StretchOption;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2.dex */
public class ViewController implements TextureView.SurfaceTextureListener, IViewController {
    private static final String LOG_TAG = ViewController.class.getSimpleName();
    private Callback mCallback;
    private int mResizeHeight;
    private int mResizeWidth;
    private StretchOption mStretch = StretchOption.NONE;
    private TextureView mTextureView;
    private int mVideoHeight;
    private int mVideoWidth;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture);

        void onSurfaceTextureDestroyed();
    }

    public ViewController(Callback callback) {
        this.mCallback = callback;
    }

    @Override // com.loopme.IViewController
    public void buildVideoAdView(Context context, ViewGroup viewGroup, AdView adView) {
        this.mTextureView = new TextureView(context);
        if (Build.VERSION.SDK_INT < 23) {
            this.mTextureView.setBackgroundColor(0);
        }
        this.mTextureView.setSurfaceTextureListener(this);
        adView.setBackgroundColor(0);
        adView.setLayerType(1, null);
        viewGroup.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        viewGroup.addView(this.mTextureView, 0);
        if (adView.getParent() != null) {
            ((ViewGroup) adView.getParent()).removeView(adView);
        }
        viewGroup.addView(adView, 1);
    }

    @Override // com.loopme.IViewController
    public void rebuildView(ViewGroup viewGroup, AdView adView) {
        Logging.out(LOG_TAG, "rebuildView");
        if (viewGroup != null && adView != null && this.mTextureView != null) {
            viewGroup.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            if (this.mTextureView.getParent() != null) {
                ((ViewGroup) this.mTextureView.getParent()).removeView(this.mTextureView);
            }
            if (adView.getParent() != null) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            viewGroup.addView(this.mTextureView, 0);
            viewGroup.addView(adView, 1);
        }
    }

    private void resizeVideo() {
        Logging.out(LOG_TAG, "resizeVideo()");
        if (this.mTextureView != null && this.mResizeWidth != 0 && this.mResizeHeight != 0 && this.mVideoWidth != 0 && this.mVideoHeight != 0) {
            this.mTextureView.setLayoutParams(Utils.calculateNewLayoutParams((FrameLayout.LayoutParams) this.mTextureView.getLayoutParams(), this.mVideoWidth, this.mVideoHeight, this.mResizeWidth, this.mResizeHeight, this.mStretch));
        }
    }

    @Override // com.loopme.IViewController
    public void setViewSize(int i, int i2) {
        Logging.out(LOG_TAG, "setViewSize " + i + " : " + i2);
        this.mResizeWidth = i;
        this.mResizeHeight = i2;
    }

    @Override // com.loopme.IViewController
    public void setVideoSize(int i, int i2) {
        Logging.out(LOG_TAG, "setVideoSize " + i + " : " + i2);
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
    }

    @Override // com.loopme.IViewController
    public void setStretchParam(StretchOption stretchOption) {
        Logging.out(LOG_TAG, "setStretchParam");
        this.mStretch = stretchOption;
    }

    @Override // com.loopme.IViewController
    public void onPause() {
    }

    @Override // com.loopme.IViewController
    public void onResume() {
    }

    @Override // com.loopme.IViewController
    public void onDestroy() {
    }

    @Override // com.loopme.IViewController
    public boolean handleTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.loopme.IViewController
    public void initVRLibrary(Context context) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.mCallback != null) {
            this.mCallback.onSurfaceTextureAvailable(surfaceTexture);
        }
        resizeVideo();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (this.mCallback != null) {
            this.mCallback.onSurfaceTextureDestroyed();
            return true;
        }
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
