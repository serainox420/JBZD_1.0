package com.adcolony.sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class by extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private bu f1218a;
    private HashMap<bv, Runnable> b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(Looper looper) {
        super(looper);
        this.f1218a = new bu();
        this.b = new HashMap<>();
    }

    void a(final bv bvVar, final bt btVar) {
        post(new Runnable() { // from class: com.adcolony.sdk.by.1
            @Override // java.lang.Runnable
            public void run() {
                by.this.f1218a.a(bvVar, btVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final bv bvVar) {
        post(new Runnable() { // from class: com.adcolony.sdk.by.2
            @Override // java.lang.Runnable
            public void run() {
                by.this.f1218a.a(bvVar);
            }
        });
    }

    void a(final bv bvVar, final bt btVar, long j) {
        postDelayed(new Runnable() { // from class: com.adcolony.sdk.by.3
            @Override // java.lang.Runnable
            public void run() {
                by.this.f1218a.a(bvVar, btVar);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final bv bvVar, long j) {
        postDelayed(new Runnable() { // from class: com.adcolony.sdk.by.4
            @Override // java.lang.Runnable
            public void run() {
                by.this.f1218a.a(bvVar);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(final bv bvVar, long j) {
        Runnable runnable = new Runnable() { // from class: com.adcolony.sdk.by.5
            @Override // java.lang.Runnable
            public void run() {
                by.this.f1218a.a(bvVar);
            }
        };
        this.b.put(bvVar, runnable);
        postDelayed(runnable, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(bv bvVar) {
        if (this.b.containsKey(bvVar)) {
            removeCallbacks(this.b.get(bvVar));
            this.b.remove(bvVar);
        }
    }
}
