package com.facebook.ads.internal.i.b;

import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public final File f2184a;
    public final com.facebook.ads.internal.i.b.a.c b;
    public final com.facebook.ads.internal.i.b.a.a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(File file, com.facebook.ads.internal.i.b.a.c cVar, com.facebook.ads.internal.i.b.a.a aVar) {
        this.f2184a = file;
        this.b = cVar;
        this.c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File a(String str) {
        return new File(this.f2184a, this.b.a(str));
    }
}
