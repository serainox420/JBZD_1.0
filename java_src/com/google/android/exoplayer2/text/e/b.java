package com.google.android.exoplayer2.text.e;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.e.e;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.util.ArrayList;
import java.util.Collections;
/* compiled from: Mp4WebvttDecoder.java */
/* loaded from: classes2.dex */
public final class b extends com.google.android.exoplayer2.text.c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f3445a = v.g("payl");
    private static final int b = v.g("sttg");
    private static final int c = v.g("vttc");
    private final l d;
    private final e.a e;

    public b() {
        super("Mp4WebvttDecoder");
        this.d = new l();
        this.e = new e.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.text.c
    /* renamed from: b */
    public c a(byte[] bArr, int i) throws SubtitleDecoderException {
        this.d.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.d.b() > 0) {
            if (this.d.b() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int m = this.d.m();
            if (this.d.m() == c) {
                arrayList.add(a(this.d, this.e, m - 8));
            } else {
                this.d.d(m - 8);
            }
        }
        return new c(arrayList);
    }

    private static com.google.android.exoplayer2.text.b a(l lVar, e.a aVar, int i) throws SubtitleDecoderException {
        aVar.a();
        while (i > 0) {
            if (i < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int m = lVar.m();
            int m2 = lVar.m();
            int i2 = m - 8;
            String str = new String(lVar.f3511a, lVar.d(), i2);
            lVar.d(i2);
            i = (i - 8) - i2;
            if (m2 == b) {
                f.a(str, aVar);
            } else if (m2 == f3445a) {
                f.a((String) null, str.trim(), aVar, Collections.emptyList());
            }
        }
        return aVar.b();
    }
}
