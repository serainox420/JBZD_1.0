package com.google.android.exoplayer2.text.d;

import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.l;
/* compiled from: Tx3gDecoder.java */
/* loaded from: classes2.dex */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final l f3442a;

    public a() {
        super("Tx3gDecoder");
        this.f3442a = new l();
    }

    @Override // com.google.android.exoplayer2.text.c
    protected e a(byte[] bArr, int i) {
        this.f3442a.a(bArr, i);
        int g = this.f3442a.g();
        if (g == 0) {
            return b.f3443a;
        }
        return new b(new com.google.android.exoplayer2.text.b(this.f3442a.e(g)));
    }
}
