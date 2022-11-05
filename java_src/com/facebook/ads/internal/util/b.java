package com.facebook.ads.internal.util;
/* loaded from: classes.dex */
public enum b {
    BILLABLE_CLICK(0),
    CLICK_RESUME(8);
    
    int c;

    b(int i) {
        this.c = i;
    }

    public String a(String str) {
        return str + "&action=" + this.c;
    }
}
