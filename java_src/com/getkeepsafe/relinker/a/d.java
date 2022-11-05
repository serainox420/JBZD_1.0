package com.getkeepsafe.relinker.a;

import com.getkeepsafe.relinker.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Elf32Header.java */
/* loaded from: classes2.dex */
public class d extends c.b {
    private final f j;

    public d(boolean z, f fVar) throws IOException {
        this.f3112a = z;
        this.j = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = fVar.d(allocate, 16L);
        this.c = fVar.c(allocate, 28L);
        this.d = fVar.c(allocate, 32L);
        this.e = fVar.d(allocate, 42L);
        this.f = fVar.d(allocate, 44L);
        this.g = fVar.d(allocate, 46L);
        this.h = fVar.d(allocate, 48L);
        this.i = fVar.d(allocate, 50L);
    }

    @Override // com.getkeepsafe.relinker.a.c.b
    public c.d a(int i) throws IOException {
        return new i(this.j, this, i);
    }

    @Override // com.getkeepsafe.relinker.a.c.b
    public c.AbstractC0128c a(long j) throws IOException {
        return new g(this.j, this, j);
    }

    @Override // com.getkeepsafe.relinker.a.c.b
    public c.a a(long j, int i) throws IOException {
        return new a(this.j, this, j, i);
    }
}
