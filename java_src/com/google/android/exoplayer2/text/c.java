package com.google.android.exoplayer2.text;

import java.nio.ByteBuffer;
/* compiled from: SimpleSubtitleDecoder.java */
/* loaded from: classes2.dex */
public abstract class c extends com.google.android.exoplayer2.a.g<h, i, SubtitleDecoderException> implements f {

    /* renamed from: a  reason: collision with root package name */
    private final String f3435a;

    protected abstract e a(byte[] bArr, int i) throws SubtitleDecoderException;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str) {
        super(new h[2], new i[2]);
        this.f3435a = str;
        a(1024);
    }

    @Override // com.google.android.exoplayer2.text.f
    public void a(long j) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a.g
    /* renamed from: i */
    public final h g() {
        return new h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a.g
    /* renamed from: j */
    public final i h() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a.g
    public final void a(i iVar) {
        super.a((c) iVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a.g
    public final SubtitleDecoderException a(h hVar, i iVar, boolean z) {
        try {
            ByteBuffer byteBuffer = hVar.b;
            iVar.a(hVar.c, a(byteBuffer.array(), byteBuffer.limit()), hVar.d);
            iVar.c(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }
}
