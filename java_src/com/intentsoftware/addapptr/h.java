package com.intentsoftware.addapptr;

import android.app.Activity;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdProvider.java */
/* loaded from: classes2.dex */
public class h implements e {
    private ArrayList<b> configs;
    private e listener;
    private d loader;
    private b pickedConfig;
    private final String placementName;
    private com.intentsoftware.addapptr.c.k placementTargetingInformation;
    private final PlacementSize size;
    private final v stats;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(PlacementSize placementSize, v vVar, String str) {
        this.stats = vVar;
        this.placementName = str;
        this.size = placementSize;
        this.loader = new d(placementSize);
        this.loader.setListener(this);
    }

    public synchronized void load(ArrayList<b> arrayList, com.intentsoftware.addapptr.c.k kVar) {
        this.placementTargetingInformation = kVar;
        if (!isLoading()) {
            this.configs = new ArrayList<>(arrayList);
            loadInternal(arrayList);
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Ignoring reload request, ad is already loading.");
        }
    }

    private void loadInternal(ArrayList<b> arrayList) {
        this.pickedConfig = g.pickAd(arrayList, this.stats);
        if (this.pickedConfig != null) {
            this.loader.requestAdLoad(this.pickedConfig, this.placementTargetingInformation);
            return;
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Failed to load ad. Ad picker returned null.");
        }
        onLoadingFinished();
        if (this.listener != null) {
            this.listener.onFailedToLoadAd("ad picker returned null");
        }
    }

    public synchronized boolean isLoading() {
        return this.configs != null;
    }

    private synchronized void onLoadingFinished() {
        this.configs = null;
    }

    public void onResume(Activity activity) {
        this.loader.onResume(activity);
    }

    public void onPause() {
        this.loader.onPause();
    }

    @Override // com.intentsoftware.addapptr.e
    public void onAdRequested(b bVar) {
        if (c.isOptionEnabled("LOGREQUEST")) {
            com.intentsoftware.addapptr.c.h.log("Requested ad: " + bVar.getNetwork() + " for placement:" + this.placementName + ", size:" + this.size);
        }
        bVar.setLastTryTimestamp(System.currentTimeMillis());
        if (this.listener != null) {
            this.listener.onAdRequested(bVar);
        }
    }

    @Override // com.intentsoftware.addapptr.e
    public void onAdLoaded(com.intentsoftware.addapptr.ad.a aVar) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Loaded " + aVar.getClass().getSimpleName());
        }
        if (c.isOptionEnabled("LOGRESPONSE")) {
            com.intentsoftware.addapptr.c.h.log("Ad:" + aVar.getConfig().getNetwork() + " for placement:" + this.placementName + ", size:" + this.size + " loaded successfully");
        }
        onLoadingFinished();
        if (this.listener != null) {
            this.listener.onAdLoaded(aVar);
        }
    }

    @Override // com.intentsoftware.addapptr.e
    public synchronized void onFailedToLoadAd(String str) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(3) && this.pickedConfig != null) {
            com.intentsoftware.addapptr.c.c.d(this, "Failed to load " + this.pickedConfig.getNetwork() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.pickedConfig.getSize() + ", reason: " + str);
        }
        if (c.isOptionEnabled("LOGRESPONSE")) {
            com.intentsoftware.addapptr.c.h.log("Ad:" + this.pickedConfig.getNetwork() + " for placement:" + this.placementName + ", size:" + this.size + " failed to load");
        }
        this.configs.remove(this.pickedConfig);
        loadInternal(this.configs);
    }

    public void setListener(e eVar) {
        this.listener = eVar;
    }

    public synchronized void destroy() {
        this.loader.destroy();
        this.loader = null;
        if (this.configs != null) {
            this.configs.clear();
        }
        this.listener = null;
    }
}
