package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
/* compiled from: MediaCodecSelector.java */
/* loaded from: classes2.dex */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3308a = new b() { // from class: com.google.android.exoplayer2.mediacodec.b.1
        @Override // com.google.android.exoplayer2.mediacodec.b
        public a a(String str, boolean z) throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.a(str, z);
        }

        @Override // com.google.android.exoplayer2.mediacodec.b
        public a a() throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.a();
        }
    };

    a a() throws MediaCodecUtil.DecoderQueryException;

    a a(String str, boolean z) throws MediaCodecUtil.DecoderQueryException;
}
