package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import android.os.Build;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.references.ResourceReleaser;
import com.facebook.imagepipeline.common.TooManyBitmapsException;
import com.facebook.imagepipeline.nativecode.Bitmaps;
import com.facebook.imageutils.BitmapUtil;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes.dex */
public class BitmapCounter {
    @GuardedBy("this")
    private int mCount;
    private final int mMaxCount;
    private final int mMaxSize;
    @GuardedBy("this")
    private long mSize;
    private final ResourceReleaser<Bitmap> mUnpooledBitmapsReleaser;

    public BitmapCounter(int i, int i2) {
        boolean z = true;
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(i2 <= 0 ? false : z);
        this.mMaxCount = i;
        this.mMaxSize = i2;
        this.mUnpooledBitmapsReleaser = new ResourceReleaser<Bitmap>() { // from class: com.facebook.imagepipeline.memory.BitmapCounter.1
            @Override // com.facebook.common.references.ResourceReleaser
            public void release(Bitmap bitmap) {
                try {
                    BitmapCounter.this.decrease(bitmap);
                } finally {
                    bitmap.recycle();
                }
            }
        };
    }

    public synchronized boolean increase(Bitmap bitmap) {
        boolean z;
        int sizeInBytes = BitmapUtil.getSizeInBytes(bitmap);
        if (this.mCount < this.mMaxCount) {
            if (this.mSize + sizeInBytes <= this.mMaxSize) {
                this.mCount++;
                this.mSize = sizeInBytes + this.mSize;
                z = true;
            }
        }
        z = false;
        return z;
    }

    public synchronized void decrease(Bitmap bitmap) {
        boolean z = true;
        synchronized (this) {
            int sizeInBytes = BitmapUtil.getSizeInBytes(bitmap);
            Preconditions.checkArgument(this.mCount > 0, "No bitmaps registered.");
            if (sizeInBytes > this.mSize) {
                z = false;
            }
            Preconditions.checkArgument(z, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(sizeInBytes), Long.valueOf(this.mSize));
            this.mSize -= sizeInBytes;
            this.mCount--;
        }
    }

    public synchronized int getCount() {
        return this.mCount;
    }

    public synchronized long getSize() {
        return this.mSize;
    }

    public ResourceReleaser<Bitmap> getReleaser() {
        return this.mUnpooledBitmapsReleaser;
    }

    public List<CloseableReference<Bitmap>> associateBitmapsWithBitmapCounter(List<Bitmap> list) {
        int i = 0;
        while (i < list.size()) {
            try {
                Bitmap bitmap = list.get(i);
                if (Build.VERSION.SDK_INT < 21) {
                    Bitmaps.pinBitmap(bitmap);
                }
                if (increase(bitmap)) {
                    i++;
                } else {
                    throw new TooManyBitmapsException();
                }
            } catch (Exception e) {
                if (list != null) {
                    for (Bitmap bitmap2 : list) {
                        int i2 = i - 1;
                        if (i > 0) {
                            decrease(bitmap2);
                        }
                        bitmap2.recycle();
                        i = i2;
                    }
                }
                throw Throwables.propagate(e);
            }
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Bitmap bitmap3 : list) {
            arrayList.add(CloseableReference.of(bitmap3, this.mUnpooledBitmapsReleaser));
        }
        return arrayList;
    }
}
