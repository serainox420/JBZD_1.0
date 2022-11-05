package android.support.multidex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
/* compiled from: ZipUtil.java */
/* loaded from: classes.dex */
final class c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ZipUtil.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f161a;
        long b;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return a(randomAccessFile, a(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }

    static a a(RandomAccessFile randomAccessFile) throws IOException, ZipException {
        long j = 0;
        long length = randomAccessFile.length() - 22;
        if (length < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        long j2 = length - 65536;
        if (j2 >= 0) {
            j = j2;
        }
        int reverseBytes = Integer.reverseBytes(101010256);
        long j3 = length;
        do {
            randomAccessFile.seek(j3);
            if (randomAccessFile.readInt() != reverseBytes) {
                j3--;
            } else {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                a aVar = new a();
                aVar.b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                aVar.f161a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                return aVar;
            }
        } while (j3 >= j);
        throw new ZipException("End Of Central Directory signature not found");
    }

    static long a(RandomAccessFile randomAccessFile, a aVar) throws IOException {
        CRC32 crc32 = new CRC32();
        long j = aVar.b;
        randomAccessFile.seek(aVar.f161a);
        byte[] bArr = new byte[16384];
        int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
        while (read != -1) {
            crc32.update(bArr, 0, read);
            j -= read;
            if (j == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
        }
        return crc32.getValue();
    }
}
