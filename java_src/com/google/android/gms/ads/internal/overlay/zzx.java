package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@zzme
/* loaded from: classes.dex */
class zzx implements SensorEventListener {
    private final SensorManager zzOo;
    private final Display zzOq;
    private float[] zzOt;
    private Handler zzOu;
    private zza zzOv;
    private final float[] zzOr = new float[9];
    private final float[] zzOs = new float[9];
    private final Object zzOp = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        void zzhJ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(Context context) {
        this.zzOo = (SensorManager) context.getSystemService("sensor");
        this.zzOq = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private void zzi(int i, int i2) {
        float f = this.zzOs[i];
        this.zzOs[i] = this.zzOs[i2];
        this.zzOs[i2] = f;
    }

    int getRotation() {
        return this.zzOq.getRotation();
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        zza(sensorEvent.values);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void start() {
        if (this.zzOu != null) {
            return;
        }
        Sensor defaultSensor = this.zzOo.getDefaultSensor(11);
        if (defaultSensor == null) {
            zzpk.e("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        this.zzOu = new Handler(handlerThread.getLooper());
        if (this.zzOo.registerListener(this, defaultSensor, 0, this.zzOu)) {
            return;
        }
        zzpk.e("SensorManager.registerListener failed.");
        stop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stop() {
        if (this.zzOu == null) {
            return;
        }
        this.zzOo.unregisterListener(this);
        this.zzOu.post(new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.zzx.1
            @Override // java.lang.Runnable
            public void run() {
                Looper.myLooper().quit();
            }
        });
        this.zzOu = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zza zzaVar) {
        this.zzOv = zzaVar;
    }

    void zza(float[] fArr) {
        if (fArr[0] == BitmapDescriptorFactory.HUE_RED && fArr[1] == BitmapDescriptorFactory.HUE_RED && fArr[2] == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        synchronized (this.zzOp) {
            if (this.zzOt == null) {
                this.zzOt = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.zzOr, fArr);
        switch (getRotation()) {
            case 1:
                SensorManager.remapCoordinateSystem(this.zzOr, 2, 129, this.zzOs);
                break;
            case 2:
                SensorManager.remapCoordinateSystem(this.zzOr, 129, 130, this.zzOs);
                break;
            case 3:
                SensorManager.remapCoordinateSystem(this.zzOr, 130, 1, this.zzOs);
                break;
            default:
                System.arraycopy(this.zzOr, 0, this.zzOs, 0, 9);
                break;
        }
        zzi(1, 3);
        zzi(2, 6);
        zzi(5, 7);
        synchronized (this.zzOp) {
            System.arraycopy(this.zzOs, 0, this.zzOt, 0, 9);
        }
        if (this.zzOv == null) {
            return;
        }
        this.zzOv.zzhJ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzb(float[] fArr) {
        boolean z = false;
        synchronized (this.zzOp) {
            if (this.zzOt != null) {
                System.arraycopy(this.zzOt, 0, fArr, 0, this.zzOt.length);
                z = true;
            }
        }
        return z;
    }
}
