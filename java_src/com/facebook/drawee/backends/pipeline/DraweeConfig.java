package com.facebook.drawee.backends.pipeline;

import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.internal.Suppliers;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class DraweeConfig {
    @Nullable
    private final ImmutableList<DrawableFactory> mCustomDrawableFactories;
    private final Supplier<Boolean> mDebugOverlayEnabledSupplier;
    @Nullable
    private final PipelineDraweeControllerFactory mPipelineDraweeControllerFactory;

    private DraweeConfig(Builder builder) {
        ImmutableList<DrawableFactory> immutableList;
        Supplier<Boolean> of;
        if (builder.mCustomDrawableFactories == null) {
            immutableList = null;
        } else {
            immutableList = ImmutableList.copyOf(builder.mCustomDrawableFactories);
        }
        this.mCustomDrawableFactories = immutableList;
        if (builder.mDebugOverlayEnabledSupplier == null) {
            of = Suppliers.of(false);
        } else {
            of = builder.mDebugOverlayEnabledSupplier;
        }
        this.mDebugOverlayEnabledSupplier = of;
        this.mPipelineDraweeControllerFactory = builder.mPipelineDraweeControllerFactory;
    }

    @Nullable
    public ImmutableList<DrawableFactory> getCustomDrawableFactories() {
        return this.mCustomDrawableFactories;
    }

    @Nullable
    public PipelineDraweeControllerFactory getPipelineDraweeControllerFactory() {
        return this.mPipelineDraweeControllerFactory;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public Supplier<Boolean> getDebugOverlayEnabledSupplier() {
        return this.mDebugOverlayEnabledSupplier;
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private List<DrawableFactory> mCustomDrawableFactories;
        private Supplier<Boolean> mDebugOverlayEnabledSupplier;
        private PipelineDraweeControllerFactory mPipelineDraweeControllerFactory;

        public Builder addCustomDrawableFactory(DrawableFactory drawableFactory) {
            if (this.mCustomDrawableFactories == null) {
                this.mCustomDrawableFactories = new ArrayList();
            }
            this.mCustomDrawableFactories.add(drawableFactory);
            return this;
        }

        public Builder setDrawDebugOverlay(boolean z) {
            return setDebugOverlayEnabledSupplier(Suppliers.of(Boolean.valueOf(z)));
        }

        public Builder setDebugOverlayEnabledSupplier(Supplier<Boolean> supplier) {
            Preconditions.checkNotNull(supplier);
            this.mDebugOverlayEnabledSupplier = supplier;
            return this;
        }

        public Builder setPipelineDraweeControllerFactory(PipelineDraweeControllerFactory pipelineDraweeControllerFactory) {
            this.mPipelineDraweeControllerFactory = pipelineDraweeControllerFactory;
            return this;
        }

        public DraweeConfig build() {
            return new DraweeConfig(this);
        }
    }
}
