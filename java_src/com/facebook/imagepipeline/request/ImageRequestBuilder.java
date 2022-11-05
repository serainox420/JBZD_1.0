package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.util.UriUtil;
import com.facebook.imagepipeline.common.ImageDecodeOptions;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.facebook.imagepipeline.listener.RequestListener;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class ImageRequestBuilder {
    @Nullable
    private RequestListener mRequestListener;
    private Uri mSourceUri = null;
    private ImageRequest.RequestLevel mLowestPermittedRequestLevel = ImageRequest.RequestLevel.FULL_FETCH;
    @Nullable
    private ResizeOptions mResizeOptions = null;
    @Nullable
    private RotationOptions mRotationOptions = null;
    private ImageDecodeOptions mImageDecodeOptions = ImageDecodeOptions.defaults();
    private ImageRequest.CacheChoice mCacheChoice = ImageRequest.CacheChoice.DEFAULT;
    private boolean mProgressiveRenderingEnabled = ImagePipelineConfig.getDefaultImageRequestConfig().isProgressiveRenderingEnabled();
    private boolean mLocalThumbnailPreviewsEnabled = false;
    private Priority mRequestPriority = Priority.HIGH;
    @Nullable
    private Postprocessor mPostprocessor = null;
    private boolean mDiskCacheEnabled = true;
    @Nullable
    private MediaVariations mMediaVariations = null;

    public static ImageRequestBuilder newBuilderWithSource(Uri uri) {
        return new ImageRequestBuilder().setSource(uri);
    }

    public static ImageRequestBuilder newBuilderWithResourceId(int i) {
        return newBuilderWithSource(UriUtil.getUriForResourceId(i));
    }

    public static ImageRequestBuilder fromRequest(ImageRequest imageRequest) {
        return newBuilderWithSource(imageRequest.getSourceUri()).setImageDecodeOptions(imageRequest.getImageDecodeOptions()).setCacheChoice(imageRequest.getCacheChoice()).setLocalThumbnailPreviewsEnabled(imageRequest.getLocalThumbnailPreviewsEnabled()).setLowestPermittedRequestLevel(imageRequest.getLowestPermittedRequestLevel()).setMediaVariations(imageRequest.getMediaVariations()).setPostprocessor(imageRequest.getPostprocessor()).setProgressiveRenderingEnabled(imageRequest.getProgressiveRenderingEnabled()).setRequestPriority(imageRequest.getPriority()).setResizeOptions(imageRequest.getResizeOptions()).setRequestListener(imageRequest.getRequestListener()).setRotationOptions(imageRequest.getRotationOptions());
    }

    private ImageRequestBuilder() {
    }

    public ImageRequestBuilder setSource(Uri uri) {
        Preconditions.checkNotNull(uri);
        this.mSourceUri = uri;
        return this;
    }

    public Uri getSourceUri() {
        return this.mSourceUri;
    }

    public ImageRequestBuilder setMediaVariations(MediaVariations mediaVariations) {
        this.mMediaVariations = mediaVariations;
        return this;
    }

    public ImageRequestBuilder setMediaVariationsForMediaId(String str) {
        return setMediaVariations(MediaVariations.forMediaId(str));
    }

    @Nullable
    public MediaVariations getMediaVariations() {
        return this.mMediaVariations;
    }

    public ImageRequestBuilder setLowestPermittedRequestLevel(ImageRequest.RequestLevel requestLevel) {
        this.mLowestPermittedRequestLevel = requestLevel;
        return this;
    }

    public ImageRequest.RequestLevel getLowestPermittedRequestLevel() {
        return this.mLowestPermittedRequestLevel;
    }

    @Deprecated
    public ImageRequestBuilder setAutoRotateEnabled(boolean z) {
        return z ? setRotationOptions(RotationOptions.autoRotate()) : setRotationOptions(RotationOptions.disableRotation());
    }

    public ImageRequestBuilder setResizeOptions(@Nullable ResizeOptions resizeOptions) {
        this.mResizeOptions = resizeOptions;
        return this;
    }

    @Nullable
    public ResizeOptions getResizeOptions() {
        return this.mResizeOptions;
    }

    public ImageRequestBuilder setRotationOptions(@Nullable RotationOptions rotationOptions) {
        this.mRotationOptions = rotationOptions;
        return this;
    }

    @Nullable
    public RotationOptions getRotationOptions() {
        return this.mRotationOptions;
    }

    public ImageRequestBuilder setImageDecodeOptions(ImageDecodeOptions imageDecodeOptions) {
        this.mImageDecodeOptions = imageDecodeOptions;
        return this;
    }

    public ImageDecodeOptions getImageDecodeOptions() {
        return this.mImageDecodeOptions;
    }

    public ImageRequestBuilder setCacheChoice(ImageRequest.CacheChoice cacheChoice) {
        this.mCacheChoice = cacheChoice;
        return this;
    }

    public ImageRequest.CacheChoice getCacheChoice() {
        return this.mCacheChoice;
    }

    public ImageRequestBuilder setProgressiveRenderingEnabled(boolean z) {
        this.mProgressiveRenderingEnabled = z;
        return this;
    }

    public boolean isProgressiveRenderingEnabled() {
        return this.mProgressiveRenderingEnabled;
    }

    public ImageRequestBuilder setLocalThumbnailPreviewsEnabled(boolean z) {
        this.mLocalThumbnailPreviewsEnabled = z;
        return this;
    }

    public boolean isLocalThumbnailPreviewsEnabled() {
        return this.mLocalThumbnailPreviewsEnabled;
    }

    public ImageRequestBuilder disableDiskCache() {
        this.mDiskCacheEnabled = false;
        return this;
    }

    public boolean isDiskCacheEnabled() {
        return this.mDiskCacheEnabled && UriUtil.isNetworkUri(this.mSourceUri);
    }

    public ImageRequestBuilder setRequestPriority(Priority priority) {
        this.mRequestPriority = priority;
        return this;
    }

    public Priority getRequestPriority() {
        return this.mRequestPriority;
    }

    public ImageRequestBuilder setPostprocessor(Postprocessor postprocessor) {
        this.mPostprocessor = postprocessor;
        return this;
    }

    @Nullable
    public Postprocessor getPostprocessor() {
        return this.mPostprocessor;
    }

    public ImageRequestBuilder setRequestListener(RequestListener requestListener) {
        this.mRequestListener = requestListener;
        return this;
    }

    @Nullable
    public RequestListener getRequestListener() {
        return this.mRequestListener;
    }

    public ImageRequest build() {
        validate();
        return new ImageRequest(this);
    }

    /* loaded from: classes.dex */
    public static class BuilderException extends RuntimeException {
        public BuilderException(String str) {
            super("Invalid request builder: " + str);
        }
    }

    protected void validate() {
        if (this.mSourceUri == null) {
            throw new BuilderException("Source must be set!");
        }
        if (UriUtil.isLocalResourceUri(this.mSourceUri)) {
            if (!this.mSourceUri.isAbsolute()) {
                throw new BuilderException("Resource URI path must be absolute.");
            }
            if (this.mSourceUri.getPath().isEmpty()) {
                throw new BuilderException("Resource URI must not be empty");
            }
            try {
                Integer.parseInt(this.mSourceUri.getPath().substring(1));
            } catch (NumberFormatException e) {
                throw new BuilderException("Resource URI path must be a resource id.");
            }
        }
        if (UriUtil.isLocalAssetUri(this.mSourceUri) && !this.mSourceUri.isAbsolute()) {
            throw new BuilderException("Asset URI path must be absolute.");
        }
    }
}
