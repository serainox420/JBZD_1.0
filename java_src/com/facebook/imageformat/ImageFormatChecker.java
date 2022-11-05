package com.facebook.imageformat;

import com.facebook.common.internal.ByteStreams;
import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.imageformat.ImageFormat;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class ImageFormatChecker {
    private static ImageFormatChecker sInstance;
    @Nullable
    private List<ImageFormat.FormatChecker> mCustomImageFormatCheckers;
    private final ImageFormat.FormatChecker mDefaultFormatChecker = new DefaultImageFormatChecker();
    private int mMaxHeaderLength;

    private ImageFormatChecker() {
        updateMaxHeaderLength();
    }

    public void setCustomImageFormatCheckers(@Nullable List<ImageFormat.FormatChecker> list) {
        this.mCustomImageFormatCheckers = list;
        updateMaxHeaderLength();
    }

    public ImageFormat determineImageFormat(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        byte[] bArr = new byte[this.mMaxHeaderLength];
        int readHeaderFromStream = readHeaderFromStream(this.mMaxHeaderLength, inputStream, bArr);
        if (this.mCustomImageFormatCheckers != null) {
            for (ImageFormat.FormatChecker formatChecker : this.mCustomImageFormatCheckers) {
                ImageFormat determineFormat = formatChecker.determineFormat(bArr, readHeaderFromStream);
                if (determineFormat != null && determineFormat != ImageFormat.UNKNOWN) {
                    return determineFormat;
                }
            }
        }
        ImageFormat determineFormat2 = this.mDefaultFormatChecker.determineFormat(bArr, readHeaderFromStream);
        if (determineFormat2 == null) {
            return ImageFormat.UNKNOWN;
        }
        return determineFormat2;
    }

    private void updateMaxHeaderLength() {
        this.mMaxHeaderLength = this.mDefaultFormatChecker.getHeaderSize();
        if (this.mCustomImageFormatCheckers != null) {
            for (ImageFormat.FormatChecker formatChecker : this.mCustomImageFormatCheckers) {
                this.mMaxHeaderLength = Math.max(this.mMaxHeaderLength, formatChecker.getHeaderSize());
            }
        }
    }

    private static int readHeaderFromStream(int i, InputStream inputStream, byte[] bArr) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length >= i);
        if (inputStream.markSupported()) {
            try {
                inputStream.mark(i);
                return ByteStreams.read(inputStream, bArr, 0, i);
            } finally {
                inputStream.reset();
            }
        }
        return ByteStreams.read(inputStream, bArr, 0, i);
    }

    public static synchronized ImageFormatChecker getInstance() {
        ImageFormatChecker imageFormatChecker;
        synchronized (ImageFormatChecker.class) {
            if (sInstance == null) {
                sInstance = new ImageFormatChecker();
            }
            imageFormatChecker = sInstance;
        }
        return imageFormatChecker;
    }

    public static ImageFormat getImageFormat(InputStream inputStream) throws IOException {
        return getInstance().determineImageFormat(inputStream);
    }

    public static ImageFormat getImageFormat_WrapIOException(InputStream inputStream) {
        try {
            return getImageFormat(inputStream);
        } catch (IOException e) {
            throw Throwables.propagate(e);
        }
    }

    public static ImageFormat getImageFormat(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        ImageFormat imageFormat;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                try {
                    imageFormat = getImageFormat(fileInputStream);
                    Closeables.closeQuietly(fileInputStream);
                } catch (IOException e) {
                    imageFormat = ImageFormat.UNKNOWN;
                    Closeables.closeQuietly(fileInputStream);
                    return imageFormat;
                }
            } catch (Throwable th2) {
                th = th2;
                Closeables.closeQuietly(fileInputStream);
                throw th;
            }
        } catch (IOException e2) {
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            Closeables.closeQuietly(fileInputStream);
            throw th;
        }
        return imageFormat;
    }
}
