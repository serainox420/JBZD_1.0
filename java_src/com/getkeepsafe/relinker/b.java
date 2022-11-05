package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;
/* compiled from: ReLinker.java */
/* loaded from: classes2.dex */
public class b {

    /* compiled from: ReLinker.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(Context context, String[] strArr, String str, File file, com.getkeepsafe.relinker.c cVar);
    }

    /* compiled from: ReLinker.java */
    /* renamed from: com.getkeepsafe.relinker.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0129b {
        void a(String str);

        String[] a();

        void b(String str);

        String c(String str);

        String d(String str);
    }

    /* compiled from: ReLinker.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a();

        void a(Throwable th);
    }

    /* compiled from: ReLinker.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(String str);
    }

    public static void a(Context context, String str, String str2) {
        a(context, str, str2, null);
    }

    public static void a(Context context, String str, String str2, c cVar) {
        new com.getkeepsafe.relinker.c().a(context, str, str2, cVar);
    }
}
