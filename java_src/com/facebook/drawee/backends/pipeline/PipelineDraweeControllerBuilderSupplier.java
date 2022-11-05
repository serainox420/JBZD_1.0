package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import com.facebook.common.executors.UiThreadImmediateExecutorService;
import com.facebook.common.internal.Supplier;
import com.facebook.drawee.components.DeferredReleaser;
import com.facebook.drawee.controller.ControllerListener;
import com.facebook.imagepipeline.animated.factory.AnimatedDrawableFactory;
import com.facebook.imagepipeline.animated.factory.AnimatedFactory;
import com.facebook.imagepipeline.core.ImagePipeline;
import com.facebook.imagepipeline.core.ImagePipelineFactory;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class PipelineDraweeControllerBuilderSupplier implements Supplier<PipelineDraweeControllerBuilder> {
    private final Set<ControllerListener> mBoundControllerListeners;
    private final Context mContext;
    private final ImagePipeline mImagePipeline;
    private final PipelineDraweeControllerFactory mPipelineDraweeControllerFactory;

    public PipelineDraweeControllerBuilderSupplier(Context context) {
        this(context, null);
    }

    public PipelineDraweeControllerBuilderSupplier(Context context, @Nullable DraweeConfig draweeConfig) {
        this(context, ImagePipelineFactory.getInstance(), draweeConfig);
    }

    public PipelineDraweeControllerBuilderSupplier(Context context, ImagePipelineFactory imagePipelineFactory, @Nullable DraweeConfig draweeConfig) {
        this(context, imagePipelineFactory, null, draweeConfig);
    }

    public PipelineDraweeControllerBuilderSupplier(Context context, ImagePipelineFactory imagePipelineFactory, Set<ControllerListener> set, @Nullable DraweeConfig draweeConfig) {
        Supplier<Boolean> supplier = null;
        this.mContext = context;
        this.mImagePipeline = imagePipelineFactory.getImagePipeline();
        AnimatedFactory animatedFactory = imagePipelineFactory.getAnimatedFactory();
        AnimatedDrawableFactory animatedDrawableFactory = animatedFactory != null ? animatedFactory.getAnimatedDrawableFactory(context) : null;
        if (draweeConfig != null && draweeConfig.getPipelineDraweeControllerFactory() != null) {
            this.mPipelineDraweeControllerFactory = draweeConfig.getPipelineDraweeControllerFactory();
        } else {
            this.mPipelineDraweeControllerFactory = new PipelineDraweeControllerFactory();
        }
        this.mPipelineDraweeControllerFactory.init(context.getResources(), DeferredReleaser.getInstance(), animatedDrawableFactory, UiThreadImmediateExecutorService.getInstance(), this.mImagePipeline.getBitmapMemoryCache(), draweeConfig != null ? draweeConfig.getCustomDrawableFactories() : null, draweeConfig != null ? draweeConfig.getDebugOverlayEnabledSupplier() : supplier);
        this.mBoundControllerListeners = set;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.common.internal.Supplier
    /* renamed from: get */
    public PipelineDraweeControllerBuilder mo89get() {
        return new PipelineDraweeControllerBuilder(this.mContext, this.mPipelineDraweeControllerFactory, this.mImagePipeline, this.mBoundControllerListeners);
    }
}
