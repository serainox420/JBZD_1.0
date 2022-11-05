package com.loopme;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.ViewGroup;
import com.loopme.adview.AdView;
import com.loopme.common.Logging;
import com.loopme.constants.StretchOption;
import com.loopme.video360.MDVRLibrary;
/* loaded from: classes2.dex */
public class View360Controller implements IViewController {
    private static final String ACCEL = "Accelerometer";
    private static final String GYRO = "Gyroscope";
    private static final String LOG_TAG = View360Controller.class.getSimpleName();
    private Callback mCallback;
    private GLSurfaceView mGLSurfaceView;
    private MDVRLibrary mVRLibrary;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onEvent(String str);

        void onSurfaceReady(Surface surface);
    }

    public View360Controller(Callback callback) {
        this.mCallback = callback;
    }

    @Override // com.loopme.IViewController
    public void setViewSize(int i, int i2) {
    }

    @Override // com.loopme.IViewController
    public void setVideoSize(int i, int i2) {
    }

    @Override // com.loopme.IViewController
    public void buildVideoAdView(Context context, ViewGroup viewGroup, AdView adView) {
        this.mGLSurfaceView = new GLSurfaceView(context);
        viewGroup.addView(this.mGLSurfaceView, 0);
        if (adView != null) {
            adView.setBackgroundColor(0);
            adView.setLayerType(1, null);
            if (adView.getParent() != null) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            viewGroup.addView(adView, 1);
        }
    }

    @Override // com.loopme.IViewController
    public void initVRLibrary(Context context) {
        if (this.mVRLibrary == null) {
            Logging.out(LOG_TAG, "initVRLibrary");
            this.mVRLibrary = MDVRLibrary.with(context).video(new MDVRLibrary.IOnSurfaceReadyCallback() { // from class: com.loopme.View360Controller.1
                @Override // com.loopme.video360.MDVRLibrary.IOnSurfaceReadyCallback
                public void onSurfaceReady(Surface surface) {
                    if (View360Controller.this.mCallback != null) {
                        View360Controller.this.mCallback.onSurfaceReady(surface);
                    }
                }
            }).build(this.mGLSurfaceView);
            checkIsAccelGyroPresented(context);
            this.mVRLibrary.setEventCallback(this.mCallback);
        }
    }

    private void checkIsAccelGyroPresented(Context context) {
        for (Sensor sensor : ((SensorManager) context.getSystemService("sensor")).getSensorList(-1)) {
            if (sensor.getName().contains(ACCEL)) {
                this.mVRLibrary.setAccelSupported(true);
            }
            if (sensor.getName().contains(GYRO)) {
                this.mVRLibrary.setGyroSupported(true);
            }
        }
    }

    @Override // com.loopme.IViewController
    public boolean handleTouchEvent(MotionEvent motionEvent) {
        if (this.mVRLibrary != null) {
            return this.mVRLibrary.handleTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.loopme.IViewController
    public void onResume() {
        if (this.mVRLibrary != null && this.mGLSurfaceView != null && this.mVRLibrary.isPaused()) {
            Logging.out(LOG_TAG, "VRLibrary onResume");
            this.mVRLibrary.onResume(this.mGLSurfaceView.getContext());
        }
    }

    @Override // com.loopme.IViewController
    public void onPause() {
        if (this.mVRLibrary != null && this.mGLSurfaceView != null && !this.mVRLibrary.isPaused()) {
            Logging.out(LOG_TAG, "VRLibrary onPause");
            this.mVRLibrary.onPause(this.mGLSurfaceView.getContext());
        }
    }

    @Override // com.loopme.IViewController
    public void onDestroy() {
        if (this.mVRLibrary != null) {
            Logging.out(LOG_TAG, "VRLibrary onDestroy");
            this.mVRLibrary.onDestroy();
            this.mVRLibrary = null;
        }
    }

    @Override // com.loopme.IViewController
    public void rebuildView(ViewGroup viewGroup, AdView adView) {
        Logging.out(LOG_TAG, "rebuildView");
        if (viewGroup != null && adView != null && this.mGLSurfaceView != null) {
            if (this.mGLSurfaceView.getParent() != null) {
                ((ViewGroup) this.mGLSurfaceView.getParent()).removeView(this.mGLSurfaceView);
            }
            if (adView.getParent() != null) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            viewGroup.removeAllViews();
            viewGroup.addView(this.mGLSurfaceView, 0);
            viewGroup.addView(adView, 1);
        }
    }

    @Override // com.loopme.IViewController
    public void setStretchParam(StretchOption stretchOption) {
    }
}
