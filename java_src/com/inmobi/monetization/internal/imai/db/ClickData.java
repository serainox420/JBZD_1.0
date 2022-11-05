package com.inmobi.monetization.internal.imai.db;

import com.inmobi.monetization.internal.imai.IMAICore;
/* loaded from: classes2.dex */
public class ClickData {

    /* renamed from: a  reason: collision with root package name */
    private long f3903a;
    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private long f;

    public ClickData() {
    }

    public ClickData(String str, boolean z, boolean z2, int i) {
        setClickId(IMAICore.getRandomNumber());
        setClickUrl(str);
        setFollowRedirect(z);
        setPingWv(z2);
        setRetryCount(i);
        setTimestamp(System.currentTimeMillis());
    }

    public long getClickId() {
        return this.f3903a;
    }

    public void setClickId(long j) {
        this.f3903a = j;
    }

    public String getClickUrl() {
        return this.b;
    }

    public void setClickUrl(String str) {
        this.b = str;
    }

    public long getTimestamp() {
        return this.f;
    }

    public void setTimestamp(long j) {
        this.f = j;
    }

    public boolean isPingWv() {
        return this.c;
    }

    public void setPingWv(boolean z) {
        this.c = z;
    }

    public int getRetryCount() {
        return this.d;
    }

    public void setRetryCount(int i) {
        this.d = i;
    }

    public boolean isFollowRedirects() {
        return this.e;
    }

    public void setFollowRedirect(boolean z) {
        this.e = z;
    }
}
