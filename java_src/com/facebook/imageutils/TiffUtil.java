package com.facebook.imageutils;

import com.facebook.common.logging.FLog;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
class TiffUtil {
    private static final Class<?> TAG = TiffUtil.class;
    public static final int TIFF_BYTE_ORDER_BIG_END = 1296891946;
    public static final int TIFF_BYTE_ORDER_LITTLE_END = 1229531648;
    public static final int TIFF_TAG_ORIENTATION = 274;
    public static final int TIFF_TYPE_SHORT = 3;

    TiffUtil() {
    }

    public static int getAutoRotateAngleFromOrientation(int i) {
        switch (i) {
            case 0:
            case 1:
                return 0;
            case 2:
            case 4:
            case 5:
            case 7:
            default:
                FLog.i(TAG, "Unsupported orientation");
                return 0;
            case 3:
                return RotationOptions.ROTATE_180;
            case 6:
                return 90;
            case 8:
                return RotationOptions.ROTATE_270;
        }
    }

    public static int readOrientationFromTIFF(InputStream inputStream, int i) throws IOException {
        TiffHeader tiffHeader = new TiffHeader();
        int readTiffHeader = readTiffHeader(inputStream, i, tiffHeader);
        int i2 = tiffHeader.firstIfdOffset - 8;
        if (readTiffHeader == 0 || i2 > readTiffHeader) {
            return 0;
        }
        inputStream.skip(i2);
        return getOrientationFromTiffEntry(inputStream, moveToTiffEntryWithTag(inputStream, readTiffHeader - i2, tiffHeader.isLittleEndian, TIFF_TAG_ORIENTATION), tiffHeader.isLittleEndian);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TiffHeader {
        int byteOrder;
        int firstIfdOffset;
        boolean isLittleEndian;

        private TiffHeader() {
        }
    }

    private static int readTiffHeader(InputStream inputStream, int i, TiffHeader tiffHeader) throws IOException {
        if (i <= 8) {
            return 0;
        }
        tiffHeader.byteOrder = StreamProcessor.readPackedInt(inputStream, 4, false);
        int i2 = i - 4;
        if (tiffHeader.byteOrder != 1229531648 && tiffHeader.byteOrder != 1296891946) {
            FLog.e(TAG, "Invalid TIFF header");
            return 0;
        }
        tiffHeader.isLittleEndian = tiffHeader.byteOrder == 1229531648;
        tiffHeader.firstIfdOffset = StreamProcessor.readPackedInt(inputStream, 4, tiffHeader.isLittleEndian);
        int i3 = i2 - 4;
        if (tiffHeader.firstIfdOffset >= 8 && tiffHeader.firstIfdOffset - 8 <= i3) {
            return i3;
        }
        FLog.e(TAG, "Invalid offset");
        return 0;
    }

    private static int moveToTiffEntryWithTag(InputStream inputStream, int i, boolean z, int i2) throws IOException {
        if (i < 14) {
            return 0;
        }
        int readPackedInt = StreamProcessor.readPackedInt(inputStream, 2, z);
        int i3 = i - 2;
        while (true) {
            int i4 = readPackedInt - 1;
            if (readPackedInt <= 0 || i3 < 12) {
                return 0;
            }
            int i5 = i3 - 2;
            if (StreamProcessor.readPackedInt(inputStream, 2, z) == i2) {
                return i5;
            }
            inputStream.skip(10L);
            i3 = i5 - 10;
            readPackedInt = i4;
        }
    }

    private static int getOrientationFromTiffEntry(InputStream inputStream, int i, boolean z) throws IOException {
        if (i >= 10 && StreamProcessor.readPackedInt(inputStream, 2, z) == 3 && StreamProcessor.readPackedInt(inputStream, 4, z) == 1) {
            int readPackedInt = StreamProcessor.readPackedInt(inputStream, 2, z);
            StreamProcessor.readPackedInt(inputStream, 2, z);
            return readPackedInt;
        }
        return 0;
    }
}
