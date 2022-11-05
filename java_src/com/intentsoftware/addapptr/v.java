package com.intentsoftware.addapptr;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: PlacementStats.java */
/* loaded from: classes2.dex */
class v {
    private int currentAdspacesCount = 0;
    private int totalAdspacesCount = 0;
    private final Map<b, f> currentNetworksStatistics = new HashMap();
    private final Map<b, f> totalNetworksStatistics = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportAdspace() {
        this.currentAdspacesCount++;
        this.totalAdspacesCount++;
    }

    private void putStatsToNetwork(Map<b, f> map, b bVar) {
        if (map.get(bVar) == null) {
            map.put(bVar, new f(bVar));
        }
    }

    private void updateImpression(Map<b, f> map, b bVar) {
        putStatsToNetwork(map, bVar);
        map.get(bVar).numImpressions++;
        map.get(bVar).adPickerImpressions++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportImpression(b bVar) {
        updateImpression(this.currentNetworksStatistics, bVar);
        updateImpression(this.totalNetworksStatistics, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void afterBannerClick(b bVar) {
        this.totalNetworksStatistics.get(bVar).adPickerImpressions = ((this.totalAdspacesCount * bVar.getPercentage()) / 100) + 10;
    }

    private void updateRequest(Map<b, f> map, b bVar) {
        putStatsToNetwork(map, bVar);
        map.get(bVar).numRequests++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportRequest(b bVar) {
        updateRequest(this.currentNetworksStatistics, bVar);
        updateRequest(this.totalNetworksStatistics, bVar);
    }

    private void updateResponse(Map<b, f> map, b bVar) {
        putStatsToNetwork(map, bVar);
        map.get(bVar).numResponses++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportResponse(b bVar) {
        updateResponse(this.currentNetworksStatistics, bVar);
        updateResponse(this.totalNetworksStatistics, bVar);
    }

    private void updateNumClicks(Map<b, f> map, b bVar) {
        putStatsToNetwork(map, bVar);
        map.get(bVar).numClicks++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportClick(b bVar) {
        updateNumClicks(this.currentNetworksStatistics, bVar);
        updateNumClicks(this.totalNetworksStatistics, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearCurrentStatistics() {
        for (f fVar : this.currentNetworksStatistics.values()) {
            fVar.clear();
        }
        this.currentAdspacesCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentAdspacesCount() {
        return this.currentAdspacesCount;
    }

    int getTotalAdspacesCount() {
        return this.totalAdspacesCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<b, f> getTotalNetworksStatistics() {
        return this.totalNetworksStatistics;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<b, f> getCurrentNetworksStatistics() {
        return this.currentNetworksStatistics;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTotalImpressionsCount() {
        int i = 0;
        Iterator<f> it = this.totalNetworksStatistics.values().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().numImpressions + i2;
            } else {
                return i2;
            }
        }
    }

    int getCurrentImpressionsCount() {
        int i = 0;
        Iterator<f> it = this.currentNetworksStatistics.values().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().numImpressions + i2;
            } else {
                return i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getImpressionsCountForAdpicker(b bVar) {
        if (this.totalNetworksStatistics.containsKey(bVar)) {
            return this.totalNetworksStatistics.get(bVar).adPickerImpressions;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void makeAdspacesCountEqualImpressions() {
        this.currentAdspacesCount = getCurrentImpressionsCount();
    }
}
