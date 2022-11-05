package com.getkeepsafe.relinker.a;

import com.getkeepsafe.relinker.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Program32Header.java */
/* loaded from: classes2.dex */
public class g extends c.AbstractC0128c {
    public g(f fVar, c.b bVar, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(bVar.f3112a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = bVar.c + (bVar.e * j);
        this.f3113a = fVar.c(allocate, j2);
        this.b = fVar.c(allocate, 4 + j2);
        this.c = fVar.c(allocate, 8 + j2);
        this.d = fVar.c(allocate, j2 + 20);
    }
}
