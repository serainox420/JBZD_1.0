package com.facebook.imagepipeline.decoder;

import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.memory.ByteArrayPool;
import com.facebook.common.memory.PooledByteArrayBufferedInputStream;
import com.facebook.common.util.StreamUtil;
import com.facebook.imagepipeline.image.EncodedImage;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class ProgressiveJpegParser {
    private static final int BUFFER_SIZE = 16384;
    private static final int NOT_A_JPEG = 6;
    private static final int READ_FIRST_JPEG_BYTE = 0;
    private static final int READ_MARKER_FIRST_BYTE_OR_ENTROPY_DATA = 2;
    private static final int READ_MARKER_SECOND_BYTE = 3;
    private static final int READ_SECOND_JPEG_BYTE = 1;
    private static final int READ_SIZE_FIRST_BYTE = 4;
    private static final int READ_SIZE_SECOND_BYTE = 5;
    private final ByteArrayPool mByteArrayPool;
    private int mBytesParsed = 0;
    private int mLastByteRead = 0;
    private int mNextFullScanNumber = 0;
    private int mBestScanEndOffset = 0;
    private int mBestScanNumber = 0;
    private int mParserState = 0;

    public ProgressiveJpegParser(ByteArrayPool byteArrayPool) {
        this.mByteArrayPool = (ByteArrayPool) Preconditions.checkNotNull(byteArrayPool);
    }

    public boolean parseMoreData(EncodedImage encodedImage) {
        if (this.mParserState != 6 && encodedImage.getSize() > this.mBytesParsed) {
            PooledByteArrayBufferedInputStream pooledByteArrayBufferedInputStream = new PooledByteArrayBufferedInputStream(encodedImage.getInputStream(), this.mByteArrayPool.get(BUFFER_SIZE), this.mByteArrayPool);
            try {
                StreamUtil.skip(pooledByteArrayBufferedInputStream, this.mBytesParsed);
                return doParseMoreData(pooledByteArrayBufferedInputStream);
            } catch (IOException e) {
                Throwables.propagate(e);
                return false;
            } finally {
                Closeables.closeQuietly(pooledByteArrayBufferedInputStream);
            }
        }
        return false;
    }

    private boolean doParseMoreData(InputStream inputStream) {
        int read;
        int i = this.mBestScanNumber;
        while (this.mParserState != 6 && (read = inputStream.read()) != -1) {
            try {
                this.mBytesParsed++;
                switch (this.mParserState) {
                    case 0:
                        if (read == 255) {
                            this.mParserState = 1;
                            break;
                        } else {
                            this.mParserState = 6;
                            break;
                        }
                    case 1:
                        if (read == 216) {
                            this.mParserState = 2;
                            break;
                        } else {
                            this.mParserState = 6;
                            break;
                        }
                    case 2:
                        if (read != 255) {
                            break;
                        } else {
                            this.mParserState = 3;
                            break;
                        }
                    case 3:
                        if (read == 255) {
                            this.mParserState = 3;
                            break;
                        } else if (read == 0) {
                            this.mParserState = 2;
                            break;
                        } else {
                            if (read == 218 || read == 217) {
                                newScanOrImageEndFound(this.mBytesParsed - 2);
                            }
                            if (doesMarkerStartSegment(read)) {
                                this.mParserState = 4;
                                break;
                            } else {
                                this.mParserState = 2;
                                break;
                            }
                        }
                    case 4:
                        this.mParserState = 5;
                        break;
                    case 5:
                        int i2 = ((this.mLastByteRead << 8) + read) - 2;
                        StreamUtil.skip(inputStream, i2);
                        this.mBytesParsed = i2 + this.mBytesParsed;
                        this.mParserState = 2;
                        break;
                    default:
                        Preconditions.checkState(false);
                        break;
                }
                this.mLastByteRead = read;
            } catch (IOException e) {
                Throwables.propagate(e);
            }
        }
        return (this.mParserState == 6 || this.mBestScanNumber == i) ? false : true;
    }

    private static boolean doesMarkerStartSegment(int i) {
        boolean z = true;
        if (i == 1) {
            return false;
        }
        if (i >= 208 && i <= 215) {
            return false;
        }
        if (i == 217 || i == 216) {
            z = false;
        }
        return z;
    }

    private void newScanOrImageEndFound(int i) {
        if (this.mNextFullScanNumber > 0) {
            this.mBestScanEndOffset = i;
        }
        int i2 = this.mNextFullScanNumber;
        this.mNextFullScanNumber = i2 + 1;
        this.mBestScanNumber = i2;
    }

    public boolean isJpeg() {
        return this.mBytesParsed > 1 && this.mParserState != 6;
    }

    public int getBestScanEndOffset() {
        return this.mBestScanEndOffset;
    }

    public int getBestScanNumber() {
        return this.mBestScanNumber;
    }
}
