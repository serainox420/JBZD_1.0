package com.mopub.nativeads;

import android.app.Activity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.l;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public final class MoPubRecyclerAdapter extends RecyclerView.a<RecyclerView.u> {

    /* renamed from: a  reason: collision with root package name */
    private final RecyclerView.c f4598a;
    private RecyclerView b;
    private final MoPubStreamAdPlacer c;
    private final RecyclerView.a d;
    private final l e;
    private final WeakHashMap<View, Integer> f;
    private ContentChangeStrategy g;
    private MoPubNativeAdLoadedListener h;

    /* loaded from: classes3.dex */
    public enum ContentChangeStrategy {
        INSERT_AT_END,
        MOVE_ALL_ADS_WITH_CONTENT,
        KEEP_ADS_FIXED
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.a aVar) {
        this(activity, aVar, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.a aVar, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), aVar, new l(activity));
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.a aVar, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), aVar, new l(activity));
    }

    @VisibleForTesting
    MoPubRecyclerAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, RecyclerView.a aVar, l lVar) {
        this.g = ContentChangeStrategy.INSERT_AT_END;
        this.f = new WeakHashMap<>();
        this.d = aVar;
        this.e = lVar;
        this.e.a(new l.d() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.1
            @Override // com.mopub.nativeads.l.d
            public void onVisibilityChanged(List<View> list, List<View> list2) {
                MoPubRecyclerAdapter.this.a(list, list2);
            }
        });
        a(this.d.hasStableIds());
        this.c = moPubStreamAdPlacer;
        this.c.setAdLoadedListener(new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.2
            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdLoaded(int i) {
                MoPubRecyclerAdapter.this.a(i);
            }

            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdRemoved(int i) {
                MoPubRecyclerAdapter.this.b(i);
            }
        });
        this.c.setItemCount(this.d.getItemCount());
        this.f4598a = new RecyclerView.c() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.3
            @Override // android.support.v7.widget.RecyclerView.c
            public void onChanged() {
                MoPubRecyclerAdapter.this.c.setItemCount(MoPubRecyclerAdapter.this.d.getItemCount());
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeChanged(int i, int i2) {
                int adjustedPosition = MoPubRecyclerAdapter.this.c.getAdjustedPosition((i + i2) - 1);
                int adjustedPosition2 = MoPubRecyclerAdapter.this.c.getAdjustedPosition(i);
                MoPubRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition2, (adjustedPosition - adjustedPosition2) + 1);
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeInserted(int i, int i2) {
                int adjustedPosition = MoPubRecyclerAdapter.this.c.getAdjustedPosition(i);
                int itemCount = MoPubRecyclerAdapter.this.d.getItemCount();
                MoPubRecyclerAdapter.this.c.setItemCount(itemCount);
                boolean z = i + i2 >= itemCount;
                if (ContentChangeStrategy.KEEP_ADS_FIXED == MoPubRecyclerAdapter.this.g || (ContentChangeStrategy.INSERT_AT_END == MoPubRecyclerAdapter.this.g && z)) {
                    MoPubRecyclerAdapter.this.notifyDataSetChanged();
                    return;
                }
                for (int i3 = 0; i3 < i2; i3++) {
                    MoPubRecyclerAdapter.this.c.insertItem(i);
                }
                MoPubRecyclerAdapter.this.notifyItemRangeInserted(adjustedPosition, i2);
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeRemoved(int i, int i2) {
                int adjustedPosition = MoPubRecyclerAdapter.this.c.getAdjustedPosition(i);
                int itemCount = MoPubRecyclerAdapter.this.d.getItemCount();
                MoPubRecyclerAdapter.this.c.setItemCount(itemCount);
                boolean z = i + i2 >= itemCount;
                if (ContentChangeStrategy.KEEP_ADS_FIXED != MoPubRecyclerAdapter.this.g && (ContentChangeStrategy.INSERT_AT_END != MoPubRecyclerAdapter.this.g || !z)) {
                    int adjustedCount = MoPubRecyclerAdapter.this.c.getAdjustedCount(itemCount + i2);
                    for (int i3 = 0; i3 < i2; i3++) {
                        MoPubRecyclerAdapter.this.c.removeItem(i);
                    }
                    int adjustedCount2 = adjustedCount - MoPubRecyclerAdapter.this.c.getAdjustedCount(itemCount);
                    MoPubRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (adjustedCount2 - i2), adjustedCount2);
                    return;
                }
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.c
            public void onItemRangeMoved(int i, int i2, int i3) {
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }
        };
        this.d.registerAdapterDataObserver(this.f4598a);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.b = recyclerView;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.b = null;
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.h = moPubNativeAdLoadedListener;
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            this.c.registerAdRenderer(moPubAdRenderer);
        }
    }

    public void loadAds(String str) {
        this.c.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.c.loadAds(str, requestParameters);
    }

    public static int computeScrollOffset(LinearLayoutManager linearLayoutManager, RecyclerView.u uVar) {
        if (uVar == null) {
            return 0;
        }
        View view = uVar.itemView;
        if (linearLayoutManager.canScrollVertically()) {
            if (linearLayoutManager.getStackFromEnd()) {
                return view.getBottom();
            }
            return view.getTop();
        } else if (!linearLayoutManager.canScrollHorizontally()) {
            return 0;
        } else {
            if (linearLayoutManager.getStackFromEnd()) {
                return view.getRight();
            }
            return view.getLeft();
        }
    }

    public void refreshAds(String str) {
        refreshAds(str, null);
    }

    public void refreshAds(String str, RequestParameters requestParameters) {
        if (this.b == null) {
            MoPubLog.w("This adapter is not attached to a RecyclerView and cannot be refreshed.");
            return;
        }
        RecyclerView.h layoutManager = this.b.getLayoutManager();
        if (layoutManager == null) {
            MoPubLog.w("Can't refresh ads when there is no layout manager on a RecyclerView.");
        } else if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int computeScrollOffset = computeScrollOffset(linearLayoutManager, this.b.findViewHolderForLayoutPosition(findFirstVisibleItemPosition));
            int max = Math.max(0, findFirstVisibleItemPosition - 1);
            while (this.c.isAd(max) && max > 0) {
                max--;
            }
            int itemCount = getItemCount();
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            while (this.c.isAd(findLastVisibleItemPosition) && findLastVisibleItemPosition < itemCount - 1) {
                findLastVisibleItemPosition++;
            }
            int originalPosition = this.c.getOriginalPosition(max);
            this.c.removeAdsInRange(this.c.getOriginalPosition(findLastVisibleItemPosition), this.d.getItemCount());
            int removeAdsInRange = this.c.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                linearLayoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition - removeAdsInRange, computeScrollOffset);
            }
            loadAds(str, requestParameters);
        } else {
            MoPubLog.w("This LayoutManager can't be refreshed.");
        }
    }

    public void clearAds() {
        this.c.clearAds();
    }

    public boolean isAd(int i) {
        return this.c.isAd(i);
    }

    public int getAdjustedPosition(int i) {
        return this.c.getAdjustedPosition(i);
    }

    public int getOriginalPosition(int i) {
        return this.c.getOriginalPosition(i);
    }

    public void setContentChangeStrategy(ContentChangeStrategy contentChangeStrategy) {
        if (Preconditions.NoThrow.checkNotNull(contentChangeStrategy)) {
            this.g = contentChangeStrategy;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemCount() {
        return this.c.getAdjustedCount(this.d.getItemCount());
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public RecyclerView.u onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i >= -56 && i <= this.c.getAdViewTypeCount() - 56) {
            MoPubAdRenderer adRendererForViewType = this.c.getAdRendererForViewType(i + 56);
            if (adRendererForViewType == null) {
                MoPubLog.w("No view binder was registered for ads in MoPubRecyclerAdapter.");
                return null;
            }
            return new MoPubRecyclerViewHolder(adRendererForViewType.createAdView((Activity) viewGroup.getContext(), viewGroup));
        }
        return this.d.onCreateViewHolder(viewGroup, i);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onBindViewHolder(RecyclerView.u uVar, int i) {
        Object adData = this.c.getAdData(i);
        if (adData != null) {
            this.c.bindAdView((NativeAd) adData, uVar.itemView);
            return;
        }
        this.f.put(uVar.itemView, Integer.valueOf(i));
        this.e.a(uVar.itemView, 0);
        this.d.onBindViewHolder(uVar, this.c.getOriginalPosition(i));
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemViewType(int i) {
        int adViewType = this.c.getAdViewType(i);
        return adViewType != 0 ? adViewType - 56 : this.d.getItemViewType(this.c.getOriginalPosition(i));
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void setHasStableIds(boolean z) {
        a(z);
        this.d.unregisterAdapterDataObserver(this.f4598a);
        this.d.setHasStableIds(z);
        this.d.registerAdapterDataObserver(this.f4598a);
    }

    public void destroy() {
        this.d.unregisterAdapterDataObserver(this.f4598a);
        this.c.destroy();
        this.e.b();
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public long getItemId(int i) {
        if (!this.d.hasStableIds()) {
            return -1L;
        }
        Object adData = this.c.getAdData(i);
        if (adData != null) {
            return -System.identityHashCode(adData);
        }
        return this.d.getItemId(this.c.getOriginalPosition(i));
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public boolean onFailedToRecycleView(RecyclerView.u uVar) {
        return uVar instanceof MoPubRecyclerViewHolder ? super.onFailedToRecycleView(uVar) : this.d.onFailedToRecycleView(uVar);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onViewAttachedToWindow(RecyclerView.u uVar) {
        if (uVar instanceof MoPubRecyclerViewHolder) {
            super.onViewAttachedToWindow(uVar);
        } else {
            this.d.onViewAttachedToWindow(uVar);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onViewDetachedFromWindow(RecyclerView.u uVar) {
        if (uVar instanceof MoPubRecyclerViewHolder) {
            super.onViewDetachedFromWindow(uVar);
        } else {
            this.d.onViewDetachedFromWindow(uVar);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void onViewRecycled(RecyclerView.u uVar) {
        if (uVar instanceof MoPubRecyclerViewHolder) {
            super.onViewRecycled(uVar);
        } else {
            this.d.onViewRecycled(uVar);
        }
    }

    @VisibleForTesting
    void a(int i) {
        if (this.h != null) {
            this.h.onAdLoaded(i);
        }
        notifyItemInserted(i);
    }

    @VisibleForTesting
    void b(int i) {
        if (this.h != null) {
            this.h.onAdRemoved(i);
        }
        notifyItemRemoved(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<View> list, List<View> list2) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.c.placeAdsInRange(i, i2 + 1);
    }

    private void a(boolean z) {
        super.setHasStableIds(z);
    }
}
