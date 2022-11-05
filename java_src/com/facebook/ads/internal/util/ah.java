package com.facebook.ads.internal.util;

import android.graphics.Rect;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ah {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2227a = ah.class.getSimpleName();
    private boolean b;
    private int c = -1;
    private int d = -1;
    private long e = -1;
    private int f = -1;
    private long g = -1;
    private long h = -1;
    private int i = -1;
    private int j = -1;
    private int k = -1;
    private int l = -1;
    private float m = -1.0f;
    private float n = -1.0f;
    private float o = -1.0f;

    public void a() {
        this.e = System.currentTimeMillis();
    }

    public void a(MotionEvent motionEvent, View view, View view2) {
        if (!this.b) {
            this.b = true;
            InputDevice device = motionEvent.getDevice();
            if (device != null) {
                this.o = Math.min(device.getMotionRange(0).getRange(), device.getMotionRange(1).getRange());
            } else {
                this.o = Math.min(view.getMeasuredWidth(), view.getMeasuredHeight());
            }
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        view2.getLocationInWindow(iArr2);
        switch (motionEvent.getAction()) {
            case 0:
                this.c = view.getWidth();
                this.d = view.getHeight();
                this.f = 1;
                this.g = System.currentTimeMillis();
                this.i = (((int) (motionEvent.getX() + 0.5f)) + iArr2[0]) - iArr[0];
                this.j = (iArr2[1] + ((int) (motionEvent.getY() + 0.5f))) - iArr[1];
                this.m = motionEvent.getPressure();
                this.n = motionEvent.getSize();
                return;
            case 1:
            case 3:
                this.h = System.currentTimeMillis();
                this.k = (((int) (motionEvent.getX() + 0.5f)) + iArr2[0]) - iArr[0];
                this.l = (iArr2[1] + ((int) (motionEvent.getY() + 0.5f))) - iArr[1];
                return;
            case 2:
                this.m -= this.m / this.f;
                this.m += motionEvent.getPressure() / this.f;
                this.n -= this.n / this.f;
                this.n += motionEvent.getSize() / this.f;
                this.f++;
                return;
            default:
                return;
        }
    }

    public boolean a(int i) {
        if (!d() || this.k == -1 || this.l == -1 || this.c == -1 || this.d == -1) {
            return false;
        }
        int i2 = (this.d * i) / 100;
        int i3 = (this.c * i) / 100;
        return !new Rect(i3, i2, this.c - i3, this.d - i2).contains(this.k, this.l);
    }

    public boolean b() {
        return this.e != -1;
    }

    public long c() {
        if (b()) {
            return System.currentTimeMillis() - this.e;
        }
        return -1L;
    }

    public boolean d() {
        return this.b;
    }

    public Map<String, String> e() {
        if (!this.b) {
            return null;
        }
        String valueOf = String.valueOf((this.n * this.o) / 2.0f);
        long j = (this.e <= 0 || this.h <= this.e) ? -1L : this.h - this.e;
        HashMap hashMap = new HashMap();
        hashMap.put("width", String.valueOf(this.c));
        hashMap.put("height", String.valueOf(this.d));
        hashMap.put("clickDelayTime", String.valueOf(j));
        hashMap.put("startTime", String.valueOf(this.g));
        hashMap.put("endTime", String.valueOf(this.h));
        hashMap.put("startX", String.valueOf(this.i));
        hashMap.put("startY", String.valueOf(this.j));
        hashMap.put("clickX", String.valueOf(this.k));
        hashMap.put("clickY", String.valueOf(this.l));
        hashMap.put("endX", String.valueOf(this.k));
        hashMap.put("endY", String.valueOf(this.l));
        hashMap.put("force", String.valueOf(this.m));
        hashMap.put("radiusX", valueOf);
        hashMap.put("radiusY", valueOf);
        return hashMap;
    }
}
