package com.loopme.video360.common;

import android.hardware.SensorEvent;
import android.hardware.SensorManager;
/* loaded from: classes2.dex */
public class VRUtil {
    private static float[] mTmp = new float[16];

    public static void sensorRotationVector2Matrix(SensorEvent sensorEvent, int i, float[] fArr) {
        float[] fArr2 = sensorEvent.values;
        switch (i) {
            case 0:
                SensorManager.getRotationMatrixFromVector(mTmp, fArr2);
                SensorManager.remapCoordinateSystem(mTmp, 1, 3, fArr);
                return;
            case 1:
                SensorManager.getRotationMatrixFromVector(mTmp, fArr2);
                SensorManager.remapCoordinateSystem(mTmp, 3, 129, fArr);
                return;
            case 2:
                SensorManager.getRotationMatrixFromVector(mTmp, fArr2);
                SensorManager.remapCoordinateSystem(mTmp, 129, 131, fArr);
                return;
            case 3:
                SensorManager.getRotationMatrixFromVector(mTmp, fArr2);
                SensorManager.remapCoordinateSystem(mTmp, 131, 1, fArr);
                return;
            default:
                return;
        }
    }

    public static void notNull(Object obj, String str) {
        if (obj == null) {
            throw new RuntimeException(str);
        }
    }
}
