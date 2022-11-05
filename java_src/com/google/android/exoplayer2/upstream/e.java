package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
/* compiled from: DataSource.java */
/* loaded from: classes2.dex */
public interface e {

    /* compiled from: DataSource.java */
    /* loaded from: classes2.dex */
    public interface a {
        e a();
    }

    int a(byte[] bArr, int i, int i2) throws IOException;

    long a(g gVar) throws IOException;

    void a() throws IOException;

    Uri b();
}
