package com.adcolony.sdk;

import android.net.Uri;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class YvolverDeepLinkManager {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1003a = "YvolverDeepLinkManager";
    private final Object d = new Object();
    private List<DeepLink> b = new ArrayList();
    private Map<AdColonyPubServicesCallbacks, List<DeepLink>> c = new HashMap();
    private bu e = new bu();

    /* loaded from: classes.dex */
    public interface DeepLinkBridge {
        void executeDeepLink(DeepLink deepLink, AdColonyPubServicesCallbacks adColonyPubServicesCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Uri uri, final Map<String, String> map, final boolean z) {
        this.e.a(new bv() { // from class: com.adcolony.sdk.YvolverDeepLinkManager.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                boolean z2 = true;
                cb.b(YvolverDeepLinkManager.f1003a, "onReceiveDeepLink() calling yvolverOnOpenUrl callback", true);
                DeepLink deepLink = new DeepLink(uri, map, z);
                boolean b = YvolverDeepLinkManager.this.b(deepLink);
                YvolverDeepLinkManager.this.a(deepLink);
                if (b && !bz.aK().w()) {
                    YvolverDeepLinkManager.this.a(deepLink);
                    z2 = false;
                }
                if (z2) {
                    bz.aK().t.a(deepLink, new DeepLinkBridge() { // from class: com.adcolony.sdk.YvolverDeepLinkManager.1.1
                        @Override // com.adcolony.sdk.YvolverDeepLinkManager.DeepLinkBridge
                        public void executeDeepLink(DeepLink deepLink2, AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
                            YvolverDeepLinkManager.this.a(adColonyPubServicesCallbacks, deepLink2);
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final DeepLink deepLink) {
        synchronized (this.d) {
            this.e.a(new bv() { // from class: com.adcolony.sdk.YvolverDeepLinkManager.2
                @Override // com.adcolony.sdk.bv
                public void a() {
                    YvolverDeepLinkManager.this.b.add(deepLink);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        synchronized (this.d) {
            this.e.a(new bv() { // from class: com.adcolony.sdk.YvolverDeepLinkManager.3
                @Override // com.adcolony.sdk.bv
                public void a() {
                    cb.b(YvolverDeepLinkManager.f1003a, "flushing deeplink queue", true);
                    for (DeepLink deepLink : YvolverDeepLinkManager.this.b) {
                        DeepLinkBridge deepLinkBridge = new DeepLinkBridge() { // from class: com.adcolony.sdk.YvolverDeepLinkManager.3.1
                            @Override // com.adcolony.sdk.YvolverDeepLinkManager.DeepLinkBridge
                            public void executeDeepLink(DeepLink deepLink2, AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
                                YvolverDeepLinkManager.this.a(adColonyPubServicesCallbacks, deepLink2);
                            }
                        };
                        bz.aK().t.a(deepLink, deepLinkBridge);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(DeepLink deepLink) {
        boolean z = false;
        if (deepLink == null || deepLink.b == null) {
            return false;
        }
        Iterator<String> it = deepLink.b.keySet().iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            String next = it.next();
            z = (next.equals("adcOpenCatalog") || next.equals("adcOpenUrl")) ? true : z2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AdColonyPubServicesCallbacks adColonyPubServicesCallbacks, final DeepLink deepLink) {
        this.e.a(new bv() { // from class: com.adcolony.sdk.YvolverDeepLinkManager.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                List arrayList;
                boolean z = true;
                if (YvolverDeepLinkManager.this.c.containsKey(adColonyPubServicesCallbacks)) {
                    arrayList = (List) YvolverDeepLinkManager.this.c.get(adColonyPubServicesCallbacks);
                    if (arrayList.contains(deepLink)) {
                        z = false;
                    }
                } else {
                    arrayList = new ArrayList();
                    YvolverDeepLinkManager.this.c.put(adColonyPubServicesCallbacks, arrayList);
                }
                if (z) {
                    boolean w = bz.aK().w();
                    if (YvolverDeepLinkManager.this.b(deepLink)) {
                        if (w) {
                            arrayList.add(deepLink);
                            YvolverDeepLinkManager.this.c(deepLink);
                            adColonyPubServicesCallbacks.onOpenUrl(deepLink.f1011a, deepLink.b, deepLink.c);
                            YvolverDeepLinkManager.this.a(deepLink, adColonyPubServicesCallbacks);
                            return;
                        }
                        return;
                    }
                    arrayList.add(deepLink);
                    adColonyPubServicesCallbacks.onOpenUrl(deepLink.f1011a, deepLink.b, deepLink.c);
                    YvolverDeepLinkManager.this.a(deepLink, adColonyPubServicesCallbacks);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final DeepLink deepLink) {
        this.e.a(new bv() { // from class: com.adcolony.sdk.YvolverDeepLinkManager.5
            /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0079  */
            /* JADX WARN: Removed duplicated region for block: B:9:0x001d  */
            @Override // com.adcolony.sdk.bv
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void a() {
                Map<String, Serializable> map;
                HashMap hashMap = null;
                if (deepLink != null && deepLink.b != null) {
                    for (String str : deepLink.b.keySet()) {
                        if (str.equals("adcOpenUrl") || str.equals("adcOpenCatalog")) {
                            Map<String, Serializable> a2 = YvolverDeepLinkManager.this.a(deepLink.b.get(str));
                            if (a2 == null || !str.equals("adcOpenUrl")) {
                                map = a2;
                            } else {
                                hashMap = new HashMap();
                                for (String str2 : a2.keySet()) {
                                    hashMap.put(str, a2.get(str2));
                                }
                                map = a2;
                            }
                            if (hashMap == null) {
                                bz.aK().i(hashMap);
                                return;
                            } else if (map != null) {
                                bz.aK().j(map);
                                return;
                            } else {
                                return;
                            }
                        }
                        while (r1.hasNext()) {
                        }
                    }
                    map = null;
                    if (hashMap == null) {
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DeepLink deepLink, AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
        List<DeepLink> list;
        if (deepLink != null && adColonyPubServicesCallbacks != null) {
            if (this.b != null) {
                this.b.remove(deepLink);
            }
            if (this.c != null && (list = this.c.get(adColonyPubServicesCallbacks)) != null) {
                list.remove(deepLink);
            }
        }
    }

    Map<String, Serializable> a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            new HashMap();
            return co.b(jSONObject);
        } catch (JSONException e) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public class DeepLink {

        /* renamed from: a  reason: collision with root package name */
        Uri f1011a;
        Map<String, String> b;
        boolean c;

        DeepLink(Uri uri, Map<String, String> map, boolean z) {
            this.f1011a = uri;
            this.b = map;
            this.c = z;
        }
    }
}
