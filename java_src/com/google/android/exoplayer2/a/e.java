package com.google.android.exoplayer2.a;

import java.nio.ByteBuffer;
/* compiled from: DecoderInputBuffer.java */
/* loaded from: classes2.dex */
public class e extends a {

    /* renamed from: a  reason: collision with root package name */
    public final b f3148a = new b();
    public ByteBuffer b;
    public long c;
    private final int d;

    public e(int i) {
        this.d = i;
    }

    public void e(int i) throws IllegalStateException {
        if (this.b == null) {
            this.b = f(i);
            return;
        }
        int capacity = this.b.capacity();
        int position = this.b.position();
        int i2 = position + i;
        if (capacity < i2) {
            ByteBuffer f = f(i2);
            if (position > 0) {
                this.b.position(0);
                this.b.limit(position);
                f.put(this.b);
            }
            this.b = f;
        }
    }

    public final boolean e() {
        return d(1073741824);
    }

    public final void f() {
        this.b.flip();
    }

    @Override // com.google.android.exoplayer2.a.a
    public void a() {
        super.a();
        if (this.b != null) {
            this.b.clear();
        }
    }

    private ByteBuffer f(int i) {
        if (this.d == 1) {
            return ByteBuffer.allocate(i);
        }
        if (this.d == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        throw new IllegalStateException("Buffer too small (" + (this.b == null ? 0 : this.b.capacity()) + " < " + i + ")");
    }
}
