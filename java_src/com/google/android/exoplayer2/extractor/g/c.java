package com.google.android.exoplayer2.extractor.g;

import android.util.Log;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: WavHeaderReader.java */
/* loaded from: classes2.dex */
final class c {
    public static b a(g gVar) throws IOException, InterruptedException {
        com.google.android.exoplayer2.util.a.a(gVar);
        l lVar = new l(16);
        if (a.a(gVar, lVar).f3287a != v.g("RIFF")) {
            return null;
        }
        gVar.c(lVar.f3511a, 0, 4);
        lVar.c(0);
        int m = lVar.m();
        if (m != v.g("WAVE")) {
            Log.e("WavHeaderReader", "Unsupported RIFF format: " + m);
            return null;
        }
        a a2 = a.a(gVar, lVar);
        while (a2.f3287a != v.g("fmt ")) {
            gVar.c((int) a2.b);
            a2 = a.a(gVar, lVar);
        }
        com.google.android.exoplayer2.util.a.b(a2.b >= 16);
        gVar.c(lVar.f3511a, 0, 16);
        lVar.c(0);
        int h = lVar.h();
        int h2 = lVar.h();
        int t = lVar.t();
        int t2 = lVar.t();
        int h3 = lVar.h();
        int h4 = lVar.h();
        int i = (h2 * h4) / 8;
        if (h3 != i) {
            throw new ParserException("Expected block alignment: " + i + "; got: " + h3);
        }
        int b = v.b(h4);
        if (b == 0) {
            Log.e("WavHeaderReader", "Unsupported WAV bit depth: " + h4);
            return null;
        } else if (h != 1 && h != 65534) {
            Log.e("WavHeaderReader", "Unsupported WAV format type: " + h);
            return null;
        } else {
            gVar.c(((int) a2.b) - 16);
            return new b(h2, t, t2, h3, h4, b);
        }
    }

    public static void a(g gVar, b bVar) throws IOException, InterruptedException {
        com.google.android.exoplayer2.util.a.a(gVar);
        com.google.android.exoplayer2.util.a.a(bVar);
        gVar.a();
        l lVar = new l(8);
        a a2 = a.a(gVar, lVar);
        while (a2.f3287a != v.g("data")) {
            Log.w("WavHeaderReader", "Ignoring unknown WAV chunk: " + a2.f3287a);
            long j = 8 + a2.b;
            if (a2.f3287a == v.g("RIFF")) {
                j = 12;
            }
            if (j > 2147483647L) {
                throw new ParserException("Chunk is too large (~2GB+) to skip; id: " + a2.f3287a);
            }
            gVar.b((int) j);
            a2 = a.a(gVar, lVar);
        }
        gVar.b(8);
        bVar.a(gVar.c(), a2.b);
    }

    /* compiled from: WavHeaderReader.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3287a;
        public final long b;

        private a(int i, long j) {
            this.f3287a = i;
            this.b = j;
        }

        public static a a(g gVar, l lVar) throws IOException, InterruptedException {
            gVar.c(lVar.f3511a, 0, 8);
            lVar.c(0);
            return new a(lVar.m(), lVar.l());
        }
    }
}
