package com.google.android.exoplayer2.extractor.a;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.g;
import java.io.IOException;
/* compiled from: EbmlReaderOutput.java */
/* loaded from: classes2.dex */
interface c {
    int a(int i);

    void a(int i, double d) throws ParserException;

    void a(int i, int i2, g gVar) throws IOException, InterruptedException;

    void a(int i, long j) throws ParserException;

    void a(int i, long j, long j2) throws ParserException;

    void a(int i, String str) throws ParserException;

    boolean b(int i);

    void c(int i) throws ParserException;
}
