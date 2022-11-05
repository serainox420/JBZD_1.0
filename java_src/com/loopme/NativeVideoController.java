package com.loopme;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.loopme.LoopMeBanner;
import com.loopme.common.AdChecker;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.MinimizedMode;
import com.loopme.debugging.ErrorLog;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class NativeVideoController {
    private static final String LOG_TAG = NativeVideoController.class.getSimpleName();
    private LoopMeBanner.Listener mAdListener;
    private NativeVideoBinder mBinder;
    private Context mContext;
    private DataChangeListener mDataChangeListener;
    private boolean mHorizontalScrolling;
    private int mItemCount;
    private MinimizedMode mMinimizedMode;
    private SparseArray<View> mViewMap = new SparseArray<>();
    private SparseArray<LoopMeBanner> mAdsMap = new SparseArray<>();
    private SparseArray<String> mAppKeysMap = new SparseArray<>();

    /* loaded from: classes2.dex */
    public interface DataChangeListener {
        void onDataSetChanged();
    }

    public NativeVideoController(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshAdPlacement(int i) {
        int i2 = 0;
        if (i < this.mItemCount) {
            if (i == 0) {
                this.mAdsMap.get(this.mAdsMap.keyAt(0)).destroy();
                this.mAdsMap.clear();
                return;
            }
            SparseArray<LoopMeBanner> clone = this.mAdsMap.clone();
            this.mAdsMap.clear();
            while (true) {
                int i3 = i2;
                if (i3 < clone.size()) {
                    int keyAt = clone.keyAt(i3);
                    LoopMeBanner loopMeBanner = clone.get(keyAt);
                    if (keyAt <= i) {
                        this.mAdsMap.put(keyAt, loopMeBanner);
                    } else {
                        loopMeBanner.destroy();
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        Logging.out(LOG_TAG, "destroy");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mAppKeysMap.size()) {
                LoopMeBanner loopMeBanner = LoopMeBanner.getInstance(this.mAppKeysMap.valueAt(i2), null);
                if (loopMeBanner.getAdController().isVideoPresented()) {
                    loopMeBanner.getAdController().pauseVideo();
                }
                IViewController viewController = loopMeBanner.getAdController().getViewController();
                if (viewController != null) {
                    viewController.onPause();
                    viewController.onDestroy();
                }
                loopMeBanner.destroy();
                i = i2 + 1;
            } else {
                this.mViewMap.clear();
                this.mAdsMap.clear();
                this.mAppKeysMap.clear();
                this.mAdListener = null;
                this.mDataChangeListener = null;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPause() {
        if (this.mAdsMap.size() != 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdsMap.size()) {
                    LoopMeBanner valueAt = this.mAdsMap.valueAt(i2);
                    if (valueAt != null) {
                        valueAt.pause();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResume(AbsListView absListView, AdChecker adChecker) {
        if (this.mAdsMap.size() != 0) {
            if (this.mAdsMap.size() == 1) {
                LoopMeBanner valueAt = this.mAdsMap.valueAt(0);
                valueAt.getAdController().getViewController().onResume();
                if (valueAt.getAdController().getCurrentDisplayMode() == 101) {
                    valueAt.getAdController().setWebViewState(1);
                    return;
                }
            }
            onScroll(absListView, adChecker);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResume(RecyclerView recyclerView, AdChecker adChecker) {
        if (this.mAdsMap.size() != 0) {
            if (this.mAdsMap.size() == 1) {
                LoopMeBanner valueAt = this.mAdsMap.valueAt(0);
                valueAt.getAdController().getViewController().onResume();
                if (valueAt.getAdController().getCurrentDisplayMode() == 101) {
                    valueAt.getAdController().setWebViewState(1);
                    return;
                }
            }
            onScroll(recyclerView, adChecker);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setViewBinder(NativeVideoBinder nativeVideoBinder) {
        this.mBinder = nativeVideoBinder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListener(LoopMeBanner.Listener listener) {
        this.mAdListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoadFail(LoopMeError loopMeError) {
        if (this.mAdListener != null) {
            this.mAdListener.onLoopMeBannerLoadFail(null, loopMeError);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void putAdWithAppKeyToPosition(String str, int i) {
        Logging.out(LOG_TAG, "putAdWithAppKeyToPosition " + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + i);
        this.mAppKeysMap.put(i, str);
    }

    LoopMeBanner.Listener getListener() {
        return this.mAdListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoopMeBanner getNativeVideoAd(int i) {
        return this.mAdsMap.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAdsCount() {
        return this.mAdsMap.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getAdView(LayoutInflater layoutInflater, ViewGroup viewGroup, LoopMeBanner loopMeBanner, int i) {
        View inflate;
        Logging.out(LOG_TAG, "getAdView");
        checkFiftyPersentVisibility(this.mViewMap.get(i), loopMeBanner);
        if (this.mViewMap.indexOfKey(i) >= 0) {
            return this.mViewMap.get(i);
        }
        if (this.mBinder == null) {
            Logging.out(LOG_TAG, "Error: NativeVideoBinder is null. Init and bind it");
            inflate = null;
        } else {
            inflate = layoutInflater.inflate(this.mBinder.getLayout(), viewGroup, false);
            bindDataToView(inflate, this.mBinder, i);
        }
        this.mViewMap.put(i, inflate);
        return inflate;
    }

    private void bindDataToView(View view, NativeVideoBinder nativeVideoBinder, int i) {
        Logging.out(LOG_TAG, "bindDataToView");
        LoopMeBanner valueAt = this.mAdsMap.valueAt(this.mAdsMap.indexOfKey(i));
        valueAt.bindView((LoopMeBannerView) view.findViewById(nativeVideoBinder.getBannerViewId()));
        valueAt.showNativeVideo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadAds(int i, DataChangeListener dataChangeListener) {
        this.mDataChangeListener = dataChangeListener;
        this.mItemCount = i;
        if (this.mAppKeysMap.size() == 0) {
            ErrorLog.post("No ads for loading");
        }
        LoopMeBanner.Listener initBannerListener = initBannerListener();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.mAppKeysMap.size()) {
                LoopMeBanner loopMeBanner = LoopMeBanner.getInstance(this.mAppKeysMap.valueAt(i3), this.mContext);
                loopMeBanner.setListener(initBannerListener);
                loopMeBanner.load();
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }

    private LoopMeBanner.Listener initBannerListener() {
        return new LoopMeBanner.Listener() { // from class: com.loopme.NativeVideoController.1
            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerLoadSuccess(LoopMeBanner loopMeBanner) {
                loopMeBanner.setMinimizedMode(NativeVideoController.this.mMinimizedMode);
                NativeVideoController.this.addItem(loopMeBanner, NativeVideoController.this.mItemCount);
                if (NativeVideoController.this.mAdListener != null) {
                    NativeVideoController.this.mAdListener.onLoopMeBannerLoadSuccess(loopMeBanner);
                }
            }

            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerLoadFail(LoopMeBanner loopMeBanner, LoopMeError loopMeError) {
            }

            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerShow(LoopMeBanner loopMeBanner) {
            }

            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerHide(LoopMeBanner loopMeBanner) {
            }

            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerClicked(LoopMeBanner loopMeBanner) {
            }

            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerLeaveApp(LoopMeBanner loopMeBanner) {
            }

            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerVideoDidReachEnd(LoopMeBanner loopMeBanner) {
            }

            @Override // com.loopme.LoopMeBanner.Listener
            public void onLoopMeBannerExpired(LoopMeBanner loopMeBanner) {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addItem(LoopMeBanner loopMeBanner, int i) {
        int keyAt;
        int indexOfValue = this.mAppKeysMap.indexOfValue(loopMeBanner.getAppKey());
        if (indexOfValue >= 0 && indexOfValue < this.mAppKeysMap.size() && (keyAt = this.mAppKeysMap.keyAt(indexOfValue)) < getAdsCount() + i) {
            this.mAdsMap.put(keyAt, loopMeBanner);
            Logging.out(LOG_TAG, "add ad to position " + keyAt);
            if (this.mDataChangeListener != null) {
                this.mDataChangeListener.onDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getInitialPosition(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.mAdsMap.size(); i3++) {
            if (this.mAdsMap.keyAt(i3) <= i) {
                i2++;
            }
        }
        return i - i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onScroll(AbsListView absListView, AdChecker adChecker) {
        if (this.mAdsMap.size() != 0) {
            int firstVisiblePosition = absListView.getFirstVisiblePosition();
            int lastVisiblePosition = absListView.getLastVisiblePosition();
            if (lastVisiblePosition != -1) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < this.mAdsMap.size()) {
                        int keyAt = this.mAdsMap.keyAt(i2);
                        LoopMeBanner loopMeBanner = this.mAdsMap.get(keyAt);
                        if (loopMeBanner.getAdController().getCurrentDisplayMode() != 102) {
                            if (adChecker.isAd(keyAt)) {
                                if (keyAt < firstVisiblePosition || keyAt > lastVisiblePosition) {
                                    if (this.mAdsMap.size() == 1) {
                                        loopMeBanner.switchToMinimizedMode();
                                    } else {
                                        loopMeBanner.pause();
                                    }
                                } else {
                                    View childAt = absListView.getChildAt(keyAt - firstVisiblePosition);
                                    loopMeBanner.switchToNormalMode();
                                    checkFiftyPersentVisibility(childAt, loopMeBanner);
                                }
                            }
                            i = i2 + 1;
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onScroll(RecyclerView recyclerView, AdChecker adChecker) {
        int intValue;
        int intValue2;
        if (adChecker != null && recyclerView != null && this.mAdsMap.size() != 0) {
            RecyclerView.h layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                intValue = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
                intValue2 = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
            } else if (layoutManager instanceof GridLayoutManager) {
                intValue = ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
                intValue2 = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                try {
                    int[] a2 = ((StaggeredGridLayoutManager) layoutManager).a((int[]) null);
                    int[] b = ((StaggeredGridLayoutManager) layoutManager).b((int[]) null);
                    if (((StaggeredGridLayoutManager) layoutManager).k() == 0) {
                        this.mHorizontalScrolling = true;
                    }
                    ArrayList arrayList = new ArrayList(a2.length);
                    for (int i : a2) {
                        arrayList.add(Integer.valueOf(i));
                    }
                    ArrayList arrayList2 = new ArrayList(b.length);
                    for (int i2 : b) {
                        arrayList2.add(Integer.valueOf(i2));
                    }
                    intValue = ((Integer) Collections.min(arrayList)).intValue();
                    intValue2 = ((Integer) Collections.max(arrayList2)).intValue();
                } catch (NullPointerException e) {
                    return;
                }
            } else {
                intValue2 = 0;
                intValue = 0;
            }
            for (int i3 = 0; i3 < this.mAdsMap.size(); i3++) {
                int keyAt = this.mAdsMap.keyAt(i3);
                LoopMeBanner loopMeBanner = this.mAdsMap.get(keyAt);
                if (loopMeBanner.getAdController().getCurrentDisplayMode() != 102) {
                    if (adChecker.isAd(keyAt)) {
                        if (keyAt < intValue || keyAt > intValue2) {
                            if (this.mAdsMap.size() == 1) {
                                loopMeBanner.switchToMinimizedMode();
                            } else {
                                loopMeBanner.pause();
                            }
                        } else {
                            View childAt = recyclerView.getLayoutManager().getChildAt(keyAt - intValue);
                            loopMeBanner.switchToNormalMode();
                            checkFiftyPersentVisibility(childAt, loopMeBanner);
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    void checkFiftyPersentVisibility(View view, LoopMeBanner loopMeBanner) {
        if (loopMeBanner != null && view != null) {
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            int width = this.mHorizontalScrolling ? view.getWidth() / 2 : view.getHeight() / 2;
            int width2 = this.mHorizontalScrolling ? rect.width() : rect.height();
            if (globalVisibleRect) {
                if (width2 < width) {
                    loopMeBanner.pause();
                    return;
                }
                loopMeBanner.getAdController().setWebViewState(1);
                loopMeBanner.getAdController().getViewController().onResume();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMinimizedMode(MinimizedMode minimizedMode) {
        this.mMinimizedMode = minimizedMode;
    }
}
