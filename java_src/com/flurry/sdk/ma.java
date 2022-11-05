package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public abstract class ma implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3053a = ma.class.getSimpleName();
    PrintStream u;
    PrintWriter v;

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Throwable th) {
            if (this.u != null) {
                th.printStackTrace(this.u);
            } else if (this.v != null) {
                th.printStackTrace(this.v);
            } else {
                th.printStackTrace();
            }
            km.a(6, f3053a, "", th);
        }
    }
}
