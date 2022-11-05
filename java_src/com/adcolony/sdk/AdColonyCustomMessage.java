package com.adcolony.sdk;

import com.facebook.share.internal.ShareConstants;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyCustomMessage {

    /* renamed from: a  reason: collision with root package name */
    String f978a;
    String b;

    public AdColonyCustomMessage(String str, String str2) {
        if (au.d(str) || au.d(str2)) {
            this.f978a = str;
            this.b = str2;
        }
    }

    public String getMessage() {
        return this.b;
    }

    public String getType() {
        return this.f978a;
    }

    public AdColonyCustomMessage set(String str, String str2) {
        this.f978a = str;
        this.b = str2;
        return this;
    }

    public void send() {
        try {
            AdColony.f965a.execute(new Runnable() { // from class: com.adcolony.sdk.AdColonyCustomMessage.1
                @Override // java.lang.Runnable
                public void run() {
                    AdColony.a();
                    JSONObject a2 = s.a();
                    s.a(a2, "type", AdColonyCustomMessage.this.f978a);
                    s.a(a2, ShareConstants.WEB_DIALOG_PARAM_MESSAGE, AdColonyCustomMessage.this.b);
                    new z("CustomMessage.native_send", 1, a2).b();
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }
}
