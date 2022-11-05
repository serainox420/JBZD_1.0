package com.adcolony.sdk;

import com.adcolony.sdk.ADCDownload;
import com.facebook.GraphResponse;
import com.millennialmedia.NativeAd;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements ADCDownload.Listener {
    public void a() {
        a.a("WebServices.download", new ac() { // from class: com.adcolony.sdk.l.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                new ADCDownload(zVar, l.this);
            }
        });
        a.a("WebServices.get", new ac() { // from class: com.adcolony.sdk.l.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                new ADCDownload(zVar, l.this);
            }
        });
        a.a("WebServices.post", new ac() { // from class: com.adcolony.sdk.l.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                new ADCDownload(zVar, l.this);
            }
        });
    }

    @Override // com.adcolony.sdk.ADCDownload.Listener
    public void on_download_finished(ADCDownload aDCDownload, z zVar, Map<String, List<String>> map) {
        JSONObject a2 = s.a();
        s.a(a2, "url", aDCDownload.f957a);
        s.a(a2, GraphResponse.SUCCESS_KEY, aDCDownload.e);
        s.b(a2, "status", aDCDownload.g);
        s.a(a2, NativeAd.COMPONENT_ID_BODY, aDCDownload.b);
        s.b(a2, "size", aDCDownload.f);
        if (map != null) {
            JSONObject a3 = s.a();
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String obj = entry.getValue().toString();
                String substring = obj.substring(1, obj.length() - 1);
                if (entry.getKey() != null) {
                    s.a(a3, entry.getKey(), substring);
                }
            }
            s.a(a2, "headers", a3);
        }
        zVar.a(a2).b();
        aDCDownload.h.shutdown();
    }
}
