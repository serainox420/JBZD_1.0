package okhttp3.internal.cache2;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import okio.c;
/* loaded from: classes3.dex */
final class FileOperator {
    private static final int BUFFER_SIZE = 8192;
    private final byte[] byteArray = new byte[8192];
    private final ByteBuffer byteBuffer = ByteBuffer.wrap(this.byteArray);
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
    }

    public void write(long j, c cVar, long j2) throws IOException {
        if (j2 < 0 || j2 > cVar.a()) {
            throw new IndexOutOfBoundsException();
        }
        long j3 = j;
        while (j2 > 0) {
            try {
                int min = (int) Math.min(8192L, j2);
                cVar.a(this.byteArray, 0, min);
                this.byteBuffer.limit(min);
                do {
                    j3 += this.fileChannel.write(this.byteBuffer, j3);
                } while (this.byteBuffer.hasRemaining());
                j2 -= min;
            } finally {
                this.byteBuffer.clear();
            }
        }
    }

    public void read(long j, c cVar, long j2) throws IOException {
        if (j2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j2 > 0) {
            try {
                this.byteBuffer.limit((int) Math.min(8192L, j2));
                if (this.fileChannel.read(this.byteBuffer, j) == -1) {
                    throw new EOFException();
                }
                int position = this.byteBuffer.position();
                cVar.c(this.byteArray, 0, position);
                j += position;
                j2 -= position;
            } finally {
                this.byteBuffer.clear();
            }
        }
    }
}
