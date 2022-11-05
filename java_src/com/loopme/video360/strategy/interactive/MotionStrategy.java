package com.loopme.video360.strategy.interactive;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.loopme.video360.MD360Director;
import com.loopme.video360.common.VRUtil;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class MotionStrategy extends AbsInteractiveStrategy implements SensorEventListener {
    private static final String TAG = "MotionStrategy";
    private int mDeviceRotation;
    private boolean mRegistered;
    private float[] mSensorMatrix;

    public MotionStrategy(List<MD360Director> list) {
        super(list);
        this.mSensorMatrix = new float[16];
        this.mRegistered = false;
    }

    @Override // com.loopme.video360.strategy.interactive.IInteractiveMode
    public void onResume(Context context) {
        registerSensor(context);
    }

    @Override // com.loopme.video360.strategy.interactive.IInteractiveMode
    public void onPause(Context context) {
        unregisterSensor(context);
    }

    @Override // com.loopme.video360.strategy.interactive.IInteractiveMode
    public boolean handleTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        Iterator<MD360Director> it = getDirectorList().iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = it.next().handleTouchEvent(motionEvent) | z2;
            } else {
                return z2;
            }
        }
    }

    @Override // com.loopme.video360.strategy.IModeStrategy
    public void on(Context context) {
        this.mDeviceRotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    @Override // com.loopme.video360.strategy.IModeStrategy
    public void off(Context context) {
        unregisterSensor(context);
    }

    protected void registerSensor(Context context) {
        if (!this.mRegistered) {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            Sensor defaultSensor = sensorManager.getDefaultSensor(11);
            if (defaultSensor == null) {
                Log.e(TAG, "TYPE_ROTATION_VECTOR sensor not support!");
                return;
            }
            sensorManager.registerListener(this, defaultSensor, 2);
            this.mRegistered = true;
        }
    }

    protected void unregisterSensor(Context context) {
        if (this.mRegistered) {
            ((SensorManager) context.getSystemService("sensor")).unregisterListener(this);
            this.mRegistered = false;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.accuracy != 0) {
            switch (sensorEvent.sensor.getType()) {
                case 11:
                    VRUtil.sensorRotationVector2Matrix(sensorEvent, this.mDeviceRotation, this.mSensorMatrix);
                    float[] fArr = new float[3];
                    SensorManager.getOrientation(this.mSensorMatrix, fArr);
                    for (MD360Director mD360Director : getDirectorList()) {
                        mD360Director.updateSensorInfo(fArr);
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }
}
