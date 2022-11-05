package com.adcolony.sdk;

import android.util.Pair;
import com.adcolony.sdk.bn;
import com.google.firebase.a.a;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.loopme.debugging.Params;
import com.mopub.common.AdType;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.TreeSet;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ci {
    static final String A = "redeeming";
    static final String B = "redeemed";
    static final String C = "cancelled";
    static final String D = "captured";
    static final String E = "captured_error";
    static final String F = "ser_rew.ymf";

    /* renamed from: a  reason: collision with root package name */
    static final bu f1285a = new bu();
    static int b = -1;
    static int c = 0;
    static int d = 1;
    static int e = 2;
    static int f = 3;
    static int g = 4;
    static int h = 5;
    static String i = "digitalPackages";
    static String j = "digitalRedemptions";
    static String k = "customRewards";
    static String l = "googleIap";
    static String m = "amazonIap";
    static String n = "serverReward";
    static String o = AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID;
    static String p = "consumable";
    static String q = "invisible";
    static String r = AnalyticsSQLiteHelper.TRANSACTION_ID;
    static int s = -1;
    static int t = 0;
    static int u = 0;
    static int v = 0;
    static int w = 0;
    static int x = 0;
    static int y = 0;
    static final String z = "pending";
    Queue<Map<String, String>> G = new LinkedList();
    Queue<Map<String, String>> H = new LinkedList();
    volatile ArrayDeque<Map<String, Object>> I = new ArrayDeque<>();

    /* JADX INFO: Access modifiers changed from: private */
    public static String o() {
        return "AdColonyPubServices";
    }

    void a(final String str, final String str2, final boolean z2) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(ci.o(), "CUSTOM: grantRewardImpl: " + bz.aK().at().a(bn.aG), true);
                if (bz.aK().x()) {
                    new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.1.1
                        @Override // com.adcolony.sdk.bp
                        public synchronized void a() {
                            int i2 = 1;
                            synchronized (this) {
                                HashMap hashMap = new HashMap();
                                hashMap.put("reward_name", str);
                                String str3 = ci.q;
                                if (!z2) {
                                    i2 = 0;
                                }
                                hashMap.put(str3, Integer.toString(i2));
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put("rewardKey", str2);
                                ce.c().a(bz.aK().at().a(bn.aG), (Map<String, String>) hashMap, "customReward", false, (Map<String, Object>) hashMap2, 1, new bk() { // from class: com.adcolony.sdk.ci.1.1.1
                                    @Override // com.adcolony.sdk.bk
                                    public void a(bn.a aVar) {
                                        a(aVar == bn.a.YVOLVER_ERROR_NONE, aVar);
                                    }
                                });
                            }
                        }
                    };
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str) {
        if (cp.b().e()) {
            bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ci.12
                @Override // com.adcolony.sdk.bv
                public void a() {
                    cb.b(ci.o(), "digitalRedemptionComplete callback", true);
                    if (cp.b().c() != null) {
                        cp.b().c().b(true, str);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.23
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                Map<String, Object> a2;
                String a3 = co.a(bz.aK().l());
                if (a3 != null && (a2 = co.a(a3, bz.aK().l())) != null && a2.containsKey(ci.j)) {
                    a2.remove(ci.j);
                    co.a(a2, a3, bz.aK().l());
                }
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.24
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                String a2 = co.a(bz.aK().l());
                if (a2 != null) {
                    Map<String, Object> a3 = co.a(a2, bz.aK().l());
                    if (a3 != null && a3.containsKey(ci.l)) {
                        a3.remove(ci.l);
                    }
                    if (a3 != null && a3.containsKey(ci.m)) {
                        a3.remove(ci.m);
                    }
                    co.a(a3, a2, bz.aK().l());
                }
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a(String str, int i2, String str2, Map<String, Object> map) {
        boolean z2;
        try {
            String uuid = UUID.randomUUID().toString();
            if (str == null) {
                str = "";
            }
            if (str2 == null) {
                str2 = "";
            }
            if (map == null) {
                map = new HashMap<>();
            }
            HashMap hashMap = new HashMap();
            hashMap.put("product_id", str);
            hashMap.put(a.b.QUANTITY, Integer.valueOf(i2));
            hashMap.put("encrypted_payload", str2);
            hashMap.put("user_params", map);
            hashMap.put("transaction_id", uuid);
            this.I.add(hashMap);
            new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.25
                @Override // com.adcolony.sdk.bp
                public synchronized void a() {
                    cb.b(ci.o(), "Saving server rewards.", true);
                    Map<String, Object> l2 = co.l(ci.F);
                    Iterator<Map<String, Object>> it = ci.this.I.iterator();
                    while (it.hasNext()) {
                        Map<String, Object> next = it.next();
                        l2.put((String) next.get("transaction_id"), next);
                    }
                    co.a(l2, ci.F);
                    cb.b(ci.o(), "server reward saved successfully", true);
                    b();
                }
            };
            z2 = true;
        } catch (Exception e2) {
            z2 = false;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(final int i2) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.26
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                ci.this.I.clear();
                final JSONArray jSONArray = new JSONArray();
                Map<String, Object> l2 = co.l(ci.F);
                if (l2 != null) {
                    for (Map.Entry<String, Object> entry : l2.entrySet()) {
                        Map<String, Object> map = (Map) entry.getValue();
                        ci.this.I.add(map);
                        jSONArray.put(co.e(map));
                    }
                    cb.b(ci.o(), "getServerRewardQueue callback called, queue: " + jSONArray, true);
                    bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ci.26.1
                        @Override // com.adcolony.sdk.bv
                        public void a() {
                            if (cp.b().c() != null) {
                                cp.b().c().a(i2, jSONArray);
                            }
                        }
                    });
                }
                b();
            }
        };
    }

    void b(String str) {
        final HashMap hashMap = new HashMap();
        hashMap.put("error_id", str);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ci.27
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (cp.b().c() != null) {
                    cp.b().c().a(co.a((Map<String, Object>) hashMap));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void c(final String str) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.28
            @Override // com.adcolony.sdk.bv
            public void a() {
                final String str2;
                HashMap hashMap = null;
                if (bz.aK().x()) {
                    cb.b(ci.o(), "processing serverRewards", true);
                    Map<String, Object> l2 = co.l(ci.F);
                    if (l2 != null) {
                        l2.entrySet().iterator();
                        Iterator<Map.Entry<String, Object>> it = l2.entrySet().iterator();
                        str2 = null;
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Map map = (Map) it.next().getValue();
                            str2 = (String) map.get("transaction_id");
                            if (str2.equals(str)) {
                                hashMap = new HashMap();
                                hashMap.put("transaction_id", str2);
                                hashMap.put(Params.DEVICE_ID, bz.aK().ar().j());
                                hashMap.put("encrypted_payload", map.get("encrypted_payload"));
                                hashMap.put("user_params", co.e((Map) map.get("user_params")).toString());
                                break;
                            }
                        }
                    } else {
                        final HashMap hashMap2 = new HashMap();
                        hashMap2.put("error_id", "Reward Map is empty");
                        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ci.28.2
                            @Override // com.adcolony.sdk.bv
                            public void a() {
                                if (cp.b().c() != null) {
                                    cp.b().c().a(co.a((Map<String, Object>) hashMap2));
                                }
                            }
                        });
                        str2 = null;
                    }
                    if (hashMap != null) {
                        final HashMap hashMap3 = new HashMap();
                        hashMap3.put("server_reward", co.e(hashMap).toString());
                        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.28.3
                            @Override // com.adcolony.sdk.bp
                            public synchronized void a() {
                                HashMap hashMap4 = new HashMap();
                                hashMap4.put(AnalyticsSQLiteHelper.TRANSACTION_ID, str2);
                                cb.b(ci.o(), "] posting server call: " + bn.aM, true);
                                ce.c().a(bz.aK().at().a(bn.aM), hashMap3, "serverReward", false, (Map<String, Object>) hashMap4, 1, new bk() { // from class: com.adcolony.sdk.ci.28.3.1
                                    @Override // com.adcolony.sdk.bk
                                    public void a(bn.a aVar) {
                                        boolean z2 = aVar == bn.a.YVOLVER_ERROR_NONE;
                                        if (!z2) {
                                            bz.aK().ay().b("Redemption failure");
                                        }
                                        a(z2, aVar);
                                    }
                                });
                            }
                        };
                        return;
                    }
                    final HashMap hashMap4 = new HashMap();
                    hashMap4.put("error_id", "unknown");
                    bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ci.28.4
                        @Override // com.adcolony.sdk.bv
                        public void a() {
                            if (cp.b().c() != null) {
                                cp.b().c().a(co.a((Map<String, Object>) hashMap4));
                            }
                        }
                    });
                    return;
                }
                final HashMap hashMap5 = new HashMap();
                hashMap5.put("error_id", "Service unavailable");
                bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.ci.28.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        if (cp.b().c() != null) {
                            cp.b().c().a(co.a((Map<String, Object>) hashMap5));
                        }
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void c() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.29
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                cb.b(ci.o(), "clearing server reward temp queue", true);
                ci.this.I.clear();
                Map<String, Object> l2 = co.l(ci.F);
                if (l2 != null) {
                    l2.entrySet().iterator();
                    for (Map.Entry<String, Object> entry : l2.entrySet()) {
                        ci.this.I.add((Map) entry.getValue());
                    }
                }
                b();
            }
        };
    }

    synchronized void d(final String str) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.2
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                Map<String, Object> l2 = co.l(ci.F);
                if (l2 != null) {
                    Iterator<Map.Entry<String, Object>> it = l2.entrySet().iterator();
                    while (it.hasNext()) {
                        if (it.next().getKey().equals(str)) {
                            it.remove();
                        }
                    }
                    co.a(l2, ci.F);
                }
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final String str2, final String str3, final long j2, final int i2) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.3
            /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
            /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
            @Override // com.adcolony.sdk.bv
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void a() {
                boolean z2 = true;
                if (bz.aK().y()) {
                    if (str != null && str2 != null && str3 != null) {
                        if (str.isEmpty()) {
                            cb.b(ci.o(), "Invalid googleJsonString: empty");
                            z2 = false;
                        } else if (str2.isEmpty()) {
                            cb.b(ci.o(), "Invalid purchaseSignature: empty");
                            z2 = false;
                        } else if (str3.isEmpty()) {
                            cb.b(ci.o(), "Invalid locale: empty");
                            z2 = false;
                        } else {
                            try {
                                HashMap hashMap = new HashMap();
                                JSONObject jSONObject = new JSONObject(str);
                                String str4 = null;
                                if (jSONObject.has("orderId")) {
                                    str4 = jSONObject.getString("orderId");
                                }
                                String string = jSONObject.getString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID);
                                String f2 = Float.toString(((float) j2) / 1000000.0f);
                                boolean i3 = bz.aK().i();
                                hashMap.put("iap_receipt_data", str);
                                hashMap.put("iap_product_id", string);
                                if (str4 != null) {
                                    hashMap.put("iap_transaction_id", str4);
                                }
                                hashMap.put("iap_price_locale", str3);
                                hashMap.put("iap_signature", str2);
                                hashMap.put("iap_price", f2);
                                hashMap.put("iap_service", "Google");
                                hashMap.put("in_game_currency_quantity", Integer.toString(i2));
                                if (i3) {
                                    hashMap.put("invisible", Integer.toString(1));
                                } else {
                                    hashMap.put("invisible", Integer.toString(0));
                                }
                                cb.b(ci.o(), "payloadSignature: " + co.a(ci.d(hashMap), bz.aK().g()), true);
                                ci.this.H.add(hashMap);
                                ci.this.d();
                            } catch (JSONException e2) {
                                cb.a(ci.o(), "JSON Error=" + e2.getMessage(), e2);
                            }
                        }
                        if (z2) {
                            String str5 = "";
                            try {
                                str5 = new JSONObject(str).getString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID);
                            } catch (JSONException e3) {
                                cb.a(ci.o(), "JSON Error=" + e3, e3);
                            }
                            bz.aK().aB().a(str5, "null value");
                            return;
                        }
                        return;
                    }
                    z2 = false;
                    if (z2) {
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, String str3, String str4, int i2) {
        boolean i3 = bz.aK().i();
        if (bz.aK().y()) {
            a(str, str2, str3, i3, str4, i2);
        }
    }

    void a(final String str, final String str2, final String str3, final boolean z2, final String str4, final int i2) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (str != null && str2 != null && str3 != null && str4 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("iap_product_id", str);
                    hashMap.put("iap_transaction_id", str2);
                    hashMap.put("iap_user_id", str3);
                    hashMap.put("invisible", Boolean.toString(z2));
                    hashMap.put("iap_price", str4);
                    hashMap.put("iap_service", "Amazon");
                    hashMap.put("in_game_currency_quantity", Integer.toString(i2));
                    String a2 = co.a(ci.d(hashMap), bz.aK().g());
                    cb.b(ci.o(), "payloadSignature: " + a2, true);
                    hashMap.put("payload_signature", a2);
                    ci.this.G.add(hashMap);
                    ci.this.e();
                    ci.this.g();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(Map<String, String> map) {
        try {
            String str = "";
            for (String str2 : new TreeSet(map.keySet())) {
                str = (str + str2) + map.get(str2);
            }
            cb.b(o(), "sigString: " + str, true);
            return str;
        } catch (Exception e2) {
            return "";
        }
    }

    synchronized void d() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.5
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                cb.b(ci.o(), "Saving google IAP", true);
                Map<String, Object> a2 = co.a(ci.l, true);
                for (Map<String, String> map : ci.this.H) {
                    String str = null;
                    try {
                        JSONObject jSONObject = new JSONObject(map.get("iap_receipt_data"));
                        String string = jSONObject.getString("purchaseToken");
                        if (jSONObject.has("orderId")) {
                            string = jSONObject.getString("orderId");
                            try {
                                map.put("iap_transaction_id", string);
                            } catch (JSONException e2) {
                                str = string;
                                e = e2;
                                cb.a(ci.o(), "Caught Exception->" + e.getMessage(), e);
                                map.put("yvolverSignature", bz.aK().g(map.get("iap_receipt_data") + map.get("iap_signature") + str + map.get("iap_product_id") + map.get("invisible") + map.get("iap_price_locale") + map.get("iap_price") + map.get("payload_signature") + map.get("in_game_currency_quantity")));
                                a2.put(str, map);
                            }
                        }
                        str = string;
                    } catch (JSONException e3) {
                        e = e3;
                    }
                    map.put("yvolverSignature", bz.aK().g(map.get("iap_receipt_data") + map.get("iap_signature") + str + map.get("iap_product_id") + map.get("invisible") + map.get("iap_price_locale") + map.get("iap_price") + map.get("payload_signature") + map.get("in_game_currency_quantity")));
                    a2.put(str, map);
                }
                co.a(ci.l, a2);
                cb.b(ci.o(), "google IAP saved successfully", true);
                ci.this.f();
                b();
            }
        };
    }

    synchronized void e() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.6
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                Map<String, Object> a2 = co.a(ci.m, false);
                for (Map<String, String> map : ci.this.G) {
                    map.put("yvolverSignature", bz.aK().g(map.get("iap_product_id") + map.get("iap_transaction_id") + map.get("iap_user_id") + map.get("invisible") + map.get("iap_price") + map.get("payload_signature") + map.get("in_game_currency_quantity")));
                    a2.put(map.get("iap_transaction_id"), map);
                }
                co.a(ci.m, a2);
                b();
            }
        };
    }

    synchronized void f() {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.7
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (ci.this.H.size() > 0) {
                    Map<String, String> poll = ci.this.H.poll();
                    if (poll.containsKey("yvolverSignature")) {
                        poll.remove("yvolverSignature");
                    }
                    ci.this.a(poll);
                }
            }
        });
    }

    synchronized void g() {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.8
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (ci.this.G.size() > 0) {
                    Map<String, String> poll = ci.this.G.poll();
                    if (poll.containsKey("yvolverSignature")) {
                        poll.remove("yvolverSignature");
                    }
                    ci.this.b(poll);
                }
            }
        });
    }

    void a(final Map<String, String> map) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.9
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                cb.b(ci.o(), "sending Google IAP=" + map, true);
                if (!bz.aK().x()) {
                    cb.b(ci.o(), "IAP send aborted", true);
                } else {
                    ce.c().a(bz.aK().at().a(bn.aE), map, "googleIap", false, (Map<String, Object>) null, 1, new bk() { // from class: com.adcolony.sdk.ci.9.1
                        @Override // com.adcolony.sdk.bk
                        public void a(bn.a aVar) {
                            a(aVar == bn.a.YVOLVER_ERROR_NONE, aVar);
                        }
                    });
                }
            }
        };
    }

    void b(final Map<String, String> map) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.10
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                if (!bz.aK().x()) {
                    cb.b(ci.o(), "IAP send aborted", true);
                } else {
                    ce.c().a(bz.aK().at().a(bn.aE), map, "amazonIap", false, (Map<String, Object>) null, 1, new bk() { // from class: com.adcolony.sdk.ci.10.1
                        @Override // com.adcolony.sdk.bk
                        public void a(bn.a aVar) {
                            a(aVar == bn.a.YVOLVER_ERROR_NONE, aVar);
                        }
                    });
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(final String str) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.11
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(ci.o(), "custom addCustomRewardTransactionToQueue", true);
                boolean i2 = bz.aK().i();
                Map<String, Object> a2 = co.a(ci.k, true);
                String str2 = "rewardCustom" + UUID.randomUUID();
                HashMap hashMap = new HashMap();
                hashMap.put("reward_name", str);
                hashMap.put(ci.q, Boolean.valueOf(i2));
                a2.put(str2, hashMap);
                co.a(ci.k, a2);
                ci.this.a(str, str2, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.13
            @Override // com.adcolony.sdk.bv
            public void a() {
                Map<String, Object> a2 = co.a(ci.k, false);
                if (a2 != null) {
                    for (Map.Entry<String, Object> entry : a2.entrySet()) {
                        String key = entry.getKey();
                        cb.b(ci.o(), "oldRewards key=" + key, true);
                        Map map = (Map) entry.getValue();
                        boolean booleanValue = ((Boolean) map.get(ci.q)).booleanValue();
                        ci.this.a((String) map.get("reward_name"), key, booleanValue);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(final String str) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.14
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (co.a(ci.l, false) != null) {
                    Map<String, Object> a2 = co.a(ci.l, false);
                    Iterator<Map.Entry<String, Object>> it = a2.entrySet().iterator();
                    while (it.hasNext()) {
                        String key = it.next().getKey();
                        cb.b(ci.o(), "removeGoogleIAPFromStorage key=" + key, true);
                        if (key.equals(str)) {
                            cb.b(ci.o(), "googleIAP removing transaction=" + str, true);
                            it.remove();
                        }
                    }
                    co.a(ci.l, a2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(final String str) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.15
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (co.a(ci.m, false) != null) {
                    Map<String, Object> a2 = co.a(ci.m, false);
                    Iterator<Map.Entry<String, Object>> it = a2.entrySet().iterator();
                    while (it.hasNext()) {
                        String key = it.next().getKey();
                        cb.b(ci.o(), "removeAmazon purchaseKey=" + key, true);
                        if (key.equals(str)) {
                            cb.b(ci.o(), "removing amazon transaction=" + str, true);
                            it.remove();
                        }
                    }
                    co.a(ci.m, a2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void i() {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.16
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(ci.o(), "checking purchases", true);
                if (bz.aK().x()) {
                    cb.b(ci.o(), "can attempt redemption", true);
                    new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.16.1
                        @Override // com.adcolony.sdk.bp
                        public synchronized void a() {
                            if (co.a(ci.l, false) == null) {
                                cb.b(ci.o(), "no google purchases were found", true);
                            } else {
                                for (Map.Entry<String, Object> entry : co.a(ci.l, false).entrySet()) {
                                    cb.b(ci.o(), "redemption key=" + entry.getKey(), true);
                                    Map<String, String> map = (Map) entry.getValue();
                                    String str = map.get("iap_receipt_data");
                                    cb.b(ci.o(), "redemption receipt=" + str, true);
                                    String str2 = map.get("iap_transaction_id");
                                    if (map.get("yvolverSignature").equals(bz.aK().g(str + map.get("iap_signature") + str2 + map.get("iap_product_id") + map.get("invisible") + map.get("iap_price_locale") + map.get("iap_price") + map.get("payload_signature") + map.get("in_game_currency_quantity")))) {
                                        map.remove("yvolverSignature");
                                        ci.this.a(map);
                                    } else {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("reason", "validation after storage retrival failed.");
                                        hashMap.put("transaction", str2);
                                        bz.aK().a("invalidIAPSignature", bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) hashMap);
                                    }
                                }
                            }
                            b();
                        }
                    };
                    cb.b(ci.o(), "checkForOldGooglePurchases event posted", true);
                    return;
                }
                cb.b(ci.o(), "could nto attempt endpoint (checkForOlPurchases)", true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void j() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.17
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                if (co.a(ci.m, false) != null) {
                    for (Map.Entry<String, Object> entry : co.a(ci.m, false).entrySet()) {
                        cb.b(ci.o(), "checkForOldAmazon key=" + entry.getKey(), true);
                        Map<String, String> map = (Map) entry.getValue();
                        String str = map.get("yvolverSignature");
                        String g2 = bz.aK().g(map.get("iap_product_id") + map.get("iap_transaction_id") + map.get("iap_user_id") + map.get("invisible") + map.get("iap_price") + map.get("payload_signature"));
                        cb.b(ci.o(), "checkForOldAmazon savedSignature=" + str + ", newSignature=" + g2, true);
                        if (str.equals(g2)) {
                            map.remove("yvolverSignature");
                            ci.this.b(map);
                        }
                    }
                }
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final int i2) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.18
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                boolean z2;
                int i3;
                Map map;
                Map map2 = null;
                synchronized (this) {
                    cb.b(ci.o(), "startPurchaseDigitalItem called: transactionId = " + (str == null ? "null" : str), true);
                    if (str != null && !str.isEmpty()) {
                        int i4 = ci.b;
                        String a2 = co.a(bz.aK().l());
                        if (a2 == null) {
                            cb.b(ci.o(), "startPurchaseDigitalItem: fileStore !found", true);
                            i3 = i4;
                            map = null;
                        } else {
                            Map a3 = co.a(a2, bz.aK().l());
                            if (a3 != null && a3.containsKey(ci.i)) {
                                map2 = (Map) a3.get(ci.i);
                                cb.b(ci.o(), "startPurchaseDigitalItem: transactionId=" + str + ", redemptionMap=" + map2, true);
                                if (map2 != null && map2.containsKey(str)) {
                                    map = a3;
                                    i3 = ((Integer) map2.get(str)).intValue();
                                }
                            }
                            map = a3;
                            i3 = i4;
                        }
                        if (map == null) {
                            map = new HashMap();
                        }
                        if (map2 == null) {
                            map2 = new HashMap();
                        }
                        if (i3 == ci.b) {
                            map2.put(str, Integer.valueOf(ci.c));
                            cb.b(ci.o(), "startPurchaseDigitalItem: transactionId=" + str + ", state = " + map2.get(str), true);
                            map.put(ci.i, map2);
                            co.a(map, a2, bz.aK().l());
                            z2 = true;
                            Boolean.valueOf(z2);
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(Boolean.valueOf(z2));
                            cb.b(ci.o(), "startPurchaseDigitalItem: params sent back to callback=" + co.a((List<Object>) arrayList), true);
                            cp.b().a(i2, arrayList);
                            b();
                        }
                    }
                    z2 = false;
                    Boolean.valueOf(z2);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(Boolean.valueOf(z2));
                    cb.b(ci.o(), "startPurchaseDigitalItem: params sent back to callback=" + co.a((List<Object>) arrayList2), true);
                    cp.b().a(i2, arrayList2);
                    b();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final String str2, final int i2) {
        f1285a.a(new bv() { // from class: com.adcolony.sdk.ci.19
            @Override // com.adcolony.sdk.bv
            public void a() {
                String str3 = null;
                HashMap hashMap = new HashMap();
                hashMap.put(AdType.STATIC_NATIVE, str);
                hashMap.put("signature", str2);
                hashMap.put("callbackId", Integer.valueOf(i2));
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString("transaction_id");
                    JSONArray jSONArray = jSONObject.getJSONArray("items");
                    List a2 = ci.this.a(jSONArray);
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("items", a2);
                    hashMap2.put("transaction_id", string);
                    if (bz.aK().g(co.a(hashMap2, (String[]) null)).equals(str2)) {
                        bz.aK().ay().a(co.a(jSONArray), string, i2);
                    } else {
                        str3 = "Error in digital redemption, invalid signature";
                    }
                } catch (JSONException e2) {
                    str3 = "Error in digital redemption from exception->" + e2.getMessage();
                }
                if (str3 != null) {
                    cb.b(ci.o(), str3);
                    bz.aK().a(str3, bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) hashMap);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Map<String, Object>> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i2);
            int i3 = jSONObject.getInt("digital_item_id");
            String string = jSONObject.getString("name");
            String string2 = jSONObject.getString("description");
            String string3 = jSONObject.getString("product_id");
            String string4 = jSONObject.getString("item_url_thumb");
            String string5 = jSONObject.getString("item_url_large");
            int i4 = jSONObject.getInt("item_type");
            int i5 = jSONObject.getInt(a.b.QUANTITY);
            boolean z2 = jSONObject.getBoolean("consumable");
            HashMap hashMap = new HashMap();
            hashMap.put("digital_item_id", Integer.valueOf(i3));
            hashMap.put("name", string);
            hashMap.put("description", string2);
            hashMap.put("product_id", string3);
            hashMap.put("item_url_thumb", string4);
            hashMap.put("item_url_large", string5);
            hashMap.put("item_type", Integer.valueOf(i4));
            hashMap.put(a.b.QUANTITY, Integer.valueOf(i5));
            hashMap.put("consumable", Boolean.valueOf(z2));
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    Boolean b(String str, int i2) {
        Map<String, Object> a2 = co.a(i, true);
        if (a2 != null) {
            a2.put(str, Integer.valueOf(i2));
            co.a(i, a2);
            return true;
        }
        return false;
    }

    void a(final List<Object> list, final String str, final int i2) {
        final String[] strArr = {"", "Unknown error granting digital items", "Exception caught during digital redemption process", "Not all items in the digital package could be granted", "Digital redemption delegates not implemented", "Unable to redeem due to service availability"};
        cb.b(o(), "purchaseDigitalItems: " + list, true);
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.20
            /* JADX WARN: Removed duplicated region for block: B:18:0x0072 A[Catch: Exception -> 0x00bb, all -> 0x0196, TryCatch #0 {Exception -> 0x00bb, blocks: (B:5:0x0005, B:7:0x0013, B:9:0x0021, B:11:0x0029, B:13:0x005a, B:15:0x0062, B:16:0x006e, B:18:0x0072, B:21:0x008d, B:23:0x0097, B:24:0x00a2, B:26:0x00a8, B:28:0x00b7, B:39:0x0111, B:40:0x0153, B:42:0x015f, B:43:0x0163, B:45:0x0169, B:50:0x0199), top: B:62:0x0005, outer: #1 }] */
            /* JADX WARN: Removed duplicated region for block: B:34:0x00f1 A[Catch: all -> 0x0196, TryCatch #1 {, blocks: (B:5:0x0005, B:7:0x0013, B:9:0x0021, B:11:0x0029, B:13:0x005a, B:15:0x0062, B:16:0x006e, B:18:0x0072, B:21:0x008d, B:23:0x0097, B:24:0x00a2, B:26:0x00a8, B:28:0x00b7, B:39:0x0111, B:40:0x0153, B:42:0x015f, B:43:0x0163, B:45:0x0169, B:50:0x0199, B:34:0x00f1, B:35:0x0105, B:57:0x01be, B:32:0x00bd), top: B:62:0x0005, inners: #0 }] */
            /* JADX WARN: Removed duplicated region for block: B:55:0x01b7  */
            /* JADX WARN: Removed duplicated region for block: B:57:0x01be A[Catch: all -> 0x0196, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x0005, B:7:0x0013, B:9:0x0021, B:11:0x0029, B:13:0x005a, B:15:0x0062, B:16:0x006e, B:18:0x0072, B:21:0x008d, B:23:0x0097, B:24:0x00a2, B:26:0x00a8, B:28:0x00b7, B:39:0x0111, B:40:0x0153, B:42:0x015f, B:43:0x0163, B:45:0x0169, B:50:0x0199, B:34:0x00f1, B:35:0x0105, B:57:0x01be, B:32:0x00bd), top: B:62:0x0005, inners: #0 }] */
            @Override // com.adcolony.sdk.bp
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public synchronized void a() {
                int i3;
                String str2;
                String a2;
                int i4;
                Map<String, Object> a3;
                try {
                    a2 = co.a(bz.aK().l());
                } catch (Exception e2) {
                    String format = String.format("Error in digital redemption for transactionId=" + str + ", exception caught during digital redemption process: %s", e2.getMessage());
                    bz.aK().a(e2, format);
                    i3 = 2;
                    str2 = format;
                }
                if (a2 != null && (a3 = co.a(a2, bz.aK().l())) != null && a3.containsKey(ci.i)) {
                    Map map = (Map) a3.get(ci.i);
                    cb.b(ci.o(), "purchaseDigitalItems: transactionId=" + str + ", redemptionMap = " + map, true);
                    if (map != null && map.containsKey(str)) {
                        i4 = ((Integer) map.get(str)).intValue();
                        if (i4 != ci.c) {
                            cb.b(ci.o(), "Transaction is pending; purchase digital items", true);
                            int i5 = !ci.this.b(str, ci.d).booleanValue() ? 1 : 0;
                            if (bz.aK().m()) {
                                ArrayList arrayList = new ArrayList();
                                Iterator it = list.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    Object next = it.next();
                                    AdColonyPubServicesDigitalItem adColonyPubServicesDigitalItem = new AdColonyPubServicesDigitalItem((Map) next);
                                    if (adColonyPubServicesDigitalItem == null) {
                                        cb.b(ci.o(), "Could not create local digital item from " + next + ". Digital redemption did not complete.");
                                        bz.aK().a("Could not create local digital item from " + next.toString(), bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) null);
                                        break;
                                    }
                                    arrayList.add(adColonyPubServicesDigitalItem);
                                }
                                if (list.size() == arrayList.size()) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        AdColonyPubServicesDigitalItem adColonyPubServicesDigitalItem2 = (AdColonyPubServicesDigitalItem) it2.next();
                                        cb.b(ci.o(), "Attempting to grant " + adColonyPubServicesDigitalItem2, true);
                                        bz.aK().aB().a(adColonyPubServicesDigitalItem2);
                                    }
                                    if (!ci.this.b(str, ci.e).booleanValue()) {
                                        i3 = 1;
                                        str2 = null;
                                    } else {
                                        i3 = i5;
                                        str2 = null;
                                    }
                                } else {
                                    str2 = "Error in digital redemption, not all items in the digital package could be granted.";
                                    i3 = 3;
                                }
                            } else {
                                str2 = "Error in digital redemption, digital redemption delegates not implemented.";
                                i3 = 5;
                            }
                        } else {
                            str2 = "Error in digital redemption, unable to redeem digital items, bad transaction state";
                            i3 = 0;
                        }
                        if (str2 != null) {
                            bz.aK().a(str2, bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) null);
                            ci.this.b(str, ci.f);
                        }
                        if (bz.aK().x()) {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(Integer.valueOf(i3));
                            cp.b().a(i2, arrayList2);
                            ci.this.a(strArr[i3]);
                            ci.this.k();
                        }
                    }
                }
                i4 = -1;
                if (i4 != ci.c) {
                }
                if (str2 != null) {
                }
                if (bz.aK().x()) {
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.21
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                cb.b(ci.o(), "finishing redemption transactions", true);
                final JSONArray jSONArray = new JSONArray();
                Map<String, Object> a2 = co.a(ci.i, false);
                if (a2 != null) {
                    ci.p();
                    for (Map.Entry<String, Object> entry : a2.entrySet()) {
                        String key = entry.getKey();
                        int intValue = ((Integer) entry.getValue()).intValue();
                        ci.c(intValue);
                        if (intValue == ci.e || intValue == ci.f) {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("transaction_id", key);
                                jSONObject.put("result_code", intValue);
                                jSONArray.put(jSONObject);
                            } catch (JSONException e2) {
                                bs bsVar = new bs(bn.a.YVOLVER_ERROR_JSON, "JSON error occured while parsing redemption object tranaction id" + key + "exception msg=" + e2.getMessage());
                                bz.aK().a((Exception) e2, bn.a.YVOLVER_ERROR_JSON, "JSON error occured while parsing redemption object tranaction id" + key + "exception msg=" + e2.getMessage(), true);
                                a(bsVar);
                            }
                        }
                    }
                }
                if (jSONArray == null || jSONArray.length() == 0) {
                    cb.b(ci.o(), "finishDigRedemption. No transactions to finish", true);
                    b();
                } else {
                    new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.21.1
                        @Override // com.adcolony.sdk.bp
                        public synchronized void a() {
                            HashMap hashMap = new HashMap();
                            hashMap.put("transactions", jSONArray.toString());
                            bk bkVar = new bk() { // from class: com.adcolony.sdk.ci.21.1.1
                                @Override // com.adcolony.sdk.bk
                                public void a(bn.a aVar) {
                                    a(aVar == bn.a.YVOLVER_ERROR_NONE, aVar);
                                }
                            };
                            cb.b(ci.o(), "finishRedemptionTransactions successful. calling endpoint", true);
                            ce.c().a(bz.aK().at().a(bn.aL), (Map<String, String>) hashMap, "digiFinish", true, (Map<String, Object>) null, 1, bkVar);
                        }
                    };
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p() {
        s = 0;
        t = 0;
        u = 0;
        v = 0;
        w = 0;
        x = 0;
        y = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(int i2) {
        if (i2 == c) {
            t++;
        } else if (i2 == d) {
            u++;
        } else if (i2 == e) {
            v++;
        } else if (i2 == f) {
            w++;
        } else if (i2 == g) {
            x++;
        } else if (i2 == h) {
            y++;
        }
        s++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HashMap<String, Object> l() {
        Map<String, Object> a2;
        HashMap hashMap = new HashMap();
        HashMap<String, Object> hashMap2 = new HashMap<>();
        if (t == -1 && (a2 = co.a(i, false)) != null) {
            p();
            for (Map.Entry<String, Object> entry : a2.entrySet()) {
                entry.getKey();
                c(((Integer) entry.getValue()).intValue());
            }
        }
        hashMap.put(z, Integer.valueOf(t));
        hashMap.put(A, Integer.valueOf(u));
        hashMap.put(B, Integer.valueOf(v));
        hashMap.put("cancelled", Integer.valueOf(w));
        hashMap.put(D, Integer.valueOf(x));
        hashMap.put(E, Integer.valueOf(y));
        hashMap2.put("digital_redemption_counts", hashMap);
        return hashMap2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final List<Pair<String, Boolean>> list) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ci.22
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                int i2;
                Map<String, Object> a2 = co.a(ci.i, false);
                if (a2 != null) {
                    Set<Map.Entry<String, Object>> entrySet = a2.entrySet();
                    ci.p();
                    for (Map.Entry<String, Object> entry : entrySet) {
                        String key = entry.getKey();
                        int intValue = ((Integer) entry.getValue()).intValue();
                        cb.b(ci.o(), "transactionId=" + key, true);
                        int i3 = 0;
                        while (true) {
                            if (i3 >= list.size()) {
                                i2 = intValue;
                                break;
                            }
                            Pair pair = (Pair) list.get(i3);
                            boolean booleanValue = ((Boolean) pair.second).booleanValue();
                            if (!key.equals((String) pair.first)) {
                                i3++;
                            } else if (booleanValue) {
                                a2.put(key, Integer.valueOf(ci.g));
                                i2 = ci.g;
                            } else {
                                a2.put(key, Integer.valueOf(ci.h));
                                i2 = intValue;
                            }
                        }
                        ci.c(i2);
                    }
                    co.a(ci.i, a2);
                }
                b();
            }
        };
    }
}
