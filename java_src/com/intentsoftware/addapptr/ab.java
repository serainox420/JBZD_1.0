package com.intentsoftware.addapptr;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionReporter.java */
/* loaded from: classes2.dex */
public class ab extends m {
    private static final String REPORT_URL = "https://tracking.aatkit.com/cgi-bin/track.cgi";

    /* JADX INFO: Access modifiers changed from: package-private */
    public void report(int i) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Reporting session");
        }
        HashMap<String, String> hashMap = com.intentsoftware.addapptr.b.a.toHashMap();
        hashMap.put("event", "1");
        hashMap.put("ticks", String.valueOf(i));
        if (c.isOptionEnabled("LOGREPORT")) {
            com.intentsoftware.addapptr.c.h.log("Sending USER session statistics to server");
        }
        new com.intentsoftware.addapptr.b.b(REPORT_URL, hashMap, createRetryListener(hashMap));
    }

    @Override // com.intentsoftware.addapptr.m
    String getReportUrl() {
        return REPORT_URL;
    }
}
