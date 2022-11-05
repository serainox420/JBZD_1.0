package com.loopme.video360;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.MotionEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.View360Controller;
import com.loopme.video360.common.VREvents;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class MD360Director {
    private static final float sDamping = 0.2f;
    private boolean mAccelSupported;
    private float[] mAccumulatedRotation;
    private float mAngle;
    private View360Controller.Callback mCallback;
    private float[] mCurrentRotation;
    private int mCurrentViewQuarter;
    private float mDeltaSensorX;
    private float mDeltaSensorY;
    private float mDeltaSensorZ;
    private float mDeltaX;
    private float mDeltaY;
    private float mEyeX;
    private float mEyeZ;
    private boolean mGyroSupported;
    private List<String> mHandledEvents;
    private boolean mHandledMotion;
    private float mLookX;
    private float[] mMVMatrix;
    private float[] mMVPMatrix;
    private float[] mModelMatrix;
    private float mNear;
    private float mPreviousX;
    private float mPreviousY;
    private float[] mProjectionMatrix;
    private float mRatio;
    private float[] mTemporaryMatrix;
    private float[] mViewMatrix;
    private boolean mWasSwipe;
    private static final String LOG_TAG = MD360Director.class.getSimpleName();
    private static final float sDensity = Resources.getSystem().getDisplayMetrics().density;

    private MD360Director(Builder builder) {
        this.mModelMatrix = new float[16];
        this.mViewMatrix = new float[16];
        this.mProjectionMatrix = new float[16];
        this.mMVMatrix = new float[16];
        this.mMVPMatrix = new float[16];
        this.mEyeZ = BitmapDescriptorFactory.HUE_RED;
        this.mEyeX = BitmapDescriptorFactory.HUE_RED;
        this.mAngle = BitmapDescriptorFactory.HUE_RED;
        this.mRatio = BitmapDescriptorFactory.HUE_RED;
        this.mNear = BitmapDescriptorFactory.HUE_RED;
        this.mLookX = BitmapDescriptorFactory.HUE_RED;
        this.mCurrentRotation = new float[16];
        this.mAccumulatedRotation = new float[16];
        this.mTemporaryMatrix = new float[16];
        this.mCurrentViewQuarter = 0;
        this.mHandledEvents = new ArrayList();
        this.mEyeZ = builder.mEyeZ;
        this.mRatio = builder.mRatio;
        this.mNear = builder.mNear;
        this.mAngle = builder.mAngle;
        this.mEyeX = builder.mEyeX;
        this.mLookX = builder.mLookX;
        initCamera();
        initModel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEventCallback(View360Controller.Callback callback) {
        this.mCallback = callback;
    }

    public boolean handleTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (motionEvent.getAction() == 2) {
                float f = ((x - this.mPreviousX) / sDensity) * sDamping;
                float f2 = ((y - this.mPreviousY) / sDensity) * sDamping;
                this.mDeltaX = f + this.mDeltaX;
                this.mDeltaY += f2;
                this.mWasSwipe = true;
            } else if (motionEvent.getAction() == 1) {
                if (this.mWasSwipe) {
                    this.mWasSwipe = false;
                    handleEvent(VREvents.SWIPE);
                }
                this.mHandledMotion = false;
            }
            this.mPreviousX = x;
            this.mPreviousY = y;
            return true;
        }
        return false;
    }

    private void updateCurentViewQuarter(int i) {
        if (this.mCurrentViewQuarter != i) {
            this.mCurrentViewQuarter = i;
            String str = null;
            switch (i) {
                case 1:
                    str = VREvents.FRONT;
                    break;
                case 2:
                    str = VREvents.LEFT;
                    break;
                case 3:
                    str = VREvents.RIGHT;
                    break;
                case 4:
                    str = VREvents.BACK;
                    break;
            }
            handleEvent(str);
        }
    }

    private void detectViewQuarter(float f) {
        if (f > 45.0f && f < 135.0f) {
            updateCurentViewQuarter(3);
        } else if (Math.abs(f) > 135.0f) {
            updateCurentViewQuarter(4);
        } else if (Math.abs(f) < 45.0f) {
            updateCurentViewQuarter(1);
        } else {
            updateCurentViewQuarter(2);
        }
    }

    private void initCamera() {
        updateViewMatrix();
    }

    private void initModel() {
        Matrix.setIdentityM(this.mAccumulatedRotation, 0);
        updateModelRotate(this.mAngle);
    }

    public void shot(MD360Program mD360Program) {
        Matrix.setIdentityM(this.mModelMatrix, 0);
        Matrix.setIdentityM(this.mCurrentRotation, 0);
        Matrix.rotateM(this.mCurrentRotation, 0, (-this.mDeltaY) + this.mDeltaSensorZ, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        Matrix.rotateM(this.mCurrentRotation, 0, (-this.mDeltaX) + this.mDeltaSensorY, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
        System.arraycopy(this.mCurrentRotation, 0, this.mAccumulatedRotation, 0, 16);
        Matrix.multiplyMM(this.mTemporaryMatrix, 0, this.mModelMatrix, 0, this.mAccumulatedRotation, 0);
        System.arraycopy(this.mTemporaryMatrix, 0, this.mModelMatrix, 0, 16);
        Matrix.multiplyMM(this.mMVMatrix, 0, this.mViewMatrix, 0, this.mModelMatrix, 0);
        Matrix.multiplyMM(this.mMVPMatrix, 0, this.mProjectionMatrix, 0, this.mMVMatrix, 0);
        GLES20.glUniformMatrix4fv(mD360Program.getMVMatrixHandle(), 1, false, this.mMVMatrix, 0);
        GLES20.glUniformMatrix4fv(mD360Program.getMVPMatrixHandle(), 1, false, this.mMVPMatrix, 0);
    }

    public void updateProjection(int i, int i2) {
        this.mRatio = (i * 1.0f) / i2;
        updateProjectionNear(this.mNear);
    }

    private void updateViewMatrix() {
        float f = this.mEyeX;
        float f2 = this.mEyeZ;
        float f3 = this.mLookX;
        Matrix.setIdentityM(this.mViewMatrix, 0);
        Matrix.setLookAtM(this.mViewMatrix, 0, f, BitmapDescriptorFactory.HUE_RED, f2, f3, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
    }

    protected void updateModelRotate(float f) {
        this.mAngle = f;
    }

    private void updateProjectionNear(float f) {
        this.mNear = f;
        Matrix.frustumM(this.mProjectionMatrix, 0, (-this.mRatio) / 2.0f, this.mRatio / 2.0f, -0.5f, 0.5f, this.mNear, 500.0f);
    }

    private void handleEvent(String str) {
        if (this.mCallback != null && !this.mHandledEvents.contains(str)) {
            this.mCallback.onEvent(str);
            this.mHandledEvents.add(str);
        }
    }

    public void updateSensorInfo(float[] fArr) {
        this.mDeltaSensorX = (float) Math.toDegrees(fArr[2]);
        this.mDeltaSensorY = (float) Math.toDegrees(fArr[0]);
        this.mDeltaSensorZ = (float) Math.toDegrees(fArr[1]);
        if (!this.mHandledMotion) {
            if (this.mAccelSupported) {
                handleEvent(VREvents.ACCEL);
            }
            if (this.mGyroSupported) {
                handleEvent(VREvents.GYRO);
            }
            this.mHandledMotion = true;
        }
        detectViewQuarter(this.mDeltaSensorY);
    }

    public void setGyroSupported(boolean z) {
        this.mGyroSupported = z;
    }

    public void setAccelSupported(boolean z) {
        this.mAccelSupported = z;
    }

    public static Builder builder() {
        return new Builder();
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private float mEyeZ = BitmapDescriptorFactory.HUE_RED;
        private float mAngle = BitmapDescriptorFactory.HUE_RED;
        private float mRatio = 1.5f;
        private float mNear = 0.4f;
        private float mEyeX = BitmapDescriptorFactory.HUE_RED;
        private float mLookX = BitmapDescriptorFactory.HUE_RED;

        public MD360Director build() {
            return new MD360Director(this);
        }
    }
}
