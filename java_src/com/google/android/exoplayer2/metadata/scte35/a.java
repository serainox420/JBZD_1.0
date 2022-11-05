package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataDecoderException;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.util.k;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.s;
import java.nio.ByteBuffer;
/* compiled from: SpliceInfoDecoder.java */
/* loaded from: classes2.dex */
public final class a implements com.google.android.exoplayer2.metadata.a {

    /* renamed from: a  reason: collision with root package name */
    private final l f3331a = new l();
    private final k b = new k();
    private s c;

    @Override // com.google.android.exoplayer2.metadata.a
    public Metadata a(c cVar) throws MetadataDecoderException {
        SpliceCommand a2;
        if (this.c == null || cVar.d != this.c.c()) {
            this.c = new s(cVar.c);
            this.c.c(cVar.c - cVar.d);
        }
        ByteBuffer byteBuffer = cVar.b;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f3331a.a(array, limit);
        this.b.a(array, limit);
        this.b.b(39);
        long c = this.b.c(32) | (this.b.c(1) << 32);
        this.b.b(20);
        int c2 = this.b.c(12);
        int c3 = this.b.c(8);
        this.f3331a.d(14);
        switch (c3) {
            case 0:
                a2 = new SpliceNullCommand();
                break;
            case 4:
                a2 = SpliceScheduleCommand.a(this.f3331a);
                break;
            case 5:
                a2 = SpliceInsertCommand.a(this.f3331a, c, this.c);
                break;
            case 6:
                a2 = TimeSignalCommand.a(this.f3331a, c, this.c);
                break;
            case 255:
                a2 = PrivateCommand.a(this.f3331a, c2, c);
                break;
            default:
                a2 = null;
                break;
        }
        return a2 == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(a2);
    }
}
