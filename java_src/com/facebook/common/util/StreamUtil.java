package com.facebook.common.util;

import com.facebook.common.internal.ByteStreams;
import com.facebook.common.internal.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class StreamUtil {
    public static byte[] getBytesFromStream(InputStream inputStream) throws IOException {
        return getBytesFromStream(inputStream, inputStream.available());
    }

    public static byte[] getBytesFromStream(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i) { // from class: com.facebook.common.util.StreamUtil.1
            @Override // java.io.ByteArrayOutputStream
            public byte[] toByteArray() {
                return this.count == this.buf.length ? this.buf : super.toByteArray();
            }
        };
        ByteStreams.copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static long skip(InputStream inputStream, long j) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkArgument(j >= 0);
        long j2 = j;
        while (j2 > 0) {
            long skip = inputStream.skip(j2);
            if (skip > 0) {
                j2 -= skip;
            } else if (inputStream.read() != -1) {
                j2--;
            } else {
                return j - j2;
            }
        }
        return j;
    }
}
