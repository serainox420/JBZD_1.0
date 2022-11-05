package com.adcolony.sdk;

import com.adcolony.sdk.bn;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class be {

    /* renamed from: a  reason: collision with root package name */
    static final String f1108a = "catalog_splash";
    static final String b = "catalog_close_button";
    private final String c = "asset_signatures.bin";
    private final String d = "assets";
    private final String e = "version";
    private final String f = "1";
    private final String g = "md5";
    private final String h = "data";
    private final String i = "key";
    private final String j = "scale";
    private Map<String, Object> k = new HashMap();
    private bu l = new bu();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        Map<String, Object> f1114a;

        a(Map<String, Object> map) {
            this.f1114a = map;
        }

        String a() {
            return (String) this.f1114a.get("md5");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String b() {
            return (String) this.f1114a.get("data");
        }

        Float c() {
            return (Float) this.f1114a.get("scale");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String g() {
        return "AdColonyPubServices";
    }

    String a(String str) {
        return null;
    }

    void a() {
        this.k = new HashMap();
        this.k.put("version", "1");
        this.k.put("assets", new HashMap());
        f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final List<Map<String, Object>> list) {
        if (list != null) {
            this.l.a(new bv() { // from class: com.adcolony.sdk.be.1
                @Override // com.adcolony.sdk.bv
                public void a() {
                    cb.b(be.this.g(), "yConfig_assets: (" + list.getClass() + ") " + list, true);
                    for (Map map : list) {
                        cb.b(be.this.g(), "dict: " + map.getClass(), true);
                        String str = (String) map.get("key");
                        String str2 = (String) map.get("data");
                        String str3 = (String) map.get("md5");
                        cb.b(be.this.g(), "newAssetKey: " + str, true);
                        cb.b(be.this.g(), "newAssetMD5: " + str3, true);
                        boolean z = map.containsKey("key") && !str.isEmpty() && map.containsKey("data") && !str2.isEmpty() && map.containsKey("md5") && !str3.isEmpty();
                        cb.b(be.this.g(), "asset dict valid: " + z, true);
                        if (z) {
                            HashMap hashMap = new HashMap();
                            for (Map.Entry entry : map.entrySet()) {
                                hashMap.put((String) entry.getKey(), entry.getValue());
                            }
                            String h = co.h(str2);
                            if (!h.equals(str3)) {
                                bz.aK().a("Invalid checksum for asset: " + str + ", received: " + str3 + ", expected: " + h, bn.b.YVOLVER_SEVERITY_ERROR, true, (Map<String, Object>) null);
                                hashMap.put("md5", h);
                            }
                            be.this.a(hashMap);
                        } else if (!map.containsKey(str2) || str2.isEmpty()) {
                            if (map.containsKey(str) && !str.isEmpty()) {
                                be.this.d(str);
                            }
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> b() {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(bz.aK().l().openFileInput("asset_signatures.bin"));
            this.k = (Map) objectInputStream.readObject();
            objectInputStream.close();
        } catch (Exception e) {
            a();
        }
        f();
        return this.k;
    }

    void c() {
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(bz.aK().l().openFileOutput("asset_signatures.bin", 0));
            objectOutputStream.writeObject(this.k);
            objectOutputStream.flush();
            objectOutputStream.close();
        } catch (Exception e) {
            cb.a(g(), "Exception->" + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.l.a(new bv() { // from class: com.adcolony.sdk.be.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b("AssetManager", "Assets Deleted: " + bz.aK().l().deleteFile("asset_signatures.bin"), true);
                be.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a b(String str) {
        try {
            Map map = (Map) this.k.get("assets");
            if (map != null && map.containsKey(str)) {
                return new a((Map) map.get(str));
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    boolean c(String str) {
        try {
            Map map = (Map) this.k.get("assets");
            if (map.containsKey(str)) {
                if (map.get(str) != null) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    void d(final String str) {
        this.l.a(new bv() { // from class: com.adcolony.sdk.be.3
            @Override // com.adcolony.sdk.bv
            public void a() {
                Map map = (Map) be.this.k.get("assets");
                map.remove(str);
                be.this.k.put("assets", map);
                be.this.c();
            }
        });
    }

    void a(final Map<String, Object> map) {
        this.l.a(new bv() { // from class: com.adcolony.sdk.be.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                String str = (String) map.get("key");
                Map hashMap = new HashMap();
                if (be.this.k != null && be.this.k.containsKey("assets") && be.this.k.get("assets") != null) {
                    hashMap = (Map) be.this.k.get("assets");
                }
                hashMap.put(str, map);
                be.this.k.put("assets", hashMap);
                be.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONArray e() {
        JSONArray jSONArray = new JSONArray();
        try {
            if (this.k == null || this.k.isEmpty() || !this.k.containsKey("assets")) {
                cb.b(g(), "No signatures found.", true);
                return jSONArray;
            }
            for (Map.Entry entry : ((Map) this.k.get("assets")).entrySet()) {
                Map map = (Map) entry.getValue();
                String str = (String) map.get("key");
                String str2 = (String) map.get("md5");
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("key", str);
                    jSONObject.put("md5", str2);
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    cb.a(g(), "JSON error->" + e.getMessage(), e);
                }
            }
            return jSONArray;
        } catch (Exception e2) {
            return new JSONArray();
        }
    }

    void f() {
        this.l.a(new bv() { // from class: com.adcolony.sdk.be.5
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (!be.this.c(be.b)) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("key", be.b);
                    hashMap.put("data", "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");
                    hashMap.put("scale", Double.valueOf(1.0d));
                    hashMap.put("md5", co.h("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"));
                    be.this.a(hashMap);
                }
            }
        });
    }
}
