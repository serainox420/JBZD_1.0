package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* compiled from: ChannelMappingAudioProcessor.java */
/* loaded from: classes2.dex */
final class e implements AudioProcessor {
    private int b;
    private int c;
    private int[] d;
    private boolean e;
    private int[] f;
    private ByteBuffer g = f3152a;
    private ByteBuffer h = f3152a;
    private boolean i;

    public void a(int[] iArr) {
        this.d = iArr;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        boolean z = !Arrays.equals(this.d, this.f);
        this.f = this.d;
        if (this.f == null) {
            this.e = false;
            return z;
        } else if (i3 != 2) {
            throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
        } else {
            if (!z && this.c == i && this.b == i2) {
                return false;
            }
            this.c = i;
            this.b = i2;
            this.e = i2 != this.f.length;
            int i4 = 0;
            while (i4 < this.f.length) {
                int i5 = this.f[i4];
                if (i5 >= i2) {
                    throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
                }
                this.e = (i5 != i4) | this.e;
                i4++;
            }
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a() {
        return this.e;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public int b() {
        return this.f == null ? this.b : this.f.length;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public int c() {
        return 2;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void a(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = ((limit - position) / (this.b * 2)) * this.f.length * 2;
        if (this.g.capacity() < length) {
            this.g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
            i = position;
        } else {
            this.g.clear();
            i = position;
        }
        while (i < limit) {
            for (int i2 : this.f) {
                this.g.putShort(byteBuffer.getShort((i2 * 2) + i));
            }
            i = (this.b * 2) + i;
        }
        byteBuffer.position(limit);
        this.g.flip();
        this.h = this.g;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d() {
        this.i = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer e() {
        ByteBuffer byteBuffer = this.h;
        this.h = f3152a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean f() {
        return this.i && this.h == f3152a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void g() {
        this.h = f3152a;
        this.i = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void h() {
        g();
        this.g = f3152a;
    }
}
