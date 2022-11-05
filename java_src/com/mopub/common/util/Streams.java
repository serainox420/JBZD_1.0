package com.mopub.common.util;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes3.dex */
public class Streams {
    public static void copyContent(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static void copyContent(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte[] bArr = new byte[16384];
        long j2 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                j2 += read;
                if (j2 >= j) {
                    throw new IOException("Error copying content: attempted to copy " + j2 + " bytes, with " + j + " maximum.");
                }
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static void readStream(InputStream inputStream, byte[] bArr) throws IOException {
        int i = 0;
        int length = bArr.length;
        do {
            int read = inputStream.read(bArr, i, length);
            if (read != -1) {
                i += read;
                length -= read;
            } else {
                return;
            }
        } while (length > 0);
    }

    public static void closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
