package com.smartadserver.android.library.controller.mraid.a;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smartadserver.android.library.controller.mraid.e;
import java.util.List;
/* compiled from: SASAccelerationListener.java */
/* loaded from: classes3.dex */
public class a implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    e f5414a;
    private SensorManager e;
    private long g;
    private int h;
    private long i;
    private long j;
    private float[] k;
    private boolean m;
    private boolean n;
    int b = 0;
    int c = 0;
    int d = 0;
    private int f = 3;
    private float[] l = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] o = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] p = {-1.0f, -1.0f, -1.0f};

    public a(Context context, e eVar) {
        this.f5414a = eVar;
        this.e = (SensorManager) context.getSystemService("sensor");
    }

    public void a(int i) {
        this.f = i;
        if (this.b > 0 || this.c > 0) {
            g();
            j();
        }
    }

    public void a() {
        if (this.b == 0) {
            j();
        }
        this.b++;
    }

    public void b() {
        if (this.b > 0) {
            int i = this.b - 1;
            this.b = i;
            if (i == 0) {
                g();
            }
        }
    }

    public void c() {
        if (this.c == 0) {
            a(1);
            j();
        }
        this.c++;
    }

    public void d() {
        if (this.c > 0) {
            int i = this.c - 1;
            this.c = i;
            if (i == 0) {
                a(3);
                g();
            }
        }
    }

    public void e() {
        if (this.d == 0) {
            i();
        }
        this.d++;
    }

    private void i() {
        List<Sensor> sensorList = this.e.getSensorList(2);
        if (sensorList.size() > 0) {
            this.e.registerListener(this, sensorList.get(0), this.f);
            j();
        }
    }

    public void f() {
        if (this.d > 0) {
            int i = this.d - 1;
            this.d = i;
            if (i == 0) {
                g();
            }
        }
    }

    private void j() {
        List<Sensor> sensorList = this.e.getSensorList(1);
        if (sensorList.size() > 0) {
            this.e.registerListener(this, sensorList.get(0), this.f);
        }
    }

    public void g() {
        if (this.d == 0 && this.c == 0 && this.b == 0) {
            this.e.unregisterListener(this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        switch (sensorEvent.sensor.getType()) {
            case 1:
                this.o = this.l;
                this.l = (float[]) sensorEvent.values.clone();
                this.n = true;
                break;
            case 2:
                this.k = (float[]) sensorEvent.values.clone();
                this.m = true;
                break;
        }
        if (this.k != null && this.l != null && this.n && this.m) {
            this.n = false;
            this.m = false;
            float[] fArr = new float[9];
            SensorManager.getRotationMatrix(fArr, new float[9], this.l, this.k);
            this.p = new float[3];
            SensorManager.getOrientation(fArr, this.p);
            this.f5414a.a(this.p[0]);
        }
        if (sensorEvent.sensor.getType() == 1) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.g > 500) {
                this.h = 0;
            }
            if (currentTimeMillis - this.i > 100) {
                if ((Math.abs(((((this.l[0] + this.l[1]) + this.l[2]) - this.o[0]) - this.o[1]) - this.o[2]) / ((float) (currentTimeMillis - this.i))) * 10000.0f > 500.0f) {
                    int i = this.h + 1;
                    this.h = i;
                    if (i >= 2 && currentTimeMillis - this.j > 1000) {
                        this.j = currentTimeMillis;
                        this.h = 0;
                        this.f5414a.b();
                    }
                    this.g = currentTimeMillis;
                }
                this.i = currentTimeMillis;
                this.f5414a.a(this.l[0], this.l[1], this.l[2]);
            }
        }
    }

    public void h() {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        try {
            g();
        } catch (Exception e) {
        }
    }
}
