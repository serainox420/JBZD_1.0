package com.intentsoftware.addapptr.c;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
/* compiled from: ShakeDetector.java */
/* loaded from: classes2.dex */
public class i implements SensorEventListener {
    private static final int DELAY_AFTER_CREATION = 5000;
    private static final int MINIMUM_SHAKES = 5;
    private static final int SHAKE_COUNT_RESET_TIME_MS = 550;
    private static final int SHAKE_SLOP_TIME_MS = 150;
    private static final float SHAKE_THRESHOLD_GRAVITY = 2.5f;
    private a mListener;
    private int mShakeCount;
    private long mShakeTimestamp;
    private final float threshold;
    private final long timeWhenCreated;

    /* compiled from: ShakeDetector.java */
    /* loaded from: classes2.dex */
    public interface a {
        void onShake();
    }

    public i(float f) {
        float f2 = f / 9.80665f;
        if (f2 < SHAKE_THRESHOLD_GRAVITY) {
            this.threshold = f2 * 0.9f;
        } else {
            this.threshold = SHAKE_THRESHOLD_GRAVITY;
        }
        this.timeWhenCreated = System.currentTimeMillis();
    }

    public void setOnShakeListener(a aVar) {
        this.mListener = aVar;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.mListener != null) {
            float f = sensorEvent.values[0] / 9.80665f;
            float f2 = sensorEvent.values[1] / 9.80665f;
            float f3 = sensorEvent.values[2] / 9.80665f;
            if (((float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3))) > this.threshold) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.timeWhenCreated >= 5000 && this.mShakeTimestamp + 150 <= currentTimeMillis) {
                    if (this.mShakeTimestamp + 550 < currentTimeMillis) {
                        this.mShakeCount = 0;
                    }
                    this.mShakeTimestamp = currentTimeMillis;
                    this.mShakeCount++;
                    if (this.mShakeCount >= 5) {
                        this.mShakeCount = 0;
                        this.mListener.onShake();
                    }
                }
            }
        }
    }
}
