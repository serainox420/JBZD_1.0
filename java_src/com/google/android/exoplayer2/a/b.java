package com.google.android.exoplayer2.a;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.google.android.exoplayer2.util.v;
/* compiled from: CryptoInfo.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f3146a;
    public byte[] b;
    public int c;
    public int[] d;
    public int[] e;
    public int f;
    private final MediaCodec.CryptoInfo g;

    public b() {
        this.g = v.f3519a >= 16 ? b() : null;
    }

    public void a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.f = i;
        this.d = iArr;
        this.e = iArr2;
        this.b = bArr;
        this.f3146a = bArr2;
        this.c = i2;
        if (v.f3519a >= 16) {
            c();
        }
    }

    @TargetApi(16)
    public MediaCodec.CryptoInfo a() {
        return this.g;
    }

    @TargetApi(16)
    private MediaCodec.CryptoInfo b() {
        return new MediaCodec.CryptoInfo();
    }

    @TargetApi(16)
    private void c() {
        this.g.set(this.f, this.d, this.e, this.b, this.f3146a, this.c);
    }
}
