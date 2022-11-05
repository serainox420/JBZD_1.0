package com.intentsoftware.addapptr;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.intentsoftware.addapptr.ad.NativeAd;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import org.json.JSONArray;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NativePlacement.java */
/* loaded from: classes2.dex */
public class q extends s implements e {
    private static final int MAX_PARALLEL_DOWNLOADS = 10;
    private static final int ONE_DAY = 86400000;
    private static final int ONE_HOUR = 3600000;
    private static final String SHARED_PREFERENCES_PREFIX = "aatkit_native_placement_";
    private Activity activity;
    private final List<h> adLoaders;
    private final List<Long> displays;
    private final List<Runnable> emptyConfigAdFailRunnables;
    private final Handler handler;
    private int impressionsDuringSession;
    private String lastShownAdName;
    private final PriorityBlockingQueue<a> nativeAdsQueue;
    private Date timeWhenPaused;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativePlacement.java */
    /* loaded from: classes2.dex */
    public class a implements Comparable<a> {
        private final NativeAd nativeAd;
        private final long timestamp = new Date().getTime();

        a(NativeAd nativeAd) {
            this.nativeAd = nativeAd;
        }

        @Override // java.lang.Comparable
        public int compareTo(a aVar) {
            return this.nativeAd.getConfig().getPriority() != aVar.nativeAd.getConfig().getPriority() ? this.nativeAd.getConfig().getPriority() - aVar.nativeAd.getConfig().getPriority() : (int) (this.timestamp - aVar.timestamp);
        }

