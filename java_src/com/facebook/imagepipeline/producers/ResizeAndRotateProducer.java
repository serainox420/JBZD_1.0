package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.common.memory.PooledByteBufferOutputStream;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.TriState;
import com.facebook.imageformat.DefaultImageFormats;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.nativecode.JpegTranscoder;
import com.facebook.imagepipeline.producers.JobScheduler;
import com.facebook.imagepipeline.request.ImageRequest;
import com.openx.view.mraid.JSInterface;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class ResizeAndRotateProducer implements Producer<EncodedImage> {
    @VisibleForTesting
    static final int DEFAULT_JPEG_QUALITY = 85;
    private static final String DOWNSAMPLE_ENUMERATOR_KEY = "downsampleEnumerator";
    private static final String FRACTION_KEY = "Fraction";
    private static final int FULL_ROUND = 360;
    @VisibleForTesting
    static final int MAX_JPEG_SCALE_NUMERATOR = 8;
    @VisibleForTesting
    static final int MIN_TRANSFORM_INTERVAL_MS = 100;
    private static final String ORIGINAL_SIZE_KEY = "Original size";
    public static final String PRODUCER_NAME = "ResizeAndRotateProducer";
    private static final String REQUESTED_SIZE_KEY = "Requested size";
    private static final String ROTATION_ANGLE_KEY = "rotationAngle";
    private static final String SOFTWARE_ENUMERATOR_KEY = "softwareEnumerator";
    private final Executor mExecutor;
    private final Producer<EncodedImage> mInputProducer;
    private final PooledByteBufferFactory mPooledByteBufferFactory;
    private final boolean mResizingEnabled;
    private final boolean mUseDownsamplingRatio;

    public ResizeAndRotateProducer(Executor executor, PooledByteBufferFactory pooledByteBufferFactory, boolean z, Producer<EncodedImage> producer, boolean z2) {
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
        this.mPooledByteBufferFactory = (PooledByteBufferFactory) Preconditions.checkNotNull(pooledByteBufferFactory);
        this.mResizingEnabled = z;
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
        this.mUseDownsamplingRatio = z2;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        this.mInputProducer.produceResults(new TransformingConsumer(consumer, producerContext), producerContext);
    }

    /* loaded from: classes.dex */
    private class TransformingConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private boolean mIsCancelled;
        private final JobScheduler mJobScheduler;
        private final ProducerContext mProducerContext;

        public TransformingConsumer(final Consumer<EncodedImage> consumer, ProducerContext producerContext) {
            super(consumer);
            this.mIsCancelled = false;
            this.mProducerContext = producerContext;
            this.mJobScheduler = new JobScheduler(ResizeAndRotateProducer.this.mExecutor, new JobScheduler.JobRunnable() { // from class: com.facebook.imagepipeline.producers.ResizeAndRotateProducer.TransformingConsumer.1
                @Override // com.facebook.imagepipeline.producers.JobScheduler.JobRunnable
                public void run(EncodedImage encodedImage, boolean z) {
                    TransformingConsumer.this.doTransform(encodedImage, z);
                }
            }, 100);
            this.mProducerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.ResizeAndRotateProducer.TransformingConsumer.2
                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onIsIntermediateResultExpectedChanged() {
                    if (TransformingConsumer.this.mProducerContext.isIntermediateResultExpected()) {
                        TransformingConsumer.this.mJobScheduler.scheduleJob();
                    }
                }

                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onCancellationRequested() {
                    TransformingConsumer.this.mJobScheduler.clearJob();
                    TransformingConsumer.this.mIsCancelled = true;
                    consumer.onCancellation();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(@Nullable EncodedImage encodedImage, boolean z) {
            if (!this.mIsCancelled) {
                if (encodedImage != null) {
                    TriState shouldTransform = ResizeAndRotateProducer.shouldTransform(this.mProducerContext.getImageRequest(), encodedImage, ResizeAndRotateProducer.this.mResizingEnabled);
                    if (z || shouldTransform != TriState.UNSET) {
                        if (shouldTransform != TriState.YES) {
                            getConsumer().onNewResult(encodedImage, z);
                        } else if (this.mJobScheduler.updateJob(encodedImage, z)) {
                            if (z || this.mProducerContext.isIntermediateResultExpected()) {
                                this.mJobScheduler.scheduleJob();
                            }
                        }
                    }
                } else if (z) {
                    getConsumer().onNewResult(null, true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
        public void doTransform(EncodedImage encodedImage, boolean z) {
            InputStream inputStream;
            Map<String, String> map = null;
            ProducerListener listener = this.mProducerContext.getListener();
            ?? id = this.mProducerContext.getId();
            listener.onProducerStart(id, ResizeAndRotateProducer.PRODUCER_NAME);
            ImageRequest imageRequest = this.mProducerContext.getImageRequest();
            PooledByteBufferOutputStream mo100newOutputStream = ResizeAndRotateProducer.this.mPooledByteBufferFactory.mo100newOutputStream();
            try {
                try {
                    try {
                        int softwareNumerator = ResizeAndRotateProducer.getSoftwareNumerator(imageRequest, encodedImage, ResizeAndRotateProducer.this.mResizingEnabled);
                        int calculateDownsampleNumerator = ResizeAndRotateProducer.calculateDownsampleNumerator(DownsampleUtil.determineSampleSize(imageRequest, encodedImage));
                        int i = ResizeAndRotateProducer.this.mUseDownsamplingRatio ? calculateDownsampleNumerator : softwareNumerator;
                        int rotationAngle = ResizeAndRotateProducer.getRotationAngle(imageRequest.getRotationOptions(), encodedImage);
                        Map<String, String> extraMap = getExtraMap(encodedImage, imageRequest, i, calculateDownsampleNumerator, softwareNumerator, rotationAngle);
                        try {
                            inputStream = encodedImage.getInputStream();
                            try {
                                JpegTranscoder.transcodeJpeg(inputStream, mo100newOutputStream, rotationAngle, i, 85);
                                CloseableReference of = CloseableReference.of(mo100newOutputStream.mo102toByteBuffer());
                                try {
                                    EncodedImage encodedImage2 = new EncodedImage(of);
                                    encodedImage2.setImageFormat(DefaultImageFormats.JPEG);
                                    encodedImage2.parseMetaData();
                                    this.mProducerContext.getListener().onProducerFinishWithSuccess(this.mProducerContext.getId(), ResizeAndRotateProducer.PRODUCER_NAME, extraMap);
                                    getConsumer().onNewResult(encodedImage2, z);
                                    EncodedImage.closeSafely(encodedImage2);
                                    Closeables.closeQuietly(inputStream);
                                    mo100newOutputStream.close();
                                } finally {
                                    CloseableReference.closeSafely(of);
                                }
                            } catch (Exception e) {
                                e = e;
                                map = extraMap;
                                this.mProducerContext.getListener().onProducerFinishWithFailure(this.mProducerContext.getId(), ResizeAndRotateProducer.PRODUCER_NAME, e, map);
                                getConsumer().onFailure(e);
                                Closeables.closeQuietly(inputStream);
                                mo100newOutputStream.close();
                            }
                        } catch (Exception e2) {
                            e = e2;
                            inputStream = null;
                            map = extraMap;
                        }
                    } catch (Throwable th) {
                        th = th;
                        Closeables.closeQuietly((InputStream) id);
                        mo100newOutputStream.close();
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    inputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                id = 0;
                Closeables.closeQuietly((InputStream) id);
                mo100newOutputStream.close();
                throw th;
            }
        }

        private Map<String, String> getExtraMap(EncodedImage encodedImage, ImageRequest imageRequest, int i, int i2, int i3, int i4) {
            String str;
            if (!this.mProducerContext.getListener().requiresExtraMap(this.mProducerContext.getId())) {
                return null;
            }
            String str2 = encodedImage.getWidth() + JSInterface.JSON_X + encodedImage.getHeight();
            if (imageRequest.getResizeOptions() != null) {
                str = imageRequest.getResizeOptions().width + JSInterface.JSON_X + imageRequest.getResizeOptions().height;
            } else {
                str = "Unspecified";
            }
            String str3 = i > 0 ? i + "/8" : "";
            HashMap hashMap = new HashMap();
            hashMap.put(ResizeAndRotateProducer.ORIGINAL_SIZE_KEY, str2);
            hashMap.put(ResizeAndRotateProducer.REQUESTED_SIZE_KEY, str);
            hashMap.put(ResizeAndRotateProducer.FRACTION_KEY, str3);
            hashMap.put("queueTime", String.valueOf(this.mJobScheduler.getQueuedTime()));
            hashMap.put(ResizeAndRotateProducer.DOWNSAMPLE_ENUMERATOR_KEY, Integer.toString(i2));
            hashMap.put(ResizeAndRotateProducer.SOFTWARE_ENUMERATOR_KEY, Integer.toString(i3));
            hashMap.put(ResizeAndRotateProducer.ROTATION_ANGLE_KEY, Integer.toString(i4));
            return ImmutableMap.copyOf((Map) hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState shouldTransform(ImageRequest imageRequest, EncodedImage encodedImage, boolean z) {
        if (encodedImage == null || encodedImage.getImageFormat() == ImageFormat.UNKNOWN) {
            return TriState.UNSET;
        }
        if (encodedImage.getImageFormat() != DefaultImageFormats.JPEG) {
            return TriState.NO;
        }
        return TriState.valueOf(shouldRotate(imageRequest.getRotationOptions(), encodedImage) || shouldResize(getSoftwareNumerator(imageRequest, encodedImage, z)));
    }

    @VisibleForTesting
    static float determineResizeRatio(ResizeOptions resizeOptions, int i, int i2) {
        if (resizeOptions == null) {
            return 1.0f;
        }
        float max = Math.max(resizeOptions.width / i, resizeOptions.height / i2);
        if (i * max > resizeOptions.maxBitmapSize) {
            max = resizeOptions.maxBitmapSize / i;
        }
        if (i2 * max > resizeOptions.maxBitmapSize) {
            return resizeOptions.maxBitmapSize / i2;
        }
        return max;
    }

    @VisibleForTesting
    static int roundNumerator(float f, float f2) {
        return (int) ((8.0f * f) + f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSoftwareNumerator(ImageRequest imageRequest, EncodedImage encodedImage, boolean z) {
        ResizeOptions resizeOptions;
        if (z && (resizeOptions = imageRequest.getResizeOptions()) != null) {
            int rotationAngle = getRotationAngle(imageRequest.getRotationOptions(), encodedImage);
            boolean z2 = rotationAngle == 90 || rotationAngle == 270;
            int roundNumerator = roundNumerator(determineResizeRatio(resizeOptions, z2 ? encodedImage.getHeight() : encodedImage.getWidth(), z2 ? encodedImage.getWidth() : encodedImage.getHeight()), resizeOptions.roundUpFraction);
            if (roundNumerator > 8) {
                return 8;
            }
            if (roundNumerator >= 1) {
                return roundNumerator;
            }
            return 1;
        }
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getRotationAngle(RotationOptions rotationOptions, EncodedImage encodedImage) {
        if (!rotationOptions.rotationEnabled()) {
            return 0;
        }
        int extractOrientationFromMetadata = extractOrientationFromMetadata(encodedImage);
        return !rotationOptions.useImageMetadata() ? (extractOrientationFromMetadata + rotationOptions.getForcedAngle()) % FULL_ROUND : extractOrientationFromMetadata;
    }

    private static int extractOrientationFromMetadata(EncodedImage encodedImage) {
        switch (encodedImage.getRotationAngle()) {
            case 90:
            case RotationOptions.ROTATE_180 /* 180 */:
            case RotationOptions.ROTATE_270 /* 270 */:
                return encodedImage.getRotationAngle();
            default:
                return 0;
        }
    }

    private static boolean shouldResize(int i) {
        return i < 8;
    }

    private static boolean shouldRotate(RotationOptions rotationOptions, EncodedImage encodedImage) {
        return !rotationOptions.canDeferUntilRendered() && getRotationAngle(rotationOptions, encodedImage) != 0;
    }

    @VisibleForTesting
    static int calculateDownsampleNumerator(int i) {
        return Math.max(1, 8 / i);
    }
}
