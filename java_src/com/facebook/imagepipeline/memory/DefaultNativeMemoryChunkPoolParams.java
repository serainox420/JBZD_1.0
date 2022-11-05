package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.common.util.ByteConstants;
import com.facebook.internal.Utility;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes.dex */
public class DefaultNativeMemoryChunkPoolParams {
    private static final int LARGE_BUCKET_LENGTH = 2;
    private static final int SMALL_BUCKET_LENGTH = 5;

    public static PoolParams get() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(1024, 5);
        sparseIntArray.put(Barcode.PDF417, 5);
        sparseIntArray.put(4096, 5);
        sparseIntArray.put(Utility.DEFAULT_STREAM_BUFFER_SIZE, 5);
        sparseIntArray.put(16384, 5);
        sparseIntArray.put(32768, 5);
        sparseIntArray.put(65536, 5);
        sparseIntArray.put(MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES, 5);
        sparseIntArray.put(262144, 2);
        sparseIntArray.put(524288, 2);
        sparseIntArray.put(ByteConstants.MB, 2);
        return new PoolParams(getMaxSizeSoftCap(), getMaxSizeHardCap(), sparseIntArray);
    }

    private static int getMaxSizeSoftCap() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min < 16777216) {
            return 3145728;
        }
        if (min < 33554432) {
            return 6291456;
        }
        return 12582912;
    }

    private static int getMaxSizeHardCap() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        return min < 16777216 ? min / 2 : (min / 4) * 3;
    }
}
