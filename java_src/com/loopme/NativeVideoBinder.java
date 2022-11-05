package com.loopme;
/* loaded from: classes2.dex */
public class NativeVideoBinder {
    private int mBannerViewId;
    private int mLayoutId;

    private NativeVideoBinder(Builder builder) {
        this.mLayoutId = builder.mLayoutId;
        this.mBannerViewId = builder.mBannerViewId;
    }

    public int getLayout() {
        return this.mLayoutId;
    }

    public int getBannerViewId() {
        return this.mBannerViewId;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private int mBannerViewId;
        private int mLayoutId;

        public Builder(int i) {
            this.mLayoutId = i;
        }

        public Builder setLoopMeBannerViewId(int i) {
            this.mBannerViewId = i;
            return this;
        }

        public NativeVideoBinder build() {
            return new NativeVideoBinder(this);
        }
    }
}
