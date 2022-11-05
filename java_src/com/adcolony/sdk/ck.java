package com.adcolony.sdk;

import android.annotation.SuppressLint;
import com.adcolony.sdk.bn;
import com.facebook.GraphResponse;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Semaphore;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"DefaultLocale"})
/* loaded from: classes.dex */
public class ck {

    /* renamed from: a  reason: collision with root package name */
    private Semaphore f1331a = new Semaphore(1);
    private long b = 0;
    private long c = 0;
    private Queue<Map<String, Object>> d = new ConcurrentLinkedQueue();
    private ArrayList<HashMap<String, Object>> e = null;
    private final String f = "STATS";
    private bv g = new bv() { // from class: com.adcolony.sdk.ck.1
        @Override // com.adcolony.sdk.bv
        public void a() {
            ck.this.f();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public String i() {
        return "AdColonyPubServices";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(ArrayList<HashMap<String, Object>> arrayList) {
        cb.b(i(), "cachedStats()", true);
        if (this.e == null) {
            this.e = new ArrayList<>();
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            this.e.clear();
            this.e.addAll(arrayList);
            cb.b(i(), "making statsRefreshed callback", true);
            bz.aK().aB().c();
        }
        if (arrayList != null) {
            cb.b(i(), "cachedStats: " + arrayList.size() + "items, _statsList has " + this.e.size() + " items.", true);
        } else {
            cb.b(i(), "cachedStats: null", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int a() {
        return this.d != null ? this.d.size() : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ArrayList<HashMap<String, Object>> b() {
        ArrayList<HashMap<String, Object>> arrayList;
        if (this.e != null) {
            cb.b(i(), "getStats: _statsList has " + this.e.size() + " items.", true);
            arrayList = (ArrayList) this.e.clone();
        } else {
            arrayList = new ArrayList<>();
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a(String str) throws IllegalArgumentException {
        HashMap<String, Object> b = b(str);
        if (b == null) {
            cb.b(i(), "Error: Stat " + str + " not found");
            throw new IllegalArgumentException();
        }
        Long l = (Long) b.get("value");
        if (l == null) {
            cb.b(i(), "Stat value is not of type long");
            throw new IllegalArgumentException();
        }
        return l.longValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, Object> b(String str) {
        if (str == null) {
            return null;
        }
        Iterator<HashMap<String, Object>> it = this.e.iterator();
        while (it.hasNext()) {
            HashMap<String, Object> next = it.next();
            if (next.containsValue(str)) {
                return next;
            }
        }
        cb.b(i(), "Error: Stat " + str + " not found");
        return null;
    }

    boolean a(String str, long j, int i) {
        return a(str, Long.toString(j), i);
    }

    boolean a(String str, String str2, int i) {
        boolean z;
        String j;
        boolean z2;
        int i2;
        if (str == null) {
            cb.b(i(), "Cannot queue a stat with a null name value");
            return false;
        }
        String lowerCase = str.toLowerCase();
        if (!bz.aK().z()) {
            cb.b(i(), "Stats are not available at this time.");
            return false;
        } else if (this.e == null || this.e.isEmpty()) {
            cb.b(i(), "Stats are not currently available for this app.");
            return false;
        } else {
            cb.b(i(), "name: " + lowerCase + " value: " + str2 + " command: " + i, true);
            boolean z3 = (i & 112) != 0;
            int i3 = 0;
            boolean z4 = false;
            HashMap<String, Object> hashMap = null;
            Iterator<HashMap<String, Object>> it = this.e.iterator();
            while (it.hasNext()) {
                HashMap<String, Object> next = it.next();
                if (next.containsValue(lowerCase)) {
                    ((Integer) next.get("ops")).intValue();
                    i2 = ((Integer) next.get("type")).intValue();
                    z2 = next.containsKey(com.intentsoftware.addapptr.w.PROMO_NAME) ? true : z4;
                } else {
                    next = hashMap;
                    z2 = z4;
                    i2 = i3;
                }
                z4 = z2;
                i3 = i2;
                hashMap = next;
            }
            if (!z3 && hashMap == null) {
                cb.b(i(), "Error: Stat " + lowerCase + ", not found.");
                return false;
            }
            int parseInt = Integer.parseInt(str2);
            if ((i & 6) != 0 && parseInt == 0) {
                cb.b(i(), "Zero value used for " + lowerCase + " stat command");
                return false;
            }
            String uuid = UUID.randomUUID().toString();
            String i4 = co.i();
            if (co.h() == 0) {
                z = false;
                j = co.i();
            } else {
                z = true;
                j = co.j();
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put("op", Integer.valueOf(i));
            hashMap2.put(bn.as, lowerCase);
            hashMap2.put(bn.at, Integer.valueOf(i3));
            hashMap2.put(bn.au, Integer.valueOf(parseInt));
            String g = bz.aK().g(lowerCase + uuid + parseInt);
            hashMap2.put("time", j);
            hashMap2.put(bn.ad, i4);
            hashMap2.put("stat_transaction_id", uuid);
            hashMap2.put("checksum", g);
            hashMap2.put("server_time_valid", Boolean.valueOf(z));
            this.d.add(hashMap2);
            cb.b(i(), "stat " + hashMap2 + " was queued", true);
            a(false);
            int k = bz.aK().at().k();
            cb.b(i(), "stat freq: " + k, true);
            if (((i & 120) != 0) || z4) {
                int l = bz.aK().at().l();
                cb.b(i(), "promo stat freq: " + l, true);
                k = Math.min(l, k);
            }
            a(k);
            cb.b(i(), "scheduleUpdateFromNowMs was called: " + k, true);
            cb.b(i(), "statQueueSize: " + bz.aK().av().d.size(), true);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        cb.b(i(), "scheduleStatsUpdateFromNowMs was called", true);
        try {
            this.f1331a.acquire();
        } catch (InterruptedException e) {
            cb.a(i(), "Caught Exception->" + e.getMessage(), e);
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = currentTimeMillis + j;
        if (j2 < this.c || this.c <= currentTimeMillis) {
            this.c = j2;
            bz.aK().aw().b(this.g);
            bz.aK().aw().b(this.g, j);
        }
        this.f1331a.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        bz.aK().aw().a(new bv() { // from class: com.adcolony.sdk.ck.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                ck.this.d.clear();
                co.i("STATS");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        long p = bz.aK().at().p();
        long currentTimeMillis = System.currentTimeMillis();
        if (z || currentTimeMillis - this.b > p) {
            cb.b(i(), "Saving stats", true);
            if (this.d.size() >= 1) {
                new bp(bz.aK().u) { // from class: com.adcolony.sdk.ck.3
                    @Override // com.adcolony.sdk.bp
                    public synchronized void a() {
                        Map<String, Object> a2 = co.a("STATS", true);
                        if (a2 != null) {
                            if (ck.this.d != null) {
                                for (Map map : ck.this.d) {
                                    a2.put((String) map.get("stat_transaction_id"), map);
                                }
                            }
                            co.a("STATS", a2);
                        }
                        b();
                    }
                };
                this.b = currentTimeMillis;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        a("", 0L, 16);
        a(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Collection<Map<String, Object>> collection) {
        if (this.d != null) {
            this.d.removeAll(collection);
        } else {
            this.d = new ConcurrentLinkedQueue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(final Collection<Map<String, Object>> collection) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ck.4
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                Map<String, Object> a2 = co.a("STATS", false);
                if (a2 != null) {
                    ArrayList arrayList = new ArrayList();
                    collection.iterator();
                    for (Map map : collection) {
                        arrayList.add((String) map.get("stat_transaction_id"));
                    }
                    Iterator<Map.Entry<String, Object>> it = a2.entrySet().iterator();
                    while (it.hasNext()) {
                        String key = it.next().getKey();
                        int i = 0;
                        while (true) {
                            if (i < arrayList.size()) {
                                if (!((String) arrayList.get(i)).equals(key)) {
                                    i++;
                                } else {
                                    it.remove();
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    co.a("STATS", a2);
                }
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ck.5
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                ck.this.d.clear();
                Map<String, Object> a2 = co.a("STATS", false);
                if (a2 != null) {
                    for (Map.Entry<String, Object> entry : a2.entrySet()) {
                        ck.this.d.add((Map) entry.getValue());
                    }
                    ck.this.a(0L);
                }
                b();
            }
        };
    }

    boolean f() {
        cb.b(i(), "flushStats()", true);
        if (!bz.aK().x()) {
            return false;
        }
        if (this.d == null || this.d.size() <= 0) {
            cb.b(i(), "stats queue is empty", true);
            return false;
        }
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.ck.6
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                try {
                    cb.b(ck.this.i(), "pre send queue:" + ck.this.d, true);
                    int i = 0;
                    for (Map map : ck.this.d) {
                        if (i >= bz.aK().at().y()) {
                            break;
                        }
                        int i2 = i + 1;
                        arrayList.add(map);
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(bn.as, map.get(bn.as));
                        jSONObject.put(bn.at, map.get(bn.at));
                        jSONObject.put(bn.au, map.get(bn.au));
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("op", map.get("op"));
                        jSONObject2.put("stat", jSONObject);
                        jSONObject2.put("time", map.get("time"));
                        jSONObject2.put(bn.ad, map.get(bn.ad));
                        jSONObject2.put("stat_transaction_id", map.get("stat_transaction_id"));
                        jSONObject2.put("checksum", map.get("checksum"));
                        if (bz.aK().g(map.get(bn.as) + ((String) map.get("stat_transaction_id")) + map.get(bn.au)).equals(map.get("checksum"))) {
                            jSONArray.put(jSONObject2);
                        } else {
                            arrayList2.add(map);
                        }
                        i = i2;
                    }
                    if (jSONArray.length() == 0) {
                        cb.b(ck.this.i(), "no stats in array", true);
                        b();
                    } else {
                        String jSONArray2 = jSONArray.toString();
                        cb.b(ck.this.i(), "statsParam: " + jSONArray2, true);
                        HashMap hashMap = new HashMap();
                        hashMap.put("data", jSONArray2);
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put(GraphResponse.SUCCESS_KEY, arrayList);
                        hashMap2.put("stats", jSONArray);
                        hashMap2.put("failed", arrayList2);
                        ce.c().a(bz.aK().at().a(bn.aJ), (Map<String, String>) hashMap, "stats", false, (Map<String, Object>) hashMap2, 1, new bk() { // from class: com.adcolony.sdk.ck.6.1
                            @Override // com.adcolony.sdk.bk
                            public void a(bn.a aVar) {
                                a(aVar == bn.a.YVOLVER_ERROR_NONE, aVar);
                            }
                        });
                    }
                } catch (JSONException e) {
                    bs bsVar = new bs(bn.a.YVOLVER_ERROR_JSON, "Error occurred while flushing STAT queue->" + e.getMessage());
                    bz.aK().a((Exception) e, bn.a.YVOLVER_ERROR_JSON, "Error occurred while flushing STAT queue->" + e.getMessage(), true);
                    a(bsVar);
                }
            }
        };
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str, long j) {
        return a(str, j, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str, long j) {
        return a(str, j, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(String str, long j) {
        return a(str, j, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(String str) {
        return a(str, 0L, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return a("", 0L, 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return a("", 0L, 64);
    }
}
