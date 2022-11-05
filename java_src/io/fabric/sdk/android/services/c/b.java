package io.fabric.sdk.android.services.c;

import android.content.Context;
import io.fabric.sdk.android.h;
import java.io.File;
/* compiled from: FileStoreImpl.java */
/* loaded from: classes3.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5657a;
    private final String b;
    private final String c;

    public b(h hVar) {
        if (hVar.getContext() == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.f5657a = hVar.getContext();
        this.b = hVar.getPath();
        this.c = "Android/" + this.f5657a.getPackageName();
    }

    @Override // io.fabric.sdk.android.services.c.a
    public File a() {
        return a(this.f5657a.getFilesDir());
    }

    File a(File file) {
        if (file != null) {
            if (!file.exists() && !file.mkdirs()) {
                io.fabric.sdk.android.c.h().d("Fabric", "Couldn't create file");
            } else {
                return file;
            }
        } else {
            io.fabric.sdk.android.c.h().a("Fabric", "Null File");
        }
        return null;
    }
}
