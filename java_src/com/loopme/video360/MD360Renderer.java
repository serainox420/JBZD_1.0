package com.loopme.video360;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.video360.MDStatusManager;
import com.loopme.video360.common.GLUtil;
import com.loopme.video360.objects.MDSphere3D;
import com.loopme.video360.texture.MD360Texture;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes2.dex */
public class MD360Renderer implements GLSurfaceView.Renderer, MD360Texture.ISyncDrawCallback {
    private static final String TAG = "MD360Renderer";
    private final Context mContext;
    private final MD360Director mDirector;
    private MDSphere3D mObject3D;
    private MD360Program mProgram;
    private MDStatusManager.Status mStatus;
    private MD360Texture mTexture;

    private MD360Renderer(Builder builder) {
        this.mContext = builder.context;
        this.mTexture = builder.texture;
        this.mDirector = builder.director;
        this.mObject3D = new MDSphere3D();
        this.mProgram = new MD360Program(builder.contentType);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        GLES20.glClearColor(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        GLES20.glEnable(2884);
        GLES20.glEnable(2929);
        initProgram();
        initTexture();
        initObject3D();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
        this.mTexture.resize(i, i2);
        this.mDirector.updateProjection(i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        GLES20.glClear(16640);
        if (this.mStatus != null) {
            if (this.mStatus.isAllReady()) {
                this.mTexture.syncDrawInContext(this);
            } else {
                this.mStatus.ready();
            }
        }
    }

    @Override // com.loopme.video360.texture.MD360Texture.ISyncDrawCallback
    public void onDrawOpenGL() {
        this.mProgram.use();
        GLUtil.glCheck("mProgram use");
        GLES20.glUniform1i(this.mProgram.getTextureUniformHandle(), 0);
        GLUtil.glCheck("glUniform1i");
        this.mDirector.shot(this.mProgram);
        GLES20.glDrawArrays(4, 0, this.mObject3D.getNumIndices());
    }

    private void initProgram() {
        this.mProgram.build(this.mContext);
    }

    private void initTexture() {
        this.mTexture.create();
    }

    private void initObject3D() {
        this.mObject3D.loadObj(this.mContext);
        this.mObject3D.uploadDataToProgram(this.mProgram);
    }

    public static Builder with(Context context) {
        Builder builder = new Builder();
        builder.context = context;
        return builder;
    }

    public void setStatus(MDStatusManager.Status status) {
        this.mStatus = status;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private int contentType;
        private Context context;
        private MD360Director director;
        private MD360Texture texture;

        private Builder() {
            this.contentType = 0;
        }

        public MD360Renderer build() {
            if (this.director == null) {
                this.director = MD360Director.builder().build();
            }
            return new MD360Renderer(this);
        }

        public Builder setContentType(int i) {
            this.contentType = i;
            return this;
        }

        public Builder setTexture(MD360Texture mD360Texture) {
            this.texture = mD360Texture;
            return this;
        }

        public Builder setDirector(MD360Director mD360Director) {
            this.director = mD360Director;
            return this;
        }
    }
}
