package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.d.h;
import com.google.android.exoplayer2.extractor.d.k;
import com.google.android.exoplayer2.util.l;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: VorbisReader.java */
/* loaded from: classes2.dex */
final class j extends h {

    /* renamed from: a  reason: collision with root package name */
    private a f3249a;
    private int b;
    private boolean c;
    private k.d d;
    private k.b e;

    public static boolean a(l lVar) {
        try {
            return k.a(1, lVar, true);
        } catch (ParserException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.d.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.f3249a = null;
            this.d = null;
            this.e = null;
        }
        this.b = 0;
        this.c = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.d.h
    public void c(long j) {
        int i = 0;
        super.c(j);
        this.c = j != 0;
        if (this.d != null) {
            i = this.d.g;
        }
        this.b = i;
    }

    @Override // com.google.android.exoplayer2.extractor.d.h
    protected long b(l lVar) {
        int i = 0;
        if ((lVar.f3511a[0] & 1) == 1) {
            return -1L;
        }
        int a2 = a(lVar.f3511a[0], this.f3249a);
        if (this.c) {
            i = (this.b + a2) / 4;
        }
        a(lVar, i);
        this.c = true;
        this.b = a2;
        return i;
    }

    @Override // com.google.android.exoplayer2.extractor.d.h
    protected boolean a(l lVar, long j, h.a aVar) throws IOException, InterruptedException {
        if (this.f3249a != null) {
            return false;
        }
        this.f3249a = c(lVar);
        if (this.f3249a == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f3249a.f3250a.j);
        arrayList.add(this.f3249a.c);
        aVar.f3247a = Format.a(null, "audio/vorbis", null, this.f3249a.f3250a.e, 65025, this.f3249a.f3250a.b, (int) this.f3249a.f3250a.c, arrayList, null, 0, null);
        return true;
    }

    a c(l lVar) throws IOException {
        if (this.d == null) {
            this.d = k.a(lVar);
            return null;
        } else if (this.e == null) {
            this.e = k.b(lVar);
            return null;
        } else {
            byte[] bArr = new byte[lVar.c()];
            System.arraycopy(lVar.f3511a, 0, bArr, 0, lVar.c());
            k.c[] a2 = k.a(lVar, this.d.b);
            return new a(this.d, this.e, bArr, a2, k.a(a2.length - 1));
        }
    }

    static int a(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    static void a(l lVar, long j) {
        lVar.b(lVar.c() + 4);
        lVar.f3511a[lVar.c() - 4] = (byte) (j & 255);
        lVar.f3511a[lVar.c() - 3] = (byte) ((j >>> 8) & 255);
        lVar.f3511a[lVar.c() - 2] = (byte) ((j >>> 16) & 255);
        lVar.f3511a[lVar.c() - 1] = (byte) ((j >>> 24) & 255);
    }

    private static int a(byte b, a aVar) {
        if (!aVar.d[a(b, aVar.e, 1)].f3253a) {
            return aVar.f3250a.g;
        }
        return aVar.f3250a.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VorbisReader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final k.d f3250a;
        public final k.b b;
        public final byte[] c;
        public final k.c[] d;
        public final int e;

        public a(k.d dVar, k.b bVar, byte[] bArr, k.c[] cVarArr, int i) {
            this.f3250a = dVar;
            this.b = bVar;
            this.c = bArr;
            this.d = cVarArr;
            this.e = i;
        }
    }
}
