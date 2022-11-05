package com.getkeepsafe.relinker.a;

import com.getkeepsafe.relinker.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Section32Header.java */
/* loaded from: classes2.dex */
public class i extends c.d {
    public i(f fVar, c.b bVar, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(bVar.f3112a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f3114a = fVar.c(allocate, bVar.d + (bVar.g * i) + 28);
    }
}
