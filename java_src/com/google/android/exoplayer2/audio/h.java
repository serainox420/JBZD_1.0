package com.google.android.exoplayer2.audio;

import com.flurry.android.Constants;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: ResamplingAudioProcessor.java */
/* loaded from: classes2.dex */
final class h implements AudioProcessor {
    private int b = -1;
    private int c = -1;
    private int d = 0;
    private ByteBuffer e = f3152a;
    private ByteBuffer f = f3152a;
    private boolean g;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 != 3 && i3 != 2 && i3 != Integer.MIN_VALUE && i3 != 1073741824) {
            throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
        }
        if (this.b == i && this.c == i2 && this.d == i3) {
            return false;
        }
        this.b = i;
        this.c = i2;
        this.d = i3;
        if (i3 == 2) {
            this.e = f3152a;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a() {
        return (this.d == 0 || this.d == 2) ? false : true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public int b() {
        return this.c;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public int c() {
        return 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void a(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        switch (this.d) {
            case Integer.MIN_VALUE:
                i = (i2 / 3) * 2;
                break;
            case 3:
                i = i2 * 2;
                break;
            case 1073741824:
                i = i2 / 2;
                break;
            default:
                throw new IllegalStateException();
        }
        if (this.e.capacity() < i) {
            this.e = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.e.clear();
        }
        switch (this.d) {
            case Integer.MIN_VALUE:
                while (position < limit) {
                    this.e.put(byteBuffer.get(position + 1));
                    this.e.put(byteBuffer.get(position + 2));
                    position += 3;
                }
                break;
            case 3:
                while (position < limit) {
                    this.e.put((byte) 0);
                    this.e.put((byte) ((byteBuffer.get(position) & Constants.UNKNOWN) - 128));
                    position++;
                }
                break;
            case 1073741824:
                for (int i3 = position; i3 < limit; i3 += 4) {
                    this.e.put(byteBuffer.get(i3 + 2));
                    this.e.put(byteBuffer.get(i3 + 3));
                }
                break;
            default:
                throw new IllegalStateException();
        }
        byteBuffer.position(byteBuffer.limit());
        this.e.flip();
        this.f = this.e;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d() {
        this.g = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer e() {
        ByteBuffer byteBuffer = this.f;
        this.f = f3152a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean f() {
        return this.g && this.f == f3152a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void g() {
        this.f = f3152a;
        this.g = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void h() {
        g();
        this.e = f3152a;
    }
}
