package com.google.android.exoplayer2.text.e;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.e.e;
import com.google.android.exoplayer2.util.l;
import java.util.ArrayList;
import java.util.List;
/* compiled from: WebvttDecoder.java */
/* loaded from: classes2.dex */
public final class g extends com.google.android.exoplayer2.text.c {

    /* renamed from: a  reason: collision with root package name */
    private final f f3453a;
    private final l b;
    private final e.a c;
    private final a d;
    private final List<d> e;

    public g() {
        super("WebvttDecoder");
        this.f3453a = new f();
        this.b = new l();
        this.c = new e.a();
        this.d = new a();
        this.e = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.text.c
    /* renamed from: b */
    public i a(byte[] bArr, int i) throws SubtitleDecoderException {
        this.b.a(bArr, i);
        this.c.a();
        this.e.clear();
        h.a(this.b);
        do {
        } while (!TextUtils.isEmpty(this.b.x()));
        ArrayList arrayList = new ArrayList();
        while (true) {
            int a2 = a(this.b);
            if (a2 != 0) {
                if (a2 == 1) {
                    b(this.b);
                } else if (a2 == 2) {
                    if (!arrayList.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.b.x();
                    d a3 = this.d.a(this.b);
                    if (a3 != null) {
                        this.e.add(a3);
                    }
                } else if (a2 == 3 && this.f3453a.a(this.b, this.c, this.e)) {
                    arrayList.add(this.c.b());
                    this.c.a();
                }
            } else {
                return new i(arrayList);
            }
        }
    }

    private static int a(l lVar) {
        int i;
        int i2 = 0;
        int i3 = -1;
        while (i3 == -1) {
            int d = lVar.d();
            String x = lVar.x();
            if (x == null) {
                i = 0;
            } else if ("STYLE".equals(x)) {
                i = 2;
            } else if ("NOTE".startsWith(x)) {
                i = 1;
            } else {
                i = 3;
            }
            i3 = i;
            i2 = d;
        }
        lVar.c(i2);
        return i3;
    }

    private static void b(l lVar) {
        do {
        } while (!TextUtils.isEmpty(lVar.x()));
    }
}
