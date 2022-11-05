package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.BaseDataSubscriber;
import com.facebook.datasource.DataSource;
import com.facebook.imagepipeline.image.CloseableBitmap;
import com.facebook.imagepipeline.image.CloseableImage;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class BaseBitmapDataSubscriber extends BaseDataSubscriber<CloseableReference<CloseableImage>> {
    protected abstract void onNewResultImpl(@Nullable Bitmap bitmap);

    @Override // com.facebook.datasource.BaseDataSubscriber
    public void onNewResultImpl(DataSource<CloseableReference<CloseableImage>> dataSource) {
        if (dataSource.isFinished()) {
            CloseableReference<CloseableImage> mo92getResult = dataSource.mo92getResult();
            Bitmap bitmap = null;
            if (mo92getResult != null && (mo92getResult.get() instanceof CloseableBitmap)) {
                bitmap = ((CloseableBitmap) mo92getResult.get()).getUnderlyingBitmap();
            }
            try {
                onNewResultImpl(bitmap);
            } finally {
                CloseableReference.closeSafely(mo92getResult);
            }
        }
    }
}