        public NativeAd getNativeAd() {
            return this.nativeAd;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(String str, PlacementSize placementSize, Context context) {
        super(str, placementSize, context, false);
        this.nativeAdsQueue = new PriorityBlockingQueue<>();
        this.displays = new ArrayList();
        this.emptyConfigAdFailRunnables = new ArrayList();
        this.adLoaders = new ArrayList();
        initDisplaysList();
        this.handler = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNumberOfCurrentlyLoadingNativeAds() {
        int i = 0;
        Iterator<h> it = this.adLoaders.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().isLoading() ? i2 + 1 : i2;
            } else {
                return this.emptyConfigAdFailRunnables.size() + i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFrequencyCapReached() {
        if (this.maxImpressionsPerSession == 0 || this.impressionsDuringSession < this.maxImpressionsPerSession) {
            if (this.maxImpressionsPerHour != 0 && countImpressions(ONE_HOUR) >= this.maxImpressionsPerHour) {
                return true;
            }
            if (this.maxImpressionsPerDay != 0 && countImpressions(ONE_DAY) >= this.maxImpressionsPerDay) {
                return true;
            }
            return this.minTimeBetweenImpressions != 0 && countImpressions(this.minTimeBetweenImpressions * 1000) > 0;
        }
        return true;
    }

    private int countImpressions(int i) {
        int i2 = 0;
        long time = new Date().getTime() - i;
        Iterator<Long> it = this.displays.iterator();
        while (true) {
            int i3 = i2;
            if (it.hasNext()) {
                i2 = it.next().longValue() >= time ? i3 + 1 : i3;
            } else {
                return i3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAdspace() {
        reportAdSpace();
    }

    private void initDisplaysList() {
        JSONArray jSONArray = null;
        String read = com.intentsoftware.addapptr.c.j.read(SHARED_PREFERENCES_PREFIX + getName(), null);
        if (read != null) {
            try {
                jSONArray = new JSONArray(read);
            } catch (JSONException e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    com.intentsoftware.addapptr.c.c.e(this, "Error reading JSON array: " + e.getMessage());
                }
            }
        }
        if (jSONArray != null) {
            long time = new Date().getTime() - 86400000;
            for (int i = 0; i < jSONArray.length(); i++) {
                if (!jSONArray.isNull(i)) {
                    long optLong = jSONArray.optLong(i);
                    if (optLong > time) {
                        this.displays.add(Long.valueOf(optLong));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdLoad(com.intentsoftware.addapptr.ad.a aVar) {
        if (aVar instanceof NativeAd) {
            this.nativeAdsQueue.add(new a((NativeAd) aVar));
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
            com.intentsoftware.addapptr.c.c.e(this, "returned ad is not an instance of native ad!");
        }
        super.handleAdLoad(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdClick(com.intentsoftware.addapptr.ad.a aVar) {
        handlePauseForAd();
        getStats().reportClick(aVar.getConfig());
        if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Reporting click for placement " + getName());
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public com.intentsoftware.addapptr.ad.a getLoadedAd() {
        if (this.nativeAdsQueue.isEmpty()) {
            return null;
        }
        return this.nativeAdsQueue.peek().getNativeAd();
    }

    @Override // com.intentsoftware.addapptr.s
    public String getLastShownAdName() {
        return this.lastShownAdName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.intentsoftware.addapptr.s
    public String getLoadedAdNames() {
        if (!this.nativeAdsQueue.isEmpty()) {
            try {
                a[] aVarArr = (a[]) this.nativeAdsQueue.toArray(new a[this.nativeAdsQueue.size()]);
                int length = aVarArr.length;
                String str = "";
                int i = 0;
                while (i < length) {
                    a aVar = aVarArr[i];
                    if (!str.isEmpty()) {
                        str = str + ", ";
                    }
                    i++;
                    str = str + aVar.getNativeAd().getConfig().getNetwork().toString();
                }
                return str;
            } catch (Exception e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    com.intentsoftware.addapptr.c.c.e(this, "Exception when reading list of loaded ad names: " + e.getMessage());
                }
                return "Error accessing list";
            }
        }
        return super.getLoadedAdNames();
    }

    @Override // com.intentsoftware.addapptr.s
    public boolean reload(boolean z) {
        if (getNumberOfCurrentlyLoadingNativeAds() >= 10) {
            if (!com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                return false;
            }
            com.intentsoftware.addapptr.c.c.w(this, "Cannot reload native placement- too many ads are already loading");
            return false;
        }
        return super.reload(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.intentsoftware.addapptr.s
    public boolean reloadInternal() {
        if (!getConfigs().isEmpty()) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Loading ad for placement " + getName());
            }
            if (c.isOptionEnabled("LOGLOAD")) {
                com.intentsoftware.addapptr.c.h.log("LoadAd called for placement:" + getName() + ", size:" + getSize());
            }
            h adLoader = getAdLoader();
            if (adLoader != null) {
                adLoader.load(getConfigs(), this.targetingInformation);
                return true;
            } else if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                com.intentsoftware.addapptr.c.c.e(this, "Failed to prepare ad loader for placement " + getName());
                return true;
            } else {
                return true;
            }
        }
        if (c.isOptionEnabled("LOGLOAD")) {
            com.intentsoftware.addapptr.c.h.log("LoadAd called for placement without rules available:" + getName() + ", size:" + getSize());
        }
        postOnNoConfigFailTimeoutAction();
        return true;
    }

    private h getAdLoader() {
        h hVar;
        Iterator<h> it = this.adLoaders.iterator();
        while (true) {
            if (!it.hasNext()) {
                hVar = null;
                break;
            }
            hVar = it.next();
            if (!hVar.isLoading()) {
                break;
            }
        }
        if (hVar == null && this.adLoaders.size() < 10) {
            h hVar2 = new h(getSize(), getStats(), getName());
            hVar2.onResume(this.activity);
            hVar2.setListener(this);
            this.adLoaders.add(hVar2);
            return hVar2;
        }
        return hVar;
    }

    private void postOnNoConfigFailTimeoutAction() {
        Runnable runnable = new Runnable() { // from class: com.intentsoftware.addapptr.q.1
            @Override // java.lang.Runnable
            public void run() {
                q.this.onNoConfigTimeoutAction();
                q.this.emptyConfigAdFailRunnables.remove(this);
            }
        };
        this.emptyConfigAdFailRunnables.add(runnable);
        this.handler.postDelayed(runnable, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    @Override // com.intentsoftware.addapptr.s
    public void configsFinishedDownloading() {
        super.configsFinishedDownloading();
        int i = 0;
        for (Runnable runnable : this.emptyConfigAdFailRunnables) {
            this.handler.removeCallbacks(runnable);
            i++;
        }
        this.emptyConfigAdFailRunnables.clear();
        for (int i2 = 0; i2 < i; i2++) {
            reloadInternal();
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public void onPause() {
        for (h hVar : this.adLoaders) {
            hVar.onPause();
        }
        Iterator<a> it = this.nativeAdsQueue.iterator();
        while (it.hasNext()) {
            it.next().getNativeAd().pause();
        }
        this.timeWhenPaused = new Date();
        com.intentsoftware.addapptr.c.j.write(SHARED_PREFERENCES_PREFIX + getName(), new JSONArray((Collection) this.displays).toString());
    }

    @Override // com.intentsoftware.addapptr.s
    public void onResume(Activity activity) {
        for (h hVar : this.adLoaders) {
            hVar.onResume(activity);
        }
        this.activity = activity;
        Iterator<a> it = this.nativeAdsQueue.iterator();
        while (it.hasNext()) {
            it.next().getNativeAd().resume(activity);
        }
        Date date = new Date();
        if (this.timeWhenPaused != null && date.getTime() - this.timeWhenPaused.getTime() > 3600000) {
            this.impressionsDuringSession = 0;
        }
    }

    @Override // com.intentsoftware.addapptr.s
    public com.intentsoftware.addapptr.ad.d getNativeAd() {
        if (this.nativeAdsQueue.isEmpty()) {
            return null;
        }
        NativeAd nativeAd = this.nativeAdsQueue.poll().getNativeAd();
        this.lastShownAdName = nativeAd.getConfig().getNetwork().toString();
        return nativeAd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.s
    public void handleAdShown(com.intentsoftware.addapptr.ad.a aVar) {
        super.handleAdShown(aVar);
        handleImpression(aVar.getConfig());
        this.impressionsDuringSession++;
        this.displays.add(Long.valueOf(new Date().getTime()));
    }

    @Override // com.intentsoftware.addapptr.e
    public void onAdRequested(b bVar) {
        getStats().reportRequest(bVar);
    }

    @Override // com.intentsoftware.addapptr.e
    public void onFailedToLoadAd(String str) {
        if (c.isOptionEnabled("LOGNTS")) {
            com.intentsoftware.addapptr.c.h.log("NTS: nothingToShow " + getName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "No Content");
        }
        if (c.isOptionEnabled("TRIGNOTHINGTOSHOW")) {
            com.intentsoftware.addapptr.c.h.writeLog("nothingToShow");
        }
        handleAdLoadFail();
    }

    @Override // com.intentsoftware.addapptr.e
    public void onAdLoaded(com.intentsoftware.addapptr.ad.a aVar) {
        getStats().reportResponse(aVar.getConfig());
        handleAdLoad(aVar);
    }

    @Override // com.intentsoftware.addapptr.s
    public AdType getAdType() {
        return AdType.NATIVE;
    }

    @Override // com.intentsoftware.addapptr.s
    public void destroy() {
        super.destroy();
        for (Runnable runnable : this.emptyConfigAdFailRunnables) {
            this.handler.removeCallbacks(runnable);
        }
        this.emptyConfigAdFailRunnables.clear();
        for (h hVar : this.adLoaders) {
            hVar.destroy();
        }
        this.adLoaders.clear();
    }
}
