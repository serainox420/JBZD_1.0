package com.smartadserver.android.library.ui.a.b;

import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SASOrientationProvider.java */
/* loaded from: classes3.dex */
public abstract class b implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    protected final Object f5601a = new Object();
    protected List<Sensor> b = new ArrayList();
    protected final com.smartadserver.android.library.ui.a.c.b c = new com.smartadserver.android.library.ui.a.c.b();
    protected final com.smartadserver.android.library.ui.a.c.c d = new com.smartadserver.android.library.ui.a.c.c();
    protected float e;
    protected SensorManager f;
    protected c g;

    public b(SensorManager sensorManager) {
        this.f = sensorManager;
    }

    public void a() {
        for (Sensor sensor : this.b) {
            this.f.registerListener(this, sensor, 1);
        }
    }

    public void b() {
        for (Sensor sensor : this.b) {
            this.f.unregisterListener(this, sensor);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public com.smartadserver.android.library.ui.a.c.b c() {
        com.smartadserver.android.library.ui.a.c.b bVar;
        synchronized (this.f5601a) {
            bVar = this.c;
        }
        return bVar;
    }

    public float d() {
        return this.e;
    }

    public void a(c cVar) {
        this.g = cVar;
    }
}
