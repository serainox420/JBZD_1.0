package com.facebook.imagepipeline.core;

import com.facebook.common.internal.Supplier;
import com.facebook.common.webp.WebpBitmapFactory;
import com.facebook.imagepipeline.cache.MediaIdExtractor;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class ImagePipelineExperiments {
    private final boolean mDecodeCancellationEnabled;
    private final boolean mExternalCreatedBitmapLogEnabled;
    private final int mForceSmallCacheThresholdBytes;
    private final MediaIdExtractor mMediaIdExtractor;
    private final Supplier<Boolean> mMediaVariationsIndexEnabled;
    private final boolean mSuppressBitmapPrefetching;
    private final boolean mUseDownsamplingRatioForResizing;
    private final WebpBitmapFactory mWebpBitmapFactory;
    private final WebpBitmapFactory.WebpErrorLogger mWebpErrorLogger;
    private final boolean mWebpSupportEnabled;

    private ImagePipelineExperiments(Builder builder, ImagePipelineConfig.Builder builder2) {
        this.mForceSmallCacheThresholdBytes = builder.mForceSmallCacheThresholdBytes;
        this.mWebpSupportEnabled = builder.mWebpSupportEnabled;
        this.mExternalCreatedBitmapLogEnabled = builder.mExternalCreatedBitmapLogEnabled;
        if (builder.mMediaVariationsIndexEnabled == null) {
            this.mMediaVariationsIndexEnabled = new Supplier<Boolean>() { // from class: com.facebook.imagepipeline.core.ImagePipelineExperiments.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.facebook.common.internal.Supplier
                /* renamed from: get */
                public Boolean mo89get() {
                    return Boolean.FALSE;
                }
            };
        } else {
            this.mMediaVariationsIndexEnabled = builder.mMediaVariationsIndexEnabled;
        }
        this.mMediaIdExtractor = builder.mMediaIdExtractor;
        this.mWebpErrorLogger = builder.mWebpErrorLogger;
        this.mDecodeCancellationEnabled = builder.mDecodeCancellationEnabled;
        this.mWebpBitmapFactory = builder.mWebpBitmapFactory;
        this.mSuppressBitmapPrefetching = builder.mSuppressBitmapPrefetching;
        this.mUseDownsamplingRatioForResizing = builder.mUseDownsamplingRatioForResizing;
    }

    public boolean isExternalCreatedBitmapLogEnabled() {
        return this.mExternalCreatedBitmapLogEnabled;
    }

    public int getForceSmallCacheThresholdBytes() {
        return this.mForceSmallCacheThresholdBytes;
    }

    public boolean getMediaVariationsIndexEnabled() {
        return this.mMediaVariationsIndexEnabled.mo89get().booleanValue();
    }

    @Nullable
    public MediaIdExtractor getMediaIdExtractor() {
        return this.mMediaIdExtractor;
    }

    public boolean getUseDownsamplingRatioForResizing() {
        return this.mUseDownsamplingRatioForResizing;
    }

    public boolean isWebpSupportEnabled() {
        return this.mWebpSupportEnabled;
    }

    public boolean isDecodeCancellationEnabled() {
        return this.mDecodeCancellationEnabled;
    }

    public WebpBitmapFactory.WebpErrorLogger getWebpErrorLogger() {
        return this.mWebpErrorLogger;
    }

    public WebpBitmapFactory getWebpBitmapFactory() {
        return this.mWebpBitmapFactory;
    }

    public static Builder newBuilder(ImagePipelineConfig.Builder builder) {
        return new Builder(builder);
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private final ImagePipelineConfig.Builder mConfigBuilder;
        private MediaIdExtractor mMediaIdExtractor;
        private WebpBitmapFactory mWebpBitmapFactory;
        private WebpBitmapFactory.WebpErrorLogger mWebpErrorLogger;
        private int mForceSmallCacheThresholdBytes = 0;
        private boolean mWebpSupportEnabled = false;
        private boolean mExternalCreatedBitmapLogEnabled = false;
        private Supplier<Boolean> mMediaVariationsIndexEnabled = null;
        private boolean mDecodeCancellationEnabled = false;
        private boolean mSuppressBitmapPrefetching = false;
        private boolean mUseDownsamplingRatioForResizing = false;

        public Builder(ImagePipelineConfig.Builder builder) {
            this.mConfigBuilder = builder;
        }

        public ImagePipelineConfig.Builder setExternalCreatedBitmapLogEnabled(boolean z) {
            this.mExternalCreatedBitmapLogEnabled = z;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setForceSmallCacheThresholdBytes(int i) {
            this.mForceSmallCacheThresholdBytes = i;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setMediaVariationsIndexEnabled(Supplier<Boolean> supplier) {
            this.mMediaVariationsIndexEnabled = supplier;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setMediaIdExtractor(MediaIdExtractor mediaIdExtractor) {
            this.mMediaIdExtractor = mediaIdExtractor;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setWebpSupportEnabled(boolean z) {
            this.mWebpSupportEnabled = z;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setUseDownsampligRatioForResizing(boolean z) {
            this.mUseDownsamplingRatioForResizing = z;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setDecodeCancellationEnabled(boolean z) {
            this.mDecodeCancellationEnabled = z;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setWebpErrorLogger(WebpBitmapFactory.WebpErrorLogger webpErrorLogger) {
            this.mWebpErrorLogger = webpErrorLogger;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setWebpBitmapFactory(WebpBitmapFactory webpBitmapFactory) {
            this.mWebpBitmapFactory = webpBitmapFactory;
            return this.mConfigBuilder;
        }

        public ImagePipelineConfig.Builder setSuppressBitmapPrefetching(boolean z) {
            this.mSuppressBitmapPrefetching = z;
            return this.mConfigBuilder;
        }

        public ImagePipelineExperiments build() {
            return new ImagePipelineExperiments(this, this.mConfigBuilder);
        }
    }
}
