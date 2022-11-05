package com.adcolony.sdk;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar {

    /* renamed from: a  reason: collision with root package name */
    final String f1066a = "AdColonyTest";
    String b;
    Runnable c;
    int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(Runnable runnable, String str, int i) {
        this.c = runnable;
        this.b = str;
        this.d = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.c.run();
    }

    void b() {
        Log.i("AdColonyTest", "Test for " + this.b + " has completed.");
        Log.i("AdColonyTest", "Passed: true");
        Log.i("AdColonyTest", "---------------------------------------------------------");
        a.m.n.a(true);
    }

    void a(String str) {
        Log.i("AdColonyTest", "Test for " + this.b + " has completed.");
        Log.i("AdColonyTest", "Passed: false");
        Log.i("AdColonyTest", "Reason: " + str);
        Log.i("AdColonyTest", "---------------------------------------------------------");
        a.m.n.a(false);
    }
}
