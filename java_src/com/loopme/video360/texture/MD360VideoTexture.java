package com.loopme.video360.texture;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Build;
import android.view.Surface;
import com.google.android.gms.gcm.Task;
import com.loopme.common.Logging;
import com.loopme.video360.MDVRLibrary;
import com.loopme.video360.common.GLUtil;
import com.loopme.video360.texture.MD360Texture;
/* loaded from: classes2.dex */
public class MD360VideoTexture extends MD360Texture {
    private static final String LOG_TAG = MD360VideoTexture.class.getSimpleName();
    private MDVRLibrary.IOnSurfaceReadyCallback mOnSurfaceReadyListener;
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;

    public MD360VideoTexture(MDVRLibrary.IOnSurfaceReadyCallback iOnSurfaceReadyCallback) {
        this.mOnSurfaceReadyListener = iOnSurfaceReadyCallback;
    }

    @Override // com.loopme.video360.texture.MD360Texture
    public void release() {
        super.release();
        if (this.mSurfaceTexture != null) {
            this.mSurfaceTexture.release();
        }
        this.mSurfaceTexture = null;
        if (this.mSurface != null) {
            this.mSurface.release();
        }
        this.mSurface = null;
    }

    @Override // com.loopme.video360.texture.MD360Texture
    public void create() {
        super.create();
        int currentTextureId = getCurrentTextureId();
        if (!isEmpty(currentTextureId)) {
            onCreateSurface(currentTextureId);
        }
    }

    @TargetApi(16)
    private void onCreateSurface(int i) {
        if (this.mSurfaceTexture == null) {
            this.mSurfaceTexture = new SurfaceTexture(i);
            this.mSurfaceTexture.detachFromGLContext();
            this.mSurfaceTexture.setDefaultBufferSize(getWidth(), getHeight());
            this.mSurface = new Surface(this.mSurfaceTexture);
            if (this.mOnSurfaceReadyListener != null) {
                this.mOnSurfaceReadyListener.onSurfaceReady(this.mSurface);
            }
        }
    }

    @Override // com.loopme.video360.texture.MD360Texture
    protected void onResize(int i, int i2) {
        if (this.mSurfaceTexture != null && Build.VERSION.SDK_INT >= 15) {
            this.mSurfaceTexture.setDefaultBufferSize(i, i2);
        }
    }

    @Override // com.loopme.video360.texture.MD360Texture
    @TargetApi(16)
    public synchronized void syncDrawInContext(MD360Texture.ISyncDrawCallback iSyncDrawCallback) {
        int currentTextureId = getCurrentTextureId();
        if (!isEmpty(currentTextureId)) {
            if (this.mSurfaceTexture == null) {
                Logging.out(LOG_TAG, "mSurfaceTexture == null");
                create();
            } else {
                this.mSurfaceTexture.attachToGLContext(currentTextureId);
                this.mSurfaceTexture.updateTexImage();
                iSyncDrawCallback.onDrawOpenGL();
                this.mSurfaceTexture.detachFromGLContext();
            }
        }
    }

    @Override // com.loopme.video360.texture.MD360Texture
    protected int createTextureId() {
        int[] iArr = new int[1];
        GLES20.glActiveTexture(33984);
        GLES20.glGenTextures(1, iArr, 0);
        GLUtil.glCheck("Texture generate");
        GLES20.glBindTexture(36197, iArr[0]);
        GLUtil.glCheck("Texture bind");
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, Task.EXTRAS_LIMIT_BYTES, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        return iArr[0];
    }
}
