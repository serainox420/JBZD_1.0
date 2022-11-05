package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.l;
/* loaded from: classes2.dex */
abstract class TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    protected final n f3283a;

    protected abstract void a(l lVar, long j) throws ParserException;

    protected abstract boolean a(l lVar) throws ParserException;

    /* loaded from: classes2.dex */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TagPayloadReader(n nVar) {
        this.f3283a = nVar;
    }

    public final void b(l lVar, long j) throws ParserException {
        if (a(lVar)) {
            a(lVar, j);
        }
    }
}
