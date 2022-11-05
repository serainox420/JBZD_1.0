package com.getkeepsafe.relinker.a;

import com.getkeepsafe.relinker.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Dynamic64Structure.java */
/* loaded from: classes2.dex */
public class b extends c.a {
    public b(f fVar, c.b bVar, long j, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(bVar.f3112a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = (i * 16) + j;
        this.f3111a = fVar.b(allocate, j2);
        this.b = fVar.b(allocate, j2 + 8);
    }
}
