package com.getkeepsafe.relinker.a;

import com.getkeepsafe.relinker.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Elf64Header.java */
/* loaded from: classes2.dex */
public class e extends c.b {
    private final f j;

    public e(boolean z, f fVar) throws IOException {
        this.f3112a = z;
        this.j = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = fVar.d(allocate, 16L);
        this.c = fVar.b(allocate, 32L);
        this.d = fVar.b(allocate, 40L);
        this.e = fVar.d(allocate, 54L);
        this.f = fVar.d(allocate, 56L);
        this.g = fVar.d(allocate, 58L);
        this.h = fVar.d(allocate, 60L);
        this.i = fVar.d(allocate, 62L);
    }

    @Override // com.getkeepsafe.relinker.a.c.b
    public c.d a(int i) throws IOException {
        return new j(this.j, this, i);
    }

    @Override // com.getkeepsafe.relinker.a.c.b
    public c.AbstractC0128c a(long j) throws IOException {
        return new h(this.j, this, j);
    }

    @Override // com.getkeepsafe.relinker.a.c.b
    public c.a a(long j, int i) throws IOException {
        return new b(this.j, this, j, i);
    }
}
