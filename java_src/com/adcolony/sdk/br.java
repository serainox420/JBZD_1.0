package com.adcolony.sdk;

import com.adcolony.sdk.bn;
import com.loopme.debugging.Params;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class br {

    /* renamed from: a  reason: collision with root package name */
    private long f1211a = 0;
    private boolean b = false;

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        return "AdColonyPubServices";
    }

    String a(bn.b bVar) {
        switch (bVar) {
            case YVOLVER_SEVERITY_ERROR:
                return "ERROR";
            case YVOLVER_SEVERITY_WARNING:
                return "WARNING";
            case YVOLVER_SEVERITY_NOTICE:
                return "NOTICE";
            case YVOLVER_SEVERITY_NONE:
                return "NONE";
            default:
                return "INVALID";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, bn.b bVar, boolean z, Map<String, Object> map) {
        if (str != null && map != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(Params.MSG, str);
            hashMap.put("severity", a(bVar));
            hashMap.put("data", map);
            bz.aK().aC().a("log", hashMap);
            a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, Map<String, Object> map) {
        bz.aK().aC().a(str, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(boolean z) {
        if (bz.aK().x()) {
            cb.b(a(), "Send Logs..", true);
            long currentTimeMillis = System.currentTimeMillis() - this.f1211a;
            if ((z || currentTimeMillis > bz.aK().at().q()) && !this.b) {
                new bp(bz.aK().u) { // from class: com.adcolony.sdk.br.1
                    @Override // com.adcolony.sdk.bp
                    public synchronized void a() {
                        br.this.b = true;
                        br.this.f1211a = System.currentTimeMillis();
                        int S = bz.aK().S();
                        TreeMap<String, Object> a2 = bz.aK().aC().a(S);
                        cb.b(br.this.a(), "requested sendLogs with lastMessageId: " + S, true);
                        cb.b(br.this.a(), "sending logs with lastMessageId: " + bz.aK().aC().c, true);
                        if (a2.isEmpty()) {
                            cb.b(br.this.a(), "No logs to send", true);
                            b();
                            br.this.b = false;
                        } else {
                            JSONObject jSONObject = new JSONObject();
                            new JSONArray();
                            try {
                                jSONObject.put("events", co.f(a2));
                                HashMap hashMap = new HashMap();
                                hashMap.put("events", jSONObject.toString());
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put("lastQueuedMessageId", Integer.valueOf(bz.aK().aC().c));
                                hashMap2.put("latestMessageLogged", Integer.valueOf(S));
                                ce.c().a(bz.aK().at().a(bn.aC), (Map<String, String>) hashMap, "logs", false, (Map<String, Object>) hashMap2, 1, new bk() { // from class: com.adcolony.sdk.br.1.1
                                    @Override // com.adcolony.sdk.bk
                                    public void a(bn.a aVar) {
                                        boolean z2 = false;
                                        bz.aK().ax().b = false;
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                                            z2 = true;
                                        }
                                        anonymousClass1.a(z2, aVar);
                                    }
                                });
                            } catch (JSONException e) {
                                bs bsVar = new bs(bn.a.YVOLVER_ERROR_JSON, "Error occurred when sending logs ->" + e.getMessage());
                                bz.aK().a((Exception) e, "Error occurred when sending logs ->" + e.getMessage(), true);
                                a(bsVar);
                            }
                        }
                    }
                };
            }
            cb.b(a(), "not time to send logs yet.", true);
        }
    }

    public void b(boolean z) {
        this.b = z;
    }
}
