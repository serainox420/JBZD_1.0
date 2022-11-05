package com.smaato.soma.internal.a;

import android.content.Context;
import android.content.pm.PackageManager;
/* compiled from: AppLink.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    String f4968a;
    String b;
    String c;
    String d;

    public String a() {
        return this.f4968a;
    }

    public void a(String str) {
        this.f4968a = str;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public void c(String str) {
        this.c = str;
    }

    public String c() {
        return this.d;
    }

    public void d(String str) {
        this.d = str;
    }

    public boolean a(Context context) {
        if (b() == null || b().length() < 1) {
            return false;
        }
        return a(b(), context);
    }

    private boolean a(String str, Context context) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("App Name : ");
        stringBuffer.append(this.d);
        stringBuffer.append("App URL : ");
        stringBuffer.append(this.f4968a);
        stringBuffer.append("App Package : ");
        stringBuffer.append(this.b);
        stringBuffer.append("App Class : ");
        stringBuffer.append(this.c);
        return stringBuffer.toString();
    }
}
