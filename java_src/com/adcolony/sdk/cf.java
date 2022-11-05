package com.adcolony.sdk;

import com.adcolony.sdk.bn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cf {
    static final String b = "logEvent.ymf";
    private static final String f = "type";
    private static final String g = "time";
    private static final String h = "client_time";
    private static final String i = "nonce";
    private static final String j = "data";
    private static final String k = "server_time_valid";
    private static final String l = "meta";

    /* renamed from: a  reason: collision with root package name */
    int f1273a;
    int c = 0;
    boolean d = false;
    Map<String, Object> e = new TreeMap();

    private String d() {
        return "AdColonyPubServices";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str, final Map<String, Object> map) {
        if (map != null && str != null && str.length() != 0 && !str.equals("")) {
            if (bz.aK().ar() == null) {
                cb.b(d(), "deviceData is null", true);
            }
            new bp(bz.aK().u) { // from class: com.adcolony.sdk.cf.1
                @Override // com.adcolony.sdk.bp
                public synchronized void a() {
                    Map<String, Object> l2 = co.l(cf.b);
                    TreeMap treeMap = new TreeMap();
                    if (l2 != null) {
                        treeMap = new TreeMap(l2);
                    }
                    int E = bz.aK().at().E();
                    int size = treeMap.size();
                    if (size < E) {
                        cf.this.f1273a = bz.aK().S();
                        cf.this.f1273a++;
                        bz.aK().a(cf.this.f1273a);
                        cf.this.e.put("LogEventMessage" + String.format("%06d", Integer.valueOf(cf.this.f1273a)), cf.this.c(str, map));
                        treeMap.putAll(cf.this.e);
                        cf.this.e.clear();
                        co.a(treeMap, cf.b);
                        bz.aK().ax().a(false);
                    } else {
                        HashMap hashMap = new HashMap();
                        hashMap.put("limit", Integer.valueOf(E));
                        hashMap.put("current_amount", Integer.valueOf(size));
                        cf.this.b("overflow_log", hashMap);
                    }
                    b();
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(final String str, final Map<String, Object> map) {
        if (map != null && str != null && !str.isEmpty()) {
            if (bz.aK().ar() == null) {
                cb.b(d(), "deviceData is null", true);
            }
            new bp(bz.aK().u) { // from class: com.adcolony.sdk.cf.2
                @Override // com.adcolony.sdk.bp
                public synchronized void a() {
                    Map<String, Object> l2 = co.l(cf.b);
                    if (l2 != null) {
                        Object[] array = l2.keySet().toArray();
                        int length = array.length - 1;
                        while (true) {
                            if (length < 0) {
                                break;
                            }
                            String str2 = (String) array[length];
                            String a2 = cf.this.a((Map) l2.get(str2));
                            if (a2 == null || !a2.equals(str)) {
                                length--;
                            } else {
                                l2.remove(str2);
                                break;
                            }
                        }
                    }
                    TreeMap treeMap = new TreeMap();
                    if (l2 != null) {
                        treeMap = new TreeMap(l2);
                    }
                    cf.this.f1273a = bz.aK().S();
                    cf.this.f1273a++;
                    bz.aK().a(cf.this.f1273a);
                    cf.this.e.put("LogEventMessage" + String.format("%06d", Integer.valueOf(cf.this.f1273a)), cf.this.c(str, map));
                    treeMap.putAll(cf.this.e);
                    cf.this.e.clear();
                    co.a(treeMap, cf.b);
                    bz.aK().ax().a(false);
                    b();
                }
            };
        }
    }

    String a(Map<String, Object> map) {
        if (map != null) {
            return (String) map.get("type");
        }
        return null;
    }

    Map<String, Object> c(String str, Map<String, Object> map) {
        String str2;
        if (str == null || map == null) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap(map);
        hashMap.put("sdkVersion", "3.0.7");
        hashMap.put("appVersion", bz.aK().ar().a());
        String i2 = co.i();
        boolean z = false;
        if (co.h() != 0) {
            z = true;
            str2 = co.j();
        } else {
            str2 = i2;
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put("type", str);
        hashMap2.put(g, str2);
        hashMap2.put(h, i2);
        hashMap2.put(i, UUID.randomUUID());
        hashMap2.put("data", hashMap);
        hashMap2.put(k, Boolean.valueOf(z));
        hashMap2.put(l, new HashMap(ci.l()));
        return hashMap2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, ?> a() {
        Map<String, Object> l2 = co.l(b);
        if (l2 == null) {
            return null;
        }
        return new TreeMap(l2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
    public TreeMap<String, Object> a(long j2) {
        TreeMap<String, Object> treeMap = null;
        try {
            Map<String, Object> l2 = co.l(b);
            if (l2 == null) {
                return null;
            }
            TreeMap treeMap2 = new TreeMap(l2);
            TreeMap<String, Object> treeMap3 = new TreeMap<>();
            try {
                Iterator it = treeMap2.entrySet().iterator();
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    int parseInt = Integer.parseInt(((String) entry.getKey()).substring(15));
                    if (parseInt > j2 || i3 >= bz.aK().at().x()) {
                        break;
                    }
                    treeMap3.put(entry.getKey(), entry.getValue());
                    i2 = i3 + 1;
                    this.c = parseInt;
                }
                return treeMap3;
            } catch (Exception e) {
                e = e;
                treeMap = treeMap3;
                cb.b(d(), "caught exception in getLogMessagesWithLastMessageId exc=" + e.toString(), true);
                return treeMap;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str, final Map<String, Object> map) {
        if (str != null && map != null && !map.isEmpty()) {
            new bp(bz.aK().u) { // from class: com.adcolony.sdk.cf.3
                @Override // com.adcolony.sdk.bp
                public synchronized void a() {
                    Map<String, Object> l2 = co.l(cf.b);
                    l2.put("LogEventMessage" + cf.this.f1273a, map);
                    co.a(l2, cf.b);
                    b();
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j2) {
        try {
            TreeMap treeMap = new TreeMap(co.l(b));
            cb.b(d(), "removeMsgsUpToMsgId lastMessageId=" + j2, true);
            Iterator it = treeMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (Integer.parseInt(((String) entry.getKey()).substring(15)) <= j2) {
                    it.remove();
                    cb.b(d(), "removing message: " + ((String) entry.getKey()), true);
                }
            }
            co.a(treeMap, b);
            if (a().size() == 0) {
                this.f1273a = 0;
                bz.aK().a(this.f1273a);
            }
        } catch (Exception e) {
            e.printStackTrace();
            bz.aK().a(e, bn.a.YVOLVER_ERROR_UNCAUGHT_EXCEPTION, "Caught exception in PersistentLogger", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        try {
            return bz.aK().l().getFileStreamPath(b).delete();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        b();
    }
}
