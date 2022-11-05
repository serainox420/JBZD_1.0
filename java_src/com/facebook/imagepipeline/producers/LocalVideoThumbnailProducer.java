package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.bitmaps.SimpleBitmapReleaser;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;
import com.facebook.imagepipeline.image.ImmutableQualityInfo;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class LocalVideoThumbnailProducer implements Producer<CloseableReference<CloseableImage>> {
    @VisibleForTesting
    static final String CREATED_THUMBNAIL = "createdThumbnail";
    public static final String PRODUCER_NAME = "VideoThumbnailProducer";
    private final Executor mExecutor;

    public LocalVideoThumbnailProducer(Executor executor) {
        this.mExecutor = executor;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext) {
        ProducerListener listener = producerContext.getListener();
        String id = producerContext.getId();
        final ImageRequest imageRequest = producerContext.getImageRequest();
        final StatefulProducerRunnable<CloseableReference<CloseableImage>> statefulProducerRunnable = new StatefulProducerRunnable<CloseableReference<CloseableImage>>(consumer, listener, PRODUCER_NAME, id) { // from class: com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.common.executors.StatefulRunnable
            /* renamed from: getResult */
            public CloseableReference<CloseableImage> mo110getResult() throws Exception {
                Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(imageRequest.getSourceFile().getPath(), LocalVideoThumbnailProducer.calculateKind(imageRequest));
                if (createVideoThumbnail == null) {
                    return null;
                }
                return CloseableReference.of(new CloseableStaticBitmap(createVideoThumbnail, SimpleBitmapReleaser.getInstance(), ImmutableQualityInfo.FULL_QUALITY, 0));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.StatefulProducerRunnable
            public Map<String, String> getExtraMapOnSuccess(CloseableReference<CloseableImage> closeableReference) {
                return ImmutableMap.of(LocalVideoThumbnailProducer.CREATED_THUMBNAIL, String.valueOf(closeableReference != null));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.StatefulProducerRunnable, com.facebook.common.executors.StatefulRunnable
            public void disposeResult(CloseableReference<CloseableImage> closeableReference) {
                CloseableReference.closeSafely(closeableReference);
            }
        };
        producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer.2
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                statefulProducerRunnable.cancel();
            }
        });
        this.mExecutor.execute(statefulProducerRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int calculateKind(ImageRequest imageRequest) {
        return (imageRequest.getPreferredWidth() > 96 || imageRequest.getPreferredHeight() > 96) ? 1 : 3;
    }
}
