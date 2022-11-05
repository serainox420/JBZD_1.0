package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.memory.ByteArrayPool;
import com.facebook.common.memory.MemoryTrimmableRegistry;
import com.facebook.imagepipeline.memory.BasePool;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class GenericByteArrayPool extends BasePool<byte[]> implements ByteArrayPool {
    private final int[] mBucketSizes;

    public GenericByteArrayPool(MemoryTrimmableRegistry memoryTrimmableRegistry, PoolParams poolParams, PoolStatsTracker poolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        SparseIntArray sparseIntArray = poolParams.bucketSizes;
        this.mBucketSizes = new int[sparseIntArray.size()];
        for (int i = 0; i < sparseIntArray.size(); i++) {
            this.mBucketSizes[i] = sparseIntArray.keyAt(i);
        }
        initialize();
    }

    public int getMinBufferSize() {
        return this.mBucketSizes[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: alloc  reason: collision with other method in class */
    public byte[] mo95alloc(int i) {
        return new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    public void free(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    public int getSizeInBytes(int i) {
        return i;
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int getBucketedSize(int i) {
        int[] iArr;
        if (i <= 0) {
            throw new BasePool.InvalidSizeException(Integer.valueOf(i));
        }
        for (int i2 : this.mBucketSizes) {
            if (i2 >= i) {
                return i2;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    public int getBucketedSizeForValue(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        return bArr.length;
    }
}
