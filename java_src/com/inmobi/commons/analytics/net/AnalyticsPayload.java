package com.inmobi.commons.analytics.net;

import java.util.List;
/* loaded from: classes2.dex */
public class AnalyticsPayload {

    /* renamed from: a  reason: collision with root package name */
    private String f3765a;
    private List<Long> b;
    private String c;
    private int d;

    public int getPayloadSize() {
        return this.d;
    }

    public void setPayloadSize(int i) {
        this.d = i;
    }

    public AnalyticsPayload(String str, List<Long> list) {
        this.f3765a = str;
        this.b = list;
    }

    public String getOnlyEvent() {
        return this.f3765a;
    }

    public List<Long> getTableIdList() {
        return this.b;
    }

    public String getCompletePayload() {
        return this.c;
    }

    public void setCompletePayload(String str) {
        this.c = str;
    }
}
