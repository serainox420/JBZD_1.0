package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.drawee.components.DeferredReleaser;
import com.facebook.imagepipeline.animated.factory.AnimatedDrawableFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.CloseableImage;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class PipelineDraweeControllerFactory {
    private AnimatedDrawableFactory mAnimatedDrawableFactory;
    @Nullable
    private Supplier<Boolean> mDebugOverlayEnabledSupplier;
    private DeferredReleaser mDeferredReleaser;
    @Nullable
    private ImmutableList<DrawableFactory> mDrawableFactories;
    private MemoryCache<CacheKey, CloseableImage> mMemoryCache;
    private Resources mResources;
    private Executor mUiThreadExecutor;

    public void init(Resources resources, DeferredReleaser deferredReleaser, AnimatedDrawableFactory animatedDrawableFactory, Executor executor, MemoryCache<CacheKey, CloseableImage> memoryCache, @Nullable ImmutableList<DrawableFactory> immutableList, @Nullable Supplier<Boolean> supplier) {
        this.mResources = resources;
        this.mDeferredReleaser = deferredReleaser;
        this.mAnimatedDrawableFactory = animatedDrawableFactory;
        this.mUiThreadExecutor = executor;
        this.mMemoryCache = memoryCache;
        this.mDrawableFactories = immutableList;
        this.mDebugOverlayEnabledSupplier = supplier;
    }

    public PipelineDraweeController newController(Supplier<DataSource<CloseableReference<CloseableImage>>> supplier, String str, CacheKey cacheKey, Object obj) {
        Preconditions.checkState(this.mResources != null, "init() not called");
        PipelineDraweeController internalCreateController = internalCreateController(this.mResources, this.mDeferredReleaser, this.mAnimatedDrawableFactory, this.mUiThreadExecutor, this.mMemoryCache, this.mDrawableFactories, supplier, str, cacheKey, obj);
        if (this.mDebugOverlayEnabledSupplier != null) {
            internalCreateController.setDrawDebugOverlay(this.mDebugOverlayEnabledSupplier.mo89get().booleanValue());
        }
        return internalCreateController;
    }

    protected PipelineDraweeController internalCreateController(Resources resources, DeferredReleaser deferredReleaser, AnimatedDrawableFactory animatedDrawableFactory, Executor executor, MemoryCache<CacheKey, CloseableImage> memoryCache, @Nullable ImmutableList<DrawableFactory> immutableList, Supplier<DataSource<CloseableReference<CloseableImage>>> supplier, String str, CacheKey cacheKey, Object obj) {
        return new PipelineDraweeController(resources, deferredReleaser, animatedDrawableFactory, executor, memoryCache, supplier, str, cacheKey, obj, immutableList);
    }
}
