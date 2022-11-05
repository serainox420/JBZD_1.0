package com.intentsoftware.addapptr;

import android.util.Base64;
import com.google.android.gms.games.request.Requests;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StatisticsReporter.java */
/* loaded from: classes2.dex */
public class ac extends m {
    private static final int REPORTING_THRESHOLD = 55;
    private static final String REPORT_URL = "https://reporting.aatkit.com/cgi-bin/report.cgi";

    /* JADX INFO: Access modifiers changed from: package-private */
    public void report(s sVar) {
        HashMap<String, String> hashMap = com.intentsoftware.addapptr.b.a.toHashMap();
        if (putPlacementStats(hashMap, sVar)) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Reporting statistics for placement " + sVar.getName());
            }
            if (c.isOptionEnabled("LOGREPORT")) {
                com.intentsoftware.addapptr.c.h.log("REPORTING statistics for placement: " + sVar.getName());
            }
            new com.intentsoftware.addapptr.b.b(REPORT_URL, hashMap, createRetryListener(hashMap));
            return;
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Nothing to report for placement " + sVar.getName());
        }
        if (c.isOptionEnabled("LOGREPORT")) {
            com.intentsoftware.addapptr.c.h.log("REPORTING: nothing to report for placement: " + sVar.getName());
        }
    }

    private boolean putPlacementStats(Map<String, String> map, s sVar) {
        boolean z;
        int i;
        Map<b, f> currentNetworksStatistics = sVar.getStats().getCurrentNetworksStatistics();
        String reportPrefix = sVar.getAdType().getReportPrefix();
        boolean z2 = false;
        int i2 = 0;
        for (f fVar : currentNetworksStatistics.values()) {
            if (!fVar.isEmpty()) {
                putNetworkStats(map, fVar, reportPrefix, i2);
                z = true;
                i = i2 + 1;
            } else {
                z = z2;
                i = i2;
            }
            i2 = i;
            z2 = z;
        }
        if (z2) {
            map.put(reportPrefix + "place", sVar.getName());
            map.put(reportPrefix + "cnt", String.valueOf(sVar.getStats().getCurrentAdspacesCount()));
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldReportImmediately(List<s> list) {
        for (s sVar : list) {
            if (sVar.getStats().getCurrentAdspacesCount() > 55) {
                return true;
            }
            for (f fVar : sVar.getStats().getCurrentNetworksStatistics().values()) {
                if (!fVar.isEmpty() && (fVar.numRequests > 55 || fVar.numImpressions > 55 || fVar.numClicks > 55)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void putNetworkStats(Map<String, String> map, f fVar, String str, int i) {
        String str2;
        String reportingName = fVar.adConfig.getNetwork().getReportingName();
        String adId = fVar.adConfig.getAdId();
        try {
            str2 = Base64.encodeToString(adId.getBytes("UTF-8"), 11);
        } catch (UnsupportedEncodingException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                com.intentsoftware.addapptr.c.c.e(this, "Failed to encode network key:" + adId);
            }
            str2 = "encoding_failed";
        }
        map.put(str + "name" + i, reportingName);
        map.put(str + "key" + i, str2);
        map.put(str + "impression" + i, String.valueOf(fVar.numImpressions));
        map.put(str + "clicks" + i, String.valueOf(fVar.numClicks));
        map.put(str + Requests.EXTRA_REQUESTS + i, String.valueOf(fVar.numRequests));
        map.put(str + "responses" + i, String.valueOf(fVar.numResponses));
    }

    @Override // com.intentsoftware.addapptr.m
    String getReportUrl() {
        return REPORT_URL;
    }
}
