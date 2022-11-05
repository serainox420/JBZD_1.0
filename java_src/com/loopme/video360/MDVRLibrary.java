package com.loopme.video360;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;
import android.view.Surface;
import android.widget.Toast;
import com.loopme.View360Controller;
import com.loopme.video360.common.GLUtil;
import com.loopme.video360.common.VRUtil;
import com.loopme.video360.strategy.display.DisplayModeManager;
import com.loopme.video360.strategy.interactive.InteractiveModeManager;
import com.loopme.video360.texture.MD360Texture;
import com.loopme.video360.texture.MD360VideoTexture;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class MDVRLibrary {
    private static final String LOG_TAG = MDVRLibrary.class.getSimpleName();
    private int mContentType;
    private List<MD360Director> mDirectorList;
    private DisplayModeManager mDisplayModeManager;
    private List<GLSurfaceView> mGLSurfaceViewList;
    private InteractiveModeManager mInteractiveModeManager;
    private boolean mIsPaused;
    private MDStatusManager mMDStatusManager;
    private MD360Texture mSurface;

    /* loaded from: classes2.dex */
    interface ContentType {
        public static final int VIDEO = 0;
    }

    /* loaded from: classes2.dex */
    public interface IOnSurfaceReadyCallback {
        void onSurfaceReady(Surface surface);
    }

    private MDVRLibrary(Builder builder) {
        this.mIsPaused = true;
        this.mContentType = builder.contentType;
        this.mSurface = builder.texture;
        this.mDirectorList = new LinkedList();
        this.mGLSurfaceViewList = new LinkedList();
        this.mMDStatusManager = new MDStatusManager();
        initWithGLSurfaceView(builder.context, builder.glSurfaceView);
        this.mDisplayModeManager = new DisplayModeManager(this.mGLSurfaceViewList);
        this.mInteractiveModeManager = new InteractiveModeManager(this.mDirectorList);
        this.mDisplayModeManager.prepare(builder.context);
        this.mInteractiveModeManager.prepare(builder.context);
        this.mMDStatusManager.reset(this.mDisplayModeManager.getVisibleSize());
    }

    private void initWithGLSurfaceView(Context context, GLSurfaceView gLSurfaceView) {
        initOpenGL(context, gLSurfaceView, this.mSurface);
    }

    public void setEventCallback(View360Controller.Callback callback) {
        for (MD360Director mD360Director : this.mDirectorList) {
            mD360Director.setEventCallback(callback);
        }
    }

    private void initOpenGL(Context context, GLSurfaceView gLSurfaceView, MD360Texture mD360Texture) {
        if (GLUtil.supportsEs2(context)) {
            gLSurfaceView.setEGLContextClientVersion(2);
            MD360Director createDirector = MD360DirectorFactory.createDirector();
            MD360Renderer build = MD360Renderer.with(context).setTexture(mD360Texture).setDirector(createDirector).setContentType(this.mContentType).build();
            build.setStatus(this.mMDStatusManager.newChild());
            gLSurfaceView.setRenderer(build);
            this.mDirectorList.add(createDirector);
            this.mGLSurfaceViewList.add(gLSurfaceView);
            return;
        }
        gLSurfaceView.setVisibility(8);
        Toast.makeText(context, "OpenGLES2 not supported.", 0).show();
    }

    public void onResume(Context context) {
        this.mIsPaused = false;
        this.mInteractiveModeManager.onResume(context);
        for (GLSurfaceView gLSurfaceView : this.mGLSurfaceViewList) {
            gLSurfaceView.onResume();
        }
    }

    public void onPause(Context context) {
        this.mIsPaused = true;
        this.mInteractiveModeManager.onPause(context);
        for (GLSurfaceView gLSurfaceView : this.mGLSurfaceViewList) {
            gLSurfaceView.onPause();
        }
    }

    public void setGyroSupported(boolean z) {
        for (MD360Director mD360Director : this.mDirectorList) {
            mD360Director.setGyroSupported(z);
        }
    }

    public void setAccelSupported(boolean z) {
        for (MD360Director mD360Director : this.mDirectorList) {
            mD360Director.setAccelSupported(z);
        }
    }

    public boolean isPaused() {
        return this.mIsPaused;
    }

    public void onDestroy() {
        if (this.mSurface != null) {
            this.mSurface.release();
        }
    }

    public boolean handleTouchEvent(MotionEvent motionEvent) {
        return this.mInteractiveModeManager.handleTouchEvent(motionEvent);
    }

    public static Builder with(Context context) {
        return new Builder(context);
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private int contentType;
        private Context context;
        private GLSurfaceView glSurfaceView;
        private MD360Texture texture;

        private Builder(Context context) {
            this.contentType = 0;
            this.context = context;
        }

        public Builder video(IOnSurfaceReadyCallback iOnSurfaceReadyCallback) {
            this.texture = new MD360VideoTexture(iOnSurfaceReadyCallback);
            this.contentType = 0;
            return this;
        }

        public MDVRLibrary build(GLSurfaceView gLSurfaceView) {
            VRUtil.notNull(this.texture, "You must call video/bitmap function in before build");
            this.glSurfaceView = gLSurfaceView;
            return new MDVRLibrary(this);
        }
    }
}
