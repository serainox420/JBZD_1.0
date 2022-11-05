package com.getkeepsafe.relinker.a;

import com.getkeepsafe.relinker.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Program64Header.java */
/* loaded from: classes2.dex */
public class h extends c.AbstractC0128c {
    public h(f fVar, c.b bVar, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.f3112a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = bVar.c + (bVar.e * j);
        this.f3113a = fVar.c(allocate, j2);
        this.b = fVar.b(allocate, 8 + j2);
        this.c = fVar.b(allocate, 16 + j2);
        this.d = fVar.b(allocate, j2 + 40);
    }
}
