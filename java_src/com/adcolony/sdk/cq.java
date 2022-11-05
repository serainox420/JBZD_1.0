package com.adcolony.sdk;

import android.webkit.WebView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cq {

    /* renamed from: a  reason: collision with root package name */
    static final String f1349a = "yvolver.js";
    static bu b = new bu();

    cq() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final cr crVar, final int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                cr.this.c();
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final cr crVar, final String str, final int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.12
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(cq.b(), "Catalog Page:" + str, true);
                crVar.a("", str);
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final String str, final int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.23
            @Override // com.adcolony.sdk.bv
            public void a() {
                Map<String, Object> b2 = co.b(str);
                if (b2 != null) {
                    bz.aK().i(b2);
                }
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b() {
        return "AdColonyPubServices";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(cr crVar, int i) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(cr crVar, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.24
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().F();
                cp.b().a(i, (List<Object>) null, true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(cr crVar, final int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.25
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().U();
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(final cr crVar, final String str, final int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.26
            @Override // com.adcolony.sdk.bv
            public void a() {
                Map<String, Object> b2 = co.b(str);
                if (b2 != null && b2.containsKey("event") && b2.containsKey("data")) {
                    bz.aK().a((String) b2.get("event"), (Map) b2.get("data"));
                    cq.a(crVar.a(), i, (String) null);
                }
            }
        });
    }

    static void e(cr crVar, int i) {
        cm m = bz.aK().az().m();
        if (m != null) {
            m.a(true);
            a(crVar.a(), i, (String) null);
        }
    }

    static void f(cr crVar, int i) {
        cm m = bz.aK().az().m();
        if (m != null) {
            m.a(false);
            a(crVar.a(), i, (String) null);
        }
    }

    static void a(cr crVar, int i, int i2) {
        cm m = bz.aK().az().m();
        if (m != null) {
            m.h(i);
            a(crVar.a(), i2, (String) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(cr crVar, final String str, int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.27
            @Override // com.adcolony.sdk.bv
            public void a() {
                Map<String, Object> b2 = co.b(str);
                if (b2 != null && b2.containsKey(bn.aj)) {
                    bz.aK().b((ArrayList) b2.get(bn.aj));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(final cr crVar, final int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.28
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(cq.b(), "Close was called via javascript", true);
                cr.this.b();
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(cr crVar, final String str, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.29
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(cq.b(), "jsLog: " + str, true);
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(final cr crVar, final String str, final int i) {
        cb.b(b(), "setCloseButtonParams was called via js", true);
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(cq.b(), "coordinates: " + str, true);
                Map<String, Object> b2 = co.b(str);
                if (b2 != null) {
                    crVar.a(b2);
                }
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(cr crVar, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.3
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().W();
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(cr crVar, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().as().d();
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(cr crVar, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.5
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().V();
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(cr crVar, final int i) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.6
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().f("SuperUserCommand");
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l(final cr crVar, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.7
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().ax().a(true);
            }
        });
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.8
            @Override // com.adcolony.sdk.bv
            public void a() {
                cq.a(cr.this.a(), i, (String) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void m(final cr crVar, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.9
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().H();
            }
        });
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.10
            @Override // com.adcolony.sdk.bv
            public void a() {
                cq.a(cr.this.a(), i, (String) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(final cr crVar, final String str, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.11
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().b(str);
            }
        });
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.13
            @Override // com.adcolony.sdk.bv
            public void a() {
                cq.a(cr.this.a(), i, (String) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(final cr crVar, final String str, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.14
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().d(str);
            }
        });
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.15
            @Override // com.adcolony.sdk.bv
            public void a() {
                cq.a(cr.this.a(), i, (String) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void n(cr crVar, int i) {
        bz.aK().ay().a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(cr crVar, final String str, final int i) {
        b.a(new bv() { // from class: com.adcolony.sdk.cq.16
            @Override // com.adcolony.sdk.bv
            public void a() {
                bz.aK().ay().c(str);
                cp.b().a(i, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(cr crVar, String str, int i) {
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("transaction_id")) {
                str2 = jSONObject.getString("transaction_id");
            } else {
                cb.b(b(), "Invalid or empty transaction id (" + (0 == 0 ? "null" : null) + ")", true);
            }
            cb.b(b(), "Calling startPurchaseDigitalItem()", true);
            bz.aK().ay().a(str2, i);
        } catch (JSONException e) {
            bz.aK().a(e, "YvolverWebAppInterfaceImpl.startPurchaseDigitalItem (JSON)");
        }
    }

    static void o(final cr crVar, final int i) {
        final Map<String, Object> X = bz.aK().X();
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.17
            @Override // com.adcolony.sdk.bv
            public void a() {
                cq.a(cr.this.a(), i, co.a((Map<String, Object>) X));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(cr crVar, String str, String str2, int i) {
        bz.aK().ay().a(str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(final cr crVar, final String str, final int i) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.cq.18
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                String str2 = str;
                Map<String, Object> l = co.l(cq.f1349a);
                if (l != null && l.get(str2) != null) {
                    JSONObject e = co.e((Map) l.get(str2));
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(e);
                    final String jSONArray2 = jSONArray.toString();
                    bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.18.1
                        @Override // com.adcolony.sdk.bv
                        public void a() {
                            cq.a(crVar.a(), i, jSONArray2);
                        }
                    });
                } else {
                    bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.18.2
                        @Override // com.adcolony.sdk.bv
                        public void a() {
                            cq.a(crVar.a(), i, (String) null);
                        }
                    });
                }
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(final cr crVar, final String str, final int i) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.cq.19
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                List<Object> a2 = co.a(str);
                Map<String, Object> l = co.l(cq.f1349a);
                l.put((String) a2.get(0), (Map) a2.get(1));
                co.a(l, cq.f1349a);
                bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.19.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        cq.a(crVar.a(), i, (String) null);
                    }
                });
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l(final cr crVar, final String str, final int i) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.cq.20
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                String str2 = str;
                Map<String, Object> l = co.l(cq.f1349a);
                l.remove(str2);
                co.a(l, cq.f1349a);
                bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.20.1
                    @Override // com.adcolony.sdk.bv
                    public void a() {
                        cq.a(crVar.a(), i, (String) null);
                    }
                });
                b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void p(final cr crVar, final int i) {
        new bp(bz.aK().u) { // from class: com.adcolony.sdk.cq.21
            @Override // com.adcolony.sdk.bp
            public synchronized void a() {
                co.a(new HashMap(), cq.f1349a);
                b();
            }
        };
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.cq.22
            @Override // com.adcolony.sdk.bv
            public void a() {
                cq.a(cr.this.a(), i, (String) null);
            }
        });
    }

    public static void a(WebView webView, int i, String str) {
        if (str == null) {
            str = co.a((Map<String, Object>) new HashMap());
        }
        cb.b(b(), "resultForCallback " + i + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str, true);
        co.a(webView, "javascript:NativeBridge.resultForCallback(" + i + ", " + str + ");");
    }
}
