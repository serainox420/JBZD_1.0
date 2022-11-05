package com.smartadserver.android.library.ui.a.b;

import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.util.Log;
import com.smartadserver.android.library.ui.a.c.d;
/* compiled from: SASImprovedOrientationSensorProvider.java */
/* loaded from: classes3.dex */
public class a extends b {
    private final com.smartadserver.android.library.ui.a.c.c h;
    private com.smartadserver.android.library.ui.a.c.c i;
    private com.smartadserver.android.library.ui.a.c.c j;
    private long k;
    private double l;
    private boolean m;
    private int n;

    public a(SensorManager sensorManager) {
        super(sensorManager);
        this.h = new com.smartadserver.android.library.ui.a.c.c();
        this.i = new com.smartadserver.android.library.ui.a.c.c();
        this.j = new com.smartadserver.android.library.ui.a.c.c();
        this.l = 0.0d;
        this.m = false;
        this.b.add(sensorManager.getDefaultSensor(4));
        this.b.add(sensorManager.getDefaultSensor(11));
        this.b.add(sensorManager.getDefaultSensor(9));
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 11) {
            float[] fArr = new float[4];
            SensorManager.getQuaternionFromVector(fArr, sensorEvent.values);
            this.j.a(fArr[1], fArr[2], fArr[3], -fArr[0]);
            if (!this.m) {
                this.i.a(this.j);
                this.m = true;
            }
        } else if (sensorEvent.sensor.getType() == 4) {
            if (this.k != 0) {
                float f = ((float) (sensorEvent.timestamp - this.k)) * 1.0E-9f;
                float f2 = sensorEvent.values[0];
                float f3 = sensorEvent.values[1];
                float f4 = sensorEvent.values[2];
                this.l = Math.sqrt((f2 * f2) + (f3 * f3) + (f4 * f4));
                if (this.l > 0.10000000149011612d) {
                    f2 = (float) (f2 / this.l);
                    f3 = (float) (f3 / this.l);
                    f4 = (float) (f4 / this.l);
                }
                double d = (this.l * f) / 2.0d;
                double sin = Math.sin(d);
                double cos = Math.cos(d);
                this.h.a((float) (f2 * sin));
                this.h.b((float) (f3 * sin));
                this.h.c((float) (f4 * sin));
                this.h.d(-((float) cos));
                this.h.a(this.i, this.i);
                float b = this.i.b(this.j);
                if (Math.abs(b) < 0.85f) {
                    if (Math.abs(b) < 0.75f) {
                        this.n++;
                    }
                    a(this.i);
                } else {
                    com.smartadserver.android.library.ui.a.c.c cVar = new com.smartadserver.android.library.ui.a.c.c();
                    this.i.a(this.j, cVar, (float) (0.009999999776482582d * this.l));
                    a(cVar);
                    this.i.a((d) cVar);
                    this.n = 0;
                }
                if (this.n > 60) {
                    Log.d("Rotation Vector", "Panic counter is bigger than threshold; this indicates a Gyroscope failure. Panic reset is imminent.");
                    if (this.l < 3.0d) {
                        Log.d("Rotation Vector", "Performing Panic-reset. Resetting orientation to rotation-vector value.");
                        a(this.j);
                        this.i.a((d) this.j);
                        this.n = 0;
                    } else {
                        Log.d("Rotation Vector", String.format("Panic reset delayed due to ongoing motion (user is still shaking the device). Gyroscope Velocity: %.2f > 3", Double.valueOf(this.l)));
                    }
                }
            }
            this.k = sensorEvent.timestamp;
        } else if (sensorEvent.sensor.getType() == 9) {
            this.e = sensorEvent.values[2];
        }
        if (this.g != null) {
            this.g.a();
        }
    }

    private void a(com.smartadserver.android.library.ui.a.c.c cVar) {
        com.smartadserver.android.library.ui.a.c.c clone = cVar.clone();
        clone.e(-clone.h());
        synchronized (this.f5601a) {
            this.d.a((d) cVar);
            SensorManager.getRotationMatrixFromVector(this.c.g, clone.c());
        }
    }
}
