package com.google.android.exoplayer2.extractor.d;

import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.d.h;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import com.mopub.volley.DefaultRetryPolicy;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: OpusReader.java */
/* loaded from: classes2.dex */
final class g extends h {

    /* renamed from: a  reason: collision with root package name */
    private static final int f3245a = v.g("Opus");
    private static final byte[] b = {79, 112, 117, 115, 72, 101, 97, 100};
    private boolean c;

    public static boolean a(l lVar) {
        if (lVar.b() < b.length) {
            return false;
        }
        byte[] bArr = new byte[b.length];
        lVar.a(bArr, 0, b.length);
        return Arrays.equals(bArr, b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.d.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.c = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.d.h
    protected long b(l lVar) {
        return b(a(lVar.f3511a));
    }

    @Override // com.google.android.exoplayer2.extractor.d.h
    protected boolean a(l lVar, long j, h.a aVar) throws IOException, InterruptedException {
        if (!this.c) {
            byte[] copyOf = Arrays.copyOf(lVar.f3511a, lVar.c());
            int i = copyOf[9] & Constants.UNKNOWN;
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(copyOf);
            a(arrayList, ((copyOf[11] & Constants.UNKNOWN) << 8) | (copyOf[10] & Constants.UNKNOWN));
            a(arrayList, 3840);
            aVar.f3247a = Format.a(null, "audio/opus", null, -1, -1, i, 48000, arrayList, null, 0, null);
            this.c = true;
            return true;
        }
        boolean z = lVar.m() == f3245a;
        lVar.c(0);
        return z;
    }

    private void a(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }

    private long a(byte[] bArr) {
        int i;
        int i2;
        int i3 = bArr[0] & Constants.UNKNOWN;
        switch (i3 & 3) {
            case 0:
                i = 1;
                break;
            case 1:
            case 2:
                i = 2;
                break;
            default:
                i = bArr[1] & 63;
                break;
        }
        int i4 = i3 >> 3;
        int i5 = i4 & 3;
        if (i4 >= 16) {
            i2 = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS << i5;
        } else if (i4 >= 12) {
            i2 = 10000 << (i5 & 1);
        } else if (i5 == 3) {
            i2 = 60000;
        } else {
            i2 = 10000 << i5;
        }
        return i2 * i;
    }
}
