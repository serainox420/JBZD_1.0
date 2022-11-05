package com.loopme;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import com.loopme.LoopMeBanner;
import com.loopme.NativeVideoController;
import com.loopme.common.AdChecker;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.MinimizedMode;
import com.loopme.common.Utils;
/* loaded from: classes2.dex */
public class NativeVideoAdapter extends BaseAdapter implements NativeVideoController.DataChangeListener, AdChecker {
    private static final String LOG_TAG = NativeVideoAdapter.class.getSimpleName();
    private Context mContext;
    private LayoutInflater mInflater;
    private AbsListView mListView;
    private NativeVideoController mNativeVideoController;
    private BaseAdapter mOriginAdapter;
    private AbsListView.OnScrollListener mOriginScrollListener;

    public NativeVideoAdapter(BaseAdapter baseAdapter, Context context, AbsListView absListView) {
        this.mOriginAdapter = baseAdapter;
        this.mContext = context.getApplicationContext();
        this.mListView = absListView;
        this.mInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        this.mNativeVideoController = new NativeVideoController(this.mContext);
        absListView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.loopme.NativeVideoAdapter.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView2, int i) {
                if (NativeVideoAdapter.this.mOriginScrollListener != null) {
                    NativeVideoAdapter.this.mOriginScrollListener.onScrollStateChanged(absListView2, i);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView2, int i, int i2, int i3) {
                if (NativeVideoAdapter.this.mOriginScrollListener != null) {
                    NativeVideoAdapter.this.mOriginScrollListener.onScroll(absListView2, i, i2, i3);
                }
                NativeVideoAdapter.this.mNativeVideoController.onScroll(absListView2, NativeVideoAdapter.this);
            }
        });
        this.mOriginAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.loopme.NativeVideoAdapter.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                NativeVideoAdapter.this.triggerUpdateProcessor();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                NativeVideoAdapter.this.notifyDataSetInvalidated();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerUpdateProcessor() {
        notifyDataSetChanged();
        this.mNativeVideoController.refreshAdPlacement(this.mOriginAdapter.getCount());
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
        this.mNativeVideoController.onResume(this.mListView, this);
    }

    public void putAdWithAppKeyToPosition(String str, int i) {
        if (i < this.mOriginAdapter.getCount()) {
            this.mNativeVideoController.putAdWithAppKeyToPosition(str, i);
        } else {
            Logging.out(LOG_TAG, "Wrong position " + i);
        }
    }

    public void loadAds() {
        if (Build.VERSION.SDK_INT < 14) {
            this.mNativeVideoController.onLoadFail(new LoopMeError("Not supported Android version. Expected Android 4.0+"));
        } else if (Utils.isOnline(this.mContext)) {
            this.mNativeVideoController.loadAds(this.mOriginAdapter.getCount(), this);
        } else {
            this.mNativeVideoController.onLoadFail(new LoopMeError("No connection"));
        }
    }

    public void setMinimizedMode(MinimizedMode minimizedMode) {
        if (minimizedMode != null) {
            Logging.out(LOG_TAG, "Set minimized mode");
            this.mNativeVideoController.setMinimizedMode(minimizedMode);
        }
    }

    public void setOriginScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.mOriginScrollListener = onScrollListener;
    }

    public void setAdListener(LoopMeBanner.Listener listener) {
        this.mNativeVideoController.setListener(listener);
    }

    public void setViewBinder(NativeVideoBinder nativeVideoBinder) {
        this.mNativeVideoController.setViewBinder(nativeVideoBinder);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.mOriginAdapter.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return isAd(i) ? this.mOriginAdapter.getViewTypeCount() : this.mOriginAdapter.getItemViewType(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mOriginAdapter.getViewTypeCount() + 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.mOriginAdapter.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.mOriginAdapter.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.mOriginAdapter.unregisterDataSetObserver(dataSetObserver);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.mOriginAdapter.areAllItemsEnabled();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this.mOriginAdapter.isEnabled(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return this.mOriginAdapter.getDropDownView(i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mOriginAdapter.getCount() + this.mNativeVideoController.getAdsCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (isAd(i)) {
            return this.mNativeVideoController.getNativeVideoAd(i);
        }
        return this.mOriginAdapter.getItem(this.mNativeVideoController.getInitialPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (isAd(i)) {
            return -System.identityHashCode(this.mNativeVideoController.getNativeVideoAd(i));
        }
        return this.mOriginAdapter.getItemId(this.mNativeVideoController.getInitialPosition(i));
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (isAd(i)) {
            return this.mNativeVideoController.getAdView(this.mInflater, viewGroup, this.mNativeVideoController.getNativeVideoAd(i), i);
        }
        return this.mOriginAdapter.getView(this.mNativeVideoController.getInitialPosition(i), view, viewGroup);
    }

    @Override // com.loopme.common.AdChecker
    public boolean isAd(int i) {
        return this.mNativeVideoController.getNativeVideoAd(i) != null;
    }

    @Override // com.loopme.NativeVideoController.DataChangeListener
    public void onDataSetChanged() {
        this.mOriginAdapter.notifyDataSetChanged();
    }
}
