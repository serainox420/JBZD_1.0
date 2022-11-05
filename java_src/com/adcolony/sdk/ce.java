package com.adcolony.sdk;

import java.util.Map;
/* loaded from: classes.dex */
class ce extends bh {
    private static ce n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ce c() {
        if (n == null) {
            n = new ce();
        }
        return n;
    }

    private ce() {
    }

    @Override // com.adcolony.sdk.bh
    protected String a() {
        return "AdColonyPubServices";
    }

    @Override // com.adcolony.sdk.bh
    protected void a(Map<String, Object> map) {
    }

    @Override // com.adcolony.sdk.bh
    protected void b(Map<String, Object> map) {
    }

    @Override // com.adcolony.sdk.bh
    protected void b() {
    }
}
