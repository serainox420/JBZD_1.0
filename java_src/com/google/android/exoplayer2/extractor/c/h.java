package com.google.android.exoplayer2.extractor.c;

import android.util.Log;
import android.util.Pair;
import java.nio.ByteBuffer;
import java.util.UUID;
/* compiled from: PsshAtomUtil.java */
/* loaded from: classes2.dex */
public final class h {
    public static byte[] a(UUID uuid, byte[] bArr) {
        int length = bArr.length + 32;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(a.U);
        allocate.putInt(0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        allocate.putInt(bArr.length);
        allocate.put(bArr);
        return allocate.array();
    }

    public static UUID a(byte[] bArr) {
        Pair<UUID, byte[]> b = b(bArr);
        if (b == null) {
            return null;
        }
        return (UUID) b.first;
    }

    private static Pair<UUID, byte[]> b(byte[] bArr) {
        com.google.android.exoplayer2.util.l lVar = new com.google.android.exoplayer2.util.l(bArr);
        if (lVar.c() < 32) {
            return null;
        }
        lVar.c(0);
        if (lVar.m() != lVar.b() + 4 || lVar.m() != a.U) {
            return null;
        }
        int a2 = a.a(lVar.m());
        if (a2 > 1) {
            Log.w("PsshAtomUtil", "Unsupported pssh version: " + a2);
            return null;
        }
        UUID uuid = new UUID(lVar.o(), lVar.o());
        if (a2 == 1) {
            lVar.d(lVar.s() * 16);
        }
        int s = lVar.s();
        if (s != lVar.b()) {
            return null;
        }
        byte[] bArr2 = new byte[s];
        lVar.a(bArr2, 0, s);
        return Pair.create(uuid, bArr2);
    }
}
