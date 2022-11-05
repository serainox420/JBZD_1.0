package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.logging.FLog;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.drawable.base.DrawableWithCaches;
import com.facebook.drawee.components.DeferredReleaser;
import com.facebook.drawee.controller.AbstractDraweeController;
import com.facebook.drawee.debug.DebugControllerOverlayDrawable;
import com.facebook.drawee.drawable.OrientedDrawable;
import com.facebook.drawee.drawable.ScaleTypeDrawable;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.interfaces.DraweeHierarchy;
import com.facebook.imagepipeline.animated.factory.AnimatedDrawableFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;
import com.facebook.imagepipeline.image.ImageInfo;
import java.util.Iterator;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class PipelineDraweeController extends AbstractDraweeController<CloseableReference<CloseableImage>, ImageInfo> {
    private static final Class<?> TAG = PipelineDraweeController.class;
    private final AnimatedDrawableFactory mAnimatedDrawableFactory;
    private CacheKey mCacheKey;
    private Supplier<DataSource<CloseableReference<CloseableImage>>> mDataSourceSupplier;
    private final DrawableFactory mDefaultDrawableFactory;
    private boolean mDrawDebugOverlay;
    @Nullable
    private final ImmutableList<DrawableFactory> mDrawableFactories;
    @Nullable
    private MemoryCache<CacheKey, CloseableImage> mMemoryCache;
    private final Resources mResources;

    public PipelineDraweeController(Resources resources, DeferredReleaser deferredReleaser, AnimatedDrawableFactory animatedDrawableFactory, Executor executor, MemoryCache<CacheKey, CloseableImage> memoryCache, Supplier<DataSource<CloseableReference<CloseableImage>>> supplier, String str, CacheKey cacheKey, Object obj) {
        this(resources, deferredReleaser, animatedDrawableFactory, executor, memoryCache, supplier, str, cacheKey, obj, null);
    }

    public PipelineDraweeController(Resources resources, DeferredReleaser deferredReleaser, AnimatedDrawableFactory animatedDrawableFactory, Executor executor, MemoryCache<CacheKey, CloseableImage> memoryCache, Supplier<DataSource<CloseableReference<CloseableImage>>> supplier, String str, CacheKey cacheKey, Object obj, @Nullable ImmutableList<DrawableFactory> immutableList) {
        super(deferredReleaser, executor, str, obj);
        this.mDefaultDrawableFactory = new DrawableFactory() { // from class: com.facebook.drawee.backends.pipeline.PipelineDraweeController.1
            @Override // com.facebook.drawee.backends.pipeline.DrawableFactory
            public boolean supportsImageType(CloseableImage closeableImage) {
                return true;
            }

            @Override // com.facebook.drawee.backends.pipeline.DrawableFactory
            public Drawable createDrawable(CloseableImage closeableImage) {
                if (!(closeableImage instanceof CloseableStaticBitmap)) {
                    if (PipelineDraweeController.this.mAnimatedDrawableFactory != null) {
                        return PipelineDraweeController.this.mAnimatedDrawableFactory.create(closeableImage);
                    }
                    return null;
                }
                CloseableStaticBitmap closeableStaticBitmap = (CloseableStaticBitmap) closeableImage;
                BitmapDrawable bitmapDrawable = new BitmapDrawable(PipelineDraweeController.this.mResources, closeableStaticBitmap.getUnderlyingBitmap());
                return (closeableStaticBitmap.getRotationAngle() == 0 || closeableStaticBitmap.getRotationAngle() == -1) ? bitmapDrawable : new OrientedDrawable(bitmapDrawable, closeableStaticBitmap.getRotationAngle());
            }
        };
        this.mResources = resources;
        this.mAnimatedDrawableFactory = animatedDrawableFactory;
        this.mMemoryCache = memoryCache;
        this.mCacheKey = cacheKey;
        this.mDrawableFactories = immutableList;
        init(supplier);
    }

    public void initialize(Supplier<DataSource<CloseableReference<CloseableImage>>> supplier, String str, CacheKey cacheKey, Object obj) {
        super.initialize(str, obj);
        init(supplier);
        this.mCacheKey = cacheKey;
    }

    public void setDrawDebugOverlay(boolean z) {
        this.mDrawDebugOverlay = z;
    }

    private void init(Supplier<DataSource<CloseableReference<CloseableImage>>> supplier) {
        this.mDataSourceSupplier = supplier;
        maybeUpdateDebugOverlay(null);
    }

    protected Resources getResources() {
        return this.mResources;
    }

    @Override // com.facebook.drawee.controller.AbstractDraweeController
    protected DataSource<CloseableReference<CloseableImage>> getDataSource() {
        if (FLog.isLoggable(2)) {
            FLog.v(TAG, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        return this.mDataSourceSupplier.mo89get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public Drawable createDrawable(CloseableReference<CloseableImage> closeableReference) {
        Drawable createDrawable;
        Preconditions.checkState(CloseableReference.isValid(closeableReference));
        CloseableImage closeableImage = closeableReference.get();
        maybeUpdateDebugOverlay(closeableImage);
        if (this.mDrawableFactories != null) {
            Iterator<DrawableFactory> it = this.mDrawableFactories.iterator();
            while (it.hasNext()) {
                DrawableFactory next = it.next();
                if (next.supportsImageType(closeableImage) && (createDrawable = next.createDrawable(closeableImage)) != null) {
                    return createDrawable;
                }
            }
        }
        Drawable createDrawable2 = this.mDefaultDrawableFactory.createDrawable(closeableImage);
        if (createDrawable2 != null) {
            return createDrawable2;
        }
        throw new UnsupportedOperationException("Unrecognized image class: " + closeableImage);
    }

    @Override // com.facebook.drawee.controller.AbstractDraweeController, com.facebook.drawee.interfaces.DraweeController
    public void setHierarchy(@Nullable DraweeHierarchy draweeHierarchy) {
        super.setHierarchy(draweeHierarchy);
        maybeUpdateDebugOverlay(null);
    }

    private void maybeUpdateDebugOverlay(@Nullable CloseableImage closeableImage) {
        ScaleTypeDrawable activeScaleTypeDrawable;
        ScalingUtils.ScaleType scaleType = null;
        if (this.mDrawDebugOverlay) {
            Drawable controllerOverlay = getControllerOverlay();
            if (controllerOverlay == null) {
                controllerOverlay = new DebugControllerOverlayDrawable();
                setControllerOverlay(controllerOverlay);
            }
            if (controllerOverlay instanceof DebugControllerOverlayDrawable) {
                DebugControllerOverlayDrawable debugControllerOverlayDrawable = (DebugControllerOverlayDrawable) controllerOverlay;
                debugControllerOverlayDrawable.setControllerId(getId());
                DraweeHierarchy hierarchy = getHierarchy();
                if (hierarchy != null && (activeScaleTypeDrawable = ScalingUtils.getActiveScaleTypeDrawable(hierarchy.getTopLevelDrawable())) != null) {
                    scaleType = activeScaleTypeDrawable.getScaleType();
                }
                debugControllerOverlayDrawable.setScaleType(scaleType);
                if (closeableImage != null) {
                    debugControllerOverlayDrawable.setDimensions(closeableImage.getWidth(), closeableImage.getHeight());
                    debugControllerOverlayDrawable.setImageSize(closeableImage.getSizeInBytes());
                    return;
                }
                debugControllerOverlayDrawable.reset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public ImageInfo getImageInfo(CloseableReference<CloseableImage> closeableReference) {
        Preconditions.checkState(CloseableReference.isValid(closeableReference));
        return closeableReference.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public int getImageHash(@Nullable CloseableReference<CloseableImage> closeableReference) {
        if (closeableReference != null) {
            return closeableReference.getValueHash();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public void releaseImage(@Nullable CloseableReference<CloseableImage> closeableReference) {
        CloseableReference.closeSafely(closeableReference);
    }

    @Override // com.facebook.drawee.controller.AbstractDraweeController
    protected void releaseDrawable(@Nullable Drawable drawable) {
        if (drawable instanceof DrawableWithCaches) {
            ((DrawableWithCaches) drawable).dropCaches();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    /* renamed from: getCachedImage */
    public CloseableReference<CloseableImage> mo67getCachedImage() {
        if (this.mMemoryCache == null || this.mCacheKey == null) {
            return null;
        }
        CloseableReference<CloseableImage> closeableReference = this.mMemoryCache.get(this.mCacheKey);
        if (closeableReference == null || closeableReference.get().getQualityInfo().isOfFullQuality()) {
            return closeableReference;
        }
        closeableReference.close();
        return null;
    }

    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public String toString() {
        return Objects.toStringHelper(this).add("super", super.toString()).add("dataSourceSupplier", this.mDataSourceSupplier).toString();
    }
}
