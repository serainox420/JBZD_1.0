package com.facebook.imagepipeline.core;

import android.net.Uri;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.webp.WebpSupportStatus;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.producers.NetworkFetcher;
import com.facebook.imagepipeline.producers.Producer;
import com.facebook.imagepipeline.producers.RemoveImageTransformMetaDataProducer;
import com.facebook.imagepipeline.producers.ThreadHandoffProducerQueue;
import com.facebook.imagepipeline.producers.ThrottlingProducer;
import com.facebook.imagepipeline.producers.ThumbnailProducer;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ProducerSequenceFactory {
    @VisibleForTesting
    Producer<EncodedImage> mBackgroundLocalFileFetchToEncodedMemorySequence;
    @VisibleForTesting
    Producer<EncodedImage> mBackgroundNetworkFetchToEncodedMemorySequence;
    private Producer<EncodedImage> mCommonNetworkFetchToEncodedMemorySequence;
    @VisibleForTesting
    Producer<CloseableReference<CloseableImage>> mDataFetchSequence;
    @VisibleForTesting
    Producer<CloseableReference<CloseableImage>> mLocalAssetFetchSequence;
    @VisibleForTesting
    Producer<CloseableReference<CloseableImage>> mLocalContentUriFetchSequence;
    @VisibleForTesting
    Producer<CloseableReference<PooledByteBuffer>> mLocalFileEncodedImageProducerSequence;
    @VisibleForTesting
    Producer<Void> mLocalFileFetchToEncodedMemoryPrefetchSequence;
    @VisibleForTesting
    Producer<CloseableReference<CloseableImage>> mLocalImageFileFetchSequence;
    @VisibleForTesting
    Producer<CloseableReference<CloseableImage>> mLocalResourceFetchSequence;
    @VisibleForTesting
    Producer<CloseableReference<CloseableImage>> mLocalVideoFileFetchSequence;
    @VisibleForTesting
    Producer<CloseableReference<PooledByteBuffer>> mNetworkEncodedImageProducerSequence;
    @VisibleForTesting
    Producer<CloseableReference<CloseableImage>> mNetworkFetchSequence;
    @VisibleForTesting
    Producer<Void> mNetworkFetchToEncodedMemoryPrefetchSequence;
    private final NetworkFetcher mNetworkFetcher;
    private final ProducerFactory mProducerFactory;
    private final boolean mResizeAndRotateEnabledForNetwork;
    private final ThreadHandoffProducerQueue mThreadHandoffProducerQueue;
    private final boolean mUseDownsamplingRatio;
    private final boolean mWebpSupportEnabled;
    @VisibleForTesting
    Map<Producer<CloseableReference<CloseableImage>>, Producer<CloseableReference<CloseableImage>>> mPostprocessorSequences = new HashMap();
    @VisibleForTesting
    Map<Producer<CloseableReference<CloseableImage>>, Producer<Void>> mCloseableImagePrefetchSequences = new HashMap();

    public ProducerSequenceFactory(ProducerFactory producerFactory, NetworkFetcher networkFetcher, boolean z, boolean z2, ThreadHandoffProducerQueue threadHandoffProducerQueue, boolean z3) {
        this.mProducerFactory = producerFactory;
        this.mNetworkFetcher = networkFetcher;
        this.mResizeAndRotateEnabledForNetwork = z;
        this.mWebpSupportEnabled = z2;
        this.mThreadHandoffProducerQueue = threadHandoffProducerQueue;
        this.mUseDownsamplingRatio = z3;
    }

    public Producer<CloseableReference<PooledByteBuffer>> getEncodedImageProducerSequence(ImageRequest imageRequest) {
        validateEncodedImageRequest(imageRequest);
        Uri sourceUri = imageRequest.getSourceUri();
        switch (imageRequest.getSourceUriType()) {
            case 0:
                return getNetworkFetchEncodedImageProducerSequence();
            case 1:
            default:
                throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + getShortenedUriString(sourceUri));
            case 2:
            case 3:
                return getLocalFileFetchEncodedImageProducerSequence();
        }
    }

    public Producer<CloseableReference<PooledByteBuffer>> getNetworkFetchEncodedImageProducerSequence() {
        synchronized (this) {
            if (this.mNetworkEncodedImageProducerSequence == null) {
                this.mNetworkEncodedImageProducerSequence = new RemoveImageTransformMetaDataProducer(getBackgroundNetworkFetchToEncodedMemorySequence());
            }
        }
        return this.mNetworkEncodedImageProducerSequence;
    }

    public Producer<CloseableReference<PooledByteBuffer>> getLocalFileFetchEncodedImageProducerSequence() {
        synchronized (this) {
            if (this.mLocalFileEncodedImageProducerSequence == null) {
                this.mLocalFileEncodedImageProducerSequence = new RemoveImageTransformMetaDataProducer(getBackgroundLocalFileFetchToEncodeMemorySequence());
            }
        }
        return this.mLocalFileEncodedImageProducerSequence;
    }

    public Producer<Void> getEncodedImagePrefetchProducerSequence(ImageRequest imageRequest) {
        validateEncodedImageRequest(imageRequest);
        switch (imageRequest.getSourceUriType()) {
            case 0:
                return getNetworkFetchToEncodedMemoryPrefetchSequence();
            case 1:
            default:
                throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + getShortenedUriString(imageRequest.getSourceUri()));
            case 2:
            case 3:
                return getLocalFileFetchToEncodedMemoryPrefetchSequence();
        }
    }

    private static void validateEncodedImageRequest(ImageRequest imageRequest) {
        Preconditions.checkNotNull(imageRequest);
        Preconditions.checkArgument(imageRequest.getLowestPermittedRequestLevel().getValue() <= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue());
    }

    public Producer<CloseableReference<CloseableImage>> getDecodedImageProducerSequence(ImageRequest imageRequest) {
        Producer<CloseableReference<CloseableImage>> basicDecodedImageSequence = getBasicDecodedImageSequence(imageRequest);
        if (imageRequest.getPostprocessor() != null) {
            return getPostprocessorSequence(basicDecodedImageSequence);
        }
        return basicDecodedImageSequence;
    }

    public Producer<Void> getDecodedImagePrefetchProducerSequence(ImageRequest imageRequest) {
        return getDecodedImagePrefetchSequence(getBasicDecodedImageSequence(imageRequest));
    }

    private Producer<CloseableReference<CloseableImage>> getBasicDecodedImageSequence(ImageRequest imageRequest) {
        Preconditions.checkNotNull(imageRequest);
        Uri sourceUri = imageRequest.getSourceUri();
        Preconditions.checkNotNull(sourceUri, "Uri is null.");
        switch (imageRequest.getSourceUriType()) {
            case 0:
                return getNetworkFetchSequence();
            case 1:
            default:
                throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + getShortenedUriString(sourceUri));
            case 2:
                return getLocalVideoFileFetchSequence();
            case 3:
                return getLocalImageFileFetchSequence();
            case 4:
                return getLocalContentUriFetchSequence();
            case 5:
                return getLocalAssetFetchSequence();
            case 6:
                return getLocalResourceFetchSequence();
            case 7:
                return getDataFetchSequence();
        }
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getNetworkFetchSequence() {
        if (this.mNetworkFetchSequence == null) {
            this.mNetworkFetchSequence = newBitmapCacheGetToDecodeSequence(getCommonNetworkFetchToEncodedMemorySequence());
        }
        return this.mNetworkFetchSequence;
    }

    private synchronized Producer<EncodedImage> getBackgroundNetworkFetchToEncodedMemorySequence() {
        if (this.mBackgroundNetworkFetchToEncodedMemorySequence == null) {
            this.mBackgroundNetworkFetchToEncodedMemorySequence = this.mProducerFactory.newBackgroundThreadHandoffProducer(getCommonNetworkFetchToEncodedMemorySequence(), this.mThreadHandoffProducerQueue);
        }
        return this.mBackgroundNetworkFetchToEncodedMemorySequence;
    }

    private synchronized Producer<Void> getNetworkFetchToEncodedMemoryPrefetchSequence() {
        if (this.mNetworkFetchToEncodedMemoryPrefetchSequence == null) {
            this.mNetworkFetchToEncodedMemoryPrefetchSequence = ProducerFactory.newSwallowResultProducer(getBackgroundNetworkFetchToEncodedMemorySequence());
        }
        return this.mNetworkFetchToEncodedMemoryPrefetchSequence;
    }

    private synchronized Producer<EncodedImage> getCommonNetworkFetchToEncodedMemorySequence() {
        if (this.mCommonNetworkFetchToEncodedMemorySequence == null) {
            this.mCommonNetworkFetchToEncodedMemorySequence = ProducerFactory.newAddImageTransformMetaDataProducer(newEncodedCacheMultiplexToTranscodeSequence(this.mProducerFactory.newNetworkFetchProducer(this.mNetworkFetcher)));
            this.mCommonNetworkFetchToEncodedMemorySequence = this.mProducerFactory.newResizeAndRotateProducer(this.mCommonNetworkFetchToEncodedMemorySequence, this.mResizeAndRotateEnabledForNetwork, this.mUseDownsamplingRatio);
        }
        return this.mCommonNetworkFetchToEncodedMemorySequence;
    }

    private synchronized Producer<Void> getLocalFileFetchToEncodedMemoryPrefetchSequence() {
        if (this.mLocalFileFetchToEncodedMemoryPrefetchSequence == null) {
            this.mLocalFileFetchToEncodedMemoryPrefetchSequence = ProducerFactory.newSwallowResultProducer(getBackgroundLocalFileFetchToEncodeMemorySequence());
        }
        return this.mLocalFileFetchToEncodedMemoryPrefetchSequence;
    }

    private synchronized Producer<EncodedImage> getBackgroundLocalFileFetchToEncodeMemorySequence() {
        if (this.mBackgroundLocalFileFetchToEncodedMemorySequence == null) {
            this.mBackgroundLocalFileFetchToEncodedMemorySequence = this.mProducerFactory.newBackgroundThreadHandoffProducer(newEncodedCacheMultiplexToTranscodeSequence(this.mProducerFactory.newLocalFileFetchProducer()), this.mThreadHandoffProducerQueue);
        }
        return this.mBackgroundLocalFileFetchToEncodedMemorySequence;
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getLocalImageFileFetchSequence() {
        if (this.mLocalImageFileFetchSequence == null) {
            this.mLocalImageFileFetchSequence = newBitmapCacheGetToLocalTransformSequence(this.mProducerFactory.newLocalFileFetchProducer());
        }
        return this.mLocalImageFileFetchSequence;
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getLocalVideoFileFetchSequence() {
        if (this.mLocalVideoFileFetchSequence == null) {
            this.mLocalVideoFileFetchSequence = newBitmapCacheGetToBitmapCacheSequence(this.mProducerFactory.newLocalVideoThumbnailProducer());
        }
        return this.mLocalVideoFileFetchSequence;
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getLocalContentUriFetchSequence() {
        if (this.mLocalContentUriFetchSequence == null) {
            this.mLocalContentUriFetchSequence = newBitmapCacheGetToLocalTransformSequence(this.mProducerFactory.newLocalContentUriFetchProducer(), new ThumbnailProducer[]{this.mProducerFactory.newLocalContentUriThumbnailFetchProducer(), this.mProducerFactory.newLocalExifThumbnailProducer()});
        }
        return this.mLocalContentUriFetchSequence;
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getLocalResourceFetchSequence() {
        if (this.mLocalResourceFetchSequence == null) {
            this.mLocalResourceFetchSequence = newBitmapCacheGetToLocalTransformSequence(this.mProducerFactory.newLocalResourceFetchProducer());
        }
        return this.mLocalResourceFetchSequence;
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getLocalAssetFetchSequence() {
        if (this.mLocalAssetFetchSequence == null) {
            this.mLocalAssetFetchSequence = newBitmapCacheGetToLocalTransformSequence(this.mProducerFactory.newLocalAssetFetchProducer());
        }
        return this.mLocalAssetFetchSequence;
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getDataFetchSequence() {
        if (this.mDataFetchSequence == null) {
            Producer<EncodedImage> newDataFetchProducer = this.mProducerFactory.newDataFetchProducer();
            if (WebpSupportStatus.sIsWebpSupportRequired && (!this.mWebpSupportEnabled || WebpSupportStatus.sWebpBitmapFactory == null)) {
                newDataFetchProducer = this.mProducerFactory.newWebpTranscodeProducer(newDataFetchProducer);
            }
            ProducerFactory producerFactory = this.mProducerFactory;
            this.mDataFetchSequence = newBitmapCacheGetToDecodeSequence(this.mProducerFactory.newResizeAndRotateProducer(ProducerFactory.newAddImageTransformMetaDataProducer(newDataFetchProducer), true, this.mUseDownsamplingRatio));
        }
        return this.mDataFetchSequence;
    }

    private Producer<CloseableReference<CloseableImage>> newBitmapCacheGetToLocalTransformSequence(Producer<EncodedImage> producer) {
        return newBitmapCacheGetToLocalTransformSequence(producer, new ThumbnailProducer[]{this.mProducerFactory.newLocalExifThumbnailProducer()});
    }

    private Producer<CloseableReference<CloseableImage>> newBitmapCacheGetToLocalTransformSequence(Producer<EncodedImage> producer, ThumbnailProducer<EncodedImage>[] thumbnailProducerArr) {
        return newBitmapCacheGetToDecodeSequence(newLocalTransformationsSequence(newEncodedCacheMultiplexToTranscodeSequence(producer), thumbnailProducerArr));
    }

    private Producer<CloseableReference<CloseableImage>> newBitmapCacheGetToDecodeSequence(Producer<EncodedImage> producer) {
        return newBitmapCacheGetToBitmapCacheSequence(this.mProducerFactory.newDecodeProducer(producer));
    }

    private Producer<EncodedImage> newEncodedCacheMultiplexToTranscodeSequence(Producer<EncodedImage> producer) {
        if (WebpSupportStatus.sIsWebpSupportRequired && (!this.mWebpSupportEnabled || WebpSupportStatus.sWebpBitmapFactory == null)) {
            producer = this.mProducerFactory.newWebpTranscodeProducer(producer);
        }
        return this.mProducerFactory.newEncodedCacheKeyMultiplexProducer(this.mProducerFactory.newEncodedMemoryCacheProducer(newDiskCacheSequence(producer)));
    }

    private Producer<EncodedImage> newDiskCacheSequence(Producer<EncodedImage> producer) {
        return this.mProducerFactory.newDiskCacheReadProducer(this.mProducerFactory.newMediaVariationsProducer(this.mProducerFactory.newDiskCacheWriteProducer(producer)));
    }

    private Producer<CloseableReference<CloseableImage>> newBitmapCacheGetToBitmapCacheSequence(Producer<CloseableReference<CloseableImage>> producer) {
        return this.mProducerFactory.newBitmapMemoryCacheGetProducer(this.mProducerFactory.newBackgroundThreadHandoffProducer(this.mProducerFactory.newBitmapMemoryCacheKeyMultiplexProducer(this.mProducerFactory.newBitmapMemoryCacheProducer(producer)), this.mThreadHandoffProducerQueue));
    }

    private Producer<EncodedImage> newLocalTransformationsSequence(Producer<EncodedImage> producer, ThumbnailProducer<EncodedImage>[] thumbnailProducerArr) {
        ThrottlingProducer newThrottlingProducer = this.mProducerFactory.newThrottlingProducer(this.mProducerFactory.newResizeAndRotateProducer(ProducerFactory.newAddImageTransformMetaDataProducer(producer), true, this.mUseDownsamplingRatio));
        ProducerFactory producerFactory = this.mProducerFactory;
        return ProducerFactory.newBranchOnSeparateImagesProducer(newLocalThumbnailProducer(thumbnailProducerArr), newThrottlingProducer);
    }

    private Producer<EncodedImage> newLocalThumbnailProducer(ThumbnailProducer<EncodedImage>[] thumbnailProducerArr) {
        return this.mProducerFactory.newResizeAndRotateProducer(this.mProducerFactory.newThumbnailBranchProducer(thumbnailProducerArr), true, this.mUseDownsamplingRatio);
    }

    private synchronized Producer<CloseableReference<CloseableImage>> getPostprocessorSequence(Producer<CloseableReference<CloseableImage>> producer) {
        if (!this.mPostprocessorSequences.containsKey(producer)) {
            this.mPostprocessorSequences.put(producer, this.mProducerFactory.newPostprocessorBitmapMemoryCacheProducer(this.mProducerFactory.newPostprocessorProducer(producer)));
        }
        return this.mPostprocessorSequences.get(producer);
    }

    private synchronized Producer<Void> getDecodedImagePrefetchSequence(Producer<CloseableReference<CloseableImage>> producer) {
        if (!this.mCloseableImagePrefetchSequences.containsKey(producer)) {
            ProducerFactory producerFactory = this.mProducerFactory;
            this.mCloseableImagePrefetchSequences.put(producer, ProducerFactory.newSwallowResultProducer(producer));
        }
        return this.mCloseableImagePrefetchSequences.get(producer);
    }

    private static String getShortenedUriString(Uri uri) {
        String valueOf = String.valueOf(uri);
        return valueOf.length() > 30 ? valueOf.substring(0, 30) + "..." : valueOf;
    }
}
