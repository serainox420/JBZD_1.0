package com.loopme;

import android.content.Context;
import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.loopme.LoopMeBanner;
import com.loopme.NativeVideoController;
import com.loopme.common.AdChecker;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.MinimizedMode;
import com.loopme.common.Utils;
/* loaded from: classes2.dex */
public class NativeVideoRecyclerAdapter extends RecyclerView.a implements NativeVideoController.DataChangeListener, AdChecker {
    private static final String LOG_TAG = NativeVideoRecyclerAdapter.class.getSimpleName();
    static final int TYPE_AD = 1000;
    private Context mContext;
    private LayoutInflater mInflater;
    private NativeVideoController mNativeVideoController;
    private RecyclerView.a mOriginAdapter;
    private RecyclerView mRecyclerView;

    public NativeVideoRecyclerAdapter(RecyclerView.a aVar, Context context, RecyclerView recyclerView) {
        if (aVar == null || context == null || recyclerView == null) {
            throw new IllegalArgumentException("Some of parameters is null");
        }
        this.mContext = context;
        this.mOriginAdapter = aVar;
        this.mRecyclerView = recyclerView;
        this.mInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        this.mNativeVideoController = new NativeVideoController(this.mContext);
        recyclerView.addOnScrollListener(new RecyclerView.l() { // from class: com.loopme.NativeVideoRecyclerAdapter.1
            @Override // android.support.v7.widget.RecyclerView.l
            public void onScrollStateChanged(RecyclerView recyclerView2, int i) {
                super.onScrollStateChanged(recyclerView2, i);
                NativeVideoRecyclerAdapter.this.mNativeVideoController.onScroll(recyclerView2, NativeVideoRecyclerAdapter.this);
            }
        });
        this.mRecyclerView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.loopme.NativeVideoRecyclerAdapter.2
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                Logging.out(NativeVideoRecyclerAdapter.LOG_TAG, "onLayoutChange!!!!!");
                NativeVideoRecyclerAdapter.this.mNativeVideoController.onScroll(NativeVideoRecyclerAdapter.this.mRecyclerView, NativeVideoRecyclerAdapter.this);
            }
        });
        this.mOriginAdapter.registerAdapterDataObserver(new RecyclerView.c() { // from class: com.loopme.NativeVideoRecyclerAdapter.3
            @Override // android.support.v7.widget.RecyclerView.c
            public void onChanged() {
                NativeVideoRecyclerAdapter.this.triggerUpdateProcessor();
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeChanged(int i, int i2) {
                NativeVideoRecyclerAdapter.this.triggerUpdateProcessor();
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeChanged(int i, int i2, Object obj) {
                NativeVideoRecyclerAdapter.this.triggerUpdateProcessor();
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeInserted(int i, int i2) {
                NativeVideoRecyclerAdapter.this.triggerUpdateProcessor();
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeRemoved(int i, int i2) {
                NativeVideoRecyclerAdapter.this.triggerUpdateProcessor();
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeMoved(int i, int i2, int i3) {
                NativeVideoRecyclerAdapter.this.triggerUpdateProcessor();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerUpdateProcessor() {
        notifyDataSetChanged();
        this.mNativeVideoController.refreshAdPlacement(this.mOriginAdapter.getItemCount());
    }

    public void destroy() {
        this.mNativeVideoController.destroy();
    }

    public void onPause() {
        Logging.out(LOG_TAG, "onPause");
        this.mNativeVideoController.onPause();
    }

    public void onResume() {
        Logging.out(LOG_TAG, "onResume");
        this.mNativeVideoController.onResume(this.mRecyclerView, this);
    }

    public void setMinimizedMode(MinimizedMode minimizedMode) {
        if (minimizedMode != null) {
            Logging.out(LOG_TAG, "Set minimized mode");
            this.mNativeVideoController.setMinimizedMode(minimizedMode);
        }
    }

    public void putAdWithAppKeyToPosition(String str, int i) {
        if (i < this.mOriginAdapter.getItemCount()) {
            this.mNativeVideoController.putAdWithAppKeyToPosition(str, i);
        } else {
            Logging.out(LOG_TAG, "Wrong position " + i);
        }
    }

    public void loadAds() {
        if (Build.VERSION.SDK_INT < 14) {
            this.mNativeVideoController.onLoadFail(new LoopMeError("Not supported Android version. Expected Android 4.0+"));
        } else if (Utils.isOnline(this.mContext)) {
            this.mNativeVideoController.loadAds(this.mOriginAdapter.getItemCount(), this);
        } else {
            this.mNativeVideoController.onLoadFail(new LoopMeError("No connection"));
        }
    }

    public void setViewBinder(NativeVideoBinder nativeVideoBinder) {
        if (this.mNativeVideoController != null) {
            this.mNativeVideoController.setViewBinder(nativeVideoBinder);
        }
    }

    public void setListener(LoopMeBanner.Listener listener) {
        this.mNativeVideoController.setListener(listener);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public RecyclerView.u onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1000) {
            RelativeLayout relativeLayout = new RelativeLayout(viewGroup.getContext());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
            return new NativeVideoVH(relativeLayout);
        }
        return this.mOriginAdapter.onCreateViewHolder(viewGroup, i);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onBindViewHolder(RecyclerView.u uVar, int i) {
        if (isAd(i)) {
            Logging.out(LOG_TAG, "onBindViewHolder");
            View adView = this.mNativeVideoController.getAdView(this.mInflater, null, this.mNativeVideoController.getNativeVideoAd(i), i);
            ((NativeVideoVH) uVar).adView.removeAllViews();
            if (adView.getParent() != null) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            ((NativeVideoVH) uVar).adView.addView(adView);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) adView.getLayoutParams();
            layoutParams.width = -1;
            adView.setLayoutParams(layoutParams);
            return;
        }
        this.mOriginAdapter.onBindViewHolder(uVar, this.mNativeVideoController.getInitialPosition(i));
    }

    @Override // com.loopme.common.AdChecker
    public boolean isAd(int i) {
        return this.mNativeVideoController.getNativeVideoAd(i) != null;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemViewType(int i) {
        int initialPosition = this.mNativeVideoController.getInitialPosition(i);
        if (isAd(i)) {
            return 1000;
        }
        return this.mOriginAdapter.getItemViewType(initialPosition);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void setHasStableIds(boolean z) {
        this.mOriginAdapter.setHasStableIds(z);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public long getItemId(int i) {
        if (isAd(i)) {
            return -System.identityHashCode(this.mNativeVideoController.getNativeVideoAd(i));
        }
        return this.mOriginAdapter.getItemId(this.mNativeVideoController.getInitialPosition(i));
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemCount() {
        return this.mOriginAdapter.getItemCount() + this.mNativeVideoController.getAdsCount();
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onViewRecycled(RecyclerView.u uVar) {
        this.mOriginAdapter.onViewRecycled(uVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public boolean onFailedToRecycleView(RecyclerView.u uVar) {
        return this.mOriginAdapter.onFailedToRecycleView(uVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onViewAttachedToWindow(RecyclerView.u uVar) {
        this.mOriginAdapter.onViewAttachedToWindow(uVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onViewDetachedFromWindow(RecyclerView.u uVar) {
        this.mOriginAdapter.onViewDetachedFromWindow(uVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void registerAdapterDataObserver(RecyclerView.c cVar) {
        this.mOriginAdapter.registerAdapterDataObserver(cVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void unregisterAdapterDataObserver(RecyclerView.c cVar) {
        this.mOriginAdapter.unregisterAdapterDataObserver(cVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mOriginAdapter.onAttachedToRecyclerView(recyclerView);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mOriginAdapter.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // com.loopme.NativeVideoController.DataChangeListener
    public void onDataSetChanged() {
        this.mOriginAdapter.notifyDataSetChanged();
    }

    /* loaded from: classes2.dex */
    public class NativeVideoVH extends RecyclerView.u {
        private RelativeLayout adView;

        public NativeVideoVH(View view) {
            super(view);
            this.adView = (RelativeLayout) view;
        }
    }
}
