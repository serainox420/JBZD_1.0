package com.mopub.nativeads;

import android.app.Activity;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.l;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class MoPubAdAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<View, Integer> f4582a;
    private final Adapter b;
    private final MoPubStreamAdPlacer c;
    private final l d;
    private MoPubNativeAdLoadedListener e;

    public MoPubAdAdapter(Activity activity, Adapter adapter) {
        this(activity, adapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), adapter, new l(activity));
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), adapter, new l(activity));
    }

    @VisibleForTesting
    MoPubAdAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, Adapter adapter, l lVar) {
        this.b = adapter;
        this.c = moPubStreamAdPlacer;
        this.f4582a = new WeakHashMap<>();
        this.d = lVar;
        this.d.a(new l.d() { // from class: com.mopub.nativeads.MoPubAdAdapter.1
            @Override // com.mopub.nativeads.l.d
            public void onVisibilityChanged(List<View> list, List<View> list2) {
                MoPubAdAdapter.this.a(list);
            }
        });
        this.b.registerDataSetObserver(new DataSetObserver() { // from class: com.mopub.nativeads.MoPubAdAdapter.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                MoPubAdAdapter.this.c.setItemCount(MoPubAdAdapter.this.b.getCount());
                MoPubAdAdapter.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                MoPubAdAdapter.this.notifyDataSetInvalidated();
            }
        });
        this.c.setAdLoadedListener(new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.3
            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdLoaded(int i) {
                MoPubAdAdapter.this.a(i);
            }

            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdRemoved(int i) {
                MoPubAdAdapter.this.b(i);
            }
        });
        this.c.setItemCount(this.b.getCount());
    }

    @VisibleForTesting
    void a(int i) {
        if (this.e != null) {
            this.e.onAdLoaded(i);
        }
        notifyDataSetChanged();
    }

    @VisibleForTesting
    void b(int i) {
        if (this.e != null) {
            this.e.onAdRemoved(i);
        }
        notifyDataSetChanged();
    }

    public final void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Tried to set a null ad renderer on the placer.")) {
            this.c.registerAdRenderer(moPubAdRenderer);
        }
    }

    public final void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.e = moPubNativeAdLoadedListener;
    }

    public void loadAds(String str) {
        this.c.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.c.loadAds(str, requestParameters);
    }

    public boolean isAd(int i) {
        return this.c.isAd(i);
    }

    public void clearAds() {
        this.c.clearAds();
    }

    public void destroy() {
        this.c.destroy();
        this.d.b();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return (this.b instanceof ListAdapter) && ((ListAdapter) this.b).areAllItemsEnabled();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return isAd(i) || ((this.b instanceof ListAdapter) && ((ListAdapter) this.b).isEnabled(this.c.getOriginalPosition(i)));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.c.getAdjustedCount(this.b.getCount());
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Object adData = this.c.getAdData(i);
        return adData != null ? adData : this.b.getItem(this.c.getOriginalPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Object adData = this.c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.b.getItemId(this.c.getOriginalPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.b.hasStableIds();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View adView = this.c.getAdView(i, view, viewGroup);
        if (adView == null) {
            adView = this.b.getView(this.c.getOriginalPosition(i), view, viewGroup);
        }
        this.f4582a.put(adView, Integer.valueOf(i));
        this.d.a(adView, 0);
        return adView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int adViewType = this.c.getAdViewType(i);
        return adViewType != 0 ? (adViewType + this.b.getViewTypeCount()) - 1 : this.b.getItemViewType(this.c.getOriginalPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.b.getViewTypeCount() + this.c.getAdViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.b.isEmpty() && this.c.getAdjustedCount(0) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<View> list) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f4582a.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.c.placeAdsInRange(i, i2 + 1);
    }

    public int getOriginalPosition(int i) {
        return this.c.getOriginalPosition(i);
    }

    public int getAdjustedPosition(int i) {
        return this.c.getAdjustedPosition(i);
    }

    public void insertItem(int i) {
        this.c.insertItem(i);
    }

    public void removeItem(int i) {
        this.c.removeItem(i);
    }

    public void setOnClickListener(ListView listView, final AdapterView.OnItemClickListener onItemClickListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnClickListener with a null ListView")) {
            if (onItemClickListener == null) {
                listView.setOnItemClickListener(null);
            } else {
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        if (!MoPubAdAdapter.this.c.isAd(i)) {
                            onItemClickListener.onItemClick(adapterView, view, MoPubAdAdapter.this.c.getOriginalPosition(i), j);
                        }
                    }
                });
            }
        }
    }

    public void setOnItemLongClickListener(ListView listView, final AdapterView.OnItemLongClickListener onItemLongClickListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView")) {
            if (onItemLongClickListener == null) {
                listView.setOnItemLongClickListener(null);
            } else {
                listView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.5
                    @Override // android.widget.AdapterView.OnItemLongClickListener
                    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
                        return MoPubAdAdapter.this.isAd(i) || onItemLongClickListener.onItemLongClick(adapterView, view, MoPubAdAdapter.this.c.getOriginalPosition(i), j);
                    }
                });
            }
        }
    }

    public void setOnItemSelectedListener(ListView listView, final AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView")) {
            if (onItemSelectedListener == null) {
                listView.setOnItemSelectedListener(null);
            } else {
                listView.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.6
                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                        if (!MoPubAdAdapter.this.isAd(i)) {
                            onItemSelectedListener.onItemSelected(adapterView, view, MoPubAdAdapter.this.c.getOriginalPosition(i), j);
                        }
                    }

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onNothingSelected(AdapterView<?> adapterView) {
                        onItemSelectedListener.onNothingSelected(adapterView);
                    }
                });
            }
        }
    }

    public void setSelection(ListView listView, int i) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setSelection with a null ListView")) {
            listView.setSelection(this.c.getAdjustedPosition(i));
        }
    }

    public void smoothScrollToPosition(ListView listView, int i) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView")) {
            listView.smoothScrollToPosition(this.c.getAdjustedPosition(i));
        }
    }

    public void refreshAds(ListView listView, String str) {
        refreshAds(listView, str, null);
    }

    public void refreshAds(ListView listView, String str, RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.refreshAds with a null ListView")) {
            View childAt = listView.getChildAt(0);
            int top = childAt == null ? 0 : childAt.getTop();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int max = Math.max(firstVisiblePosition - 1, 0);
            while (this.c.isAd(max) && max > 0) {
                max--;
            }
            int lastVisiblePosition = listView.getLastVisiblePosition();
            while (this.c.isAd(lastVisiblePosition) && lastVisiblePosition < getCount() - 1) {
                lastVisiblePosition++;
            }
            int originalPosition = this.c.getOriginalPosition(max);
            this.c.removeAdsInRange(this.c.getOriginalCount(lastVisiblePosition + 1), this.c.getOriginalCount(getCount()));
            int removeAdsInRange = this.c.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                listView.setSelectionFromTop(firstVisiblePosition - removeAdsInRange, top);
            }
            loadAds(str, requestParameters);
        }
    }
}
