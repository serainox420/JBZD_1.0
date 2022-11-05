package com.adcolony.sdk;

import com.facebook.share.internal.ShareConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements ac {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i() {
        a.a("CustomMessage.controller_send", this);
    }

    @Override // com.adcolony.sdk.ac
    public void a(z zVar) {
        final String b = s.b(zVar.b, "type");
        final String b2 = s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        if (a.l != null) {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.i.1
                @Override // java.lang.Runnable
                public void run() {
                    u.d.b("Received custom message " + b2 + " of type " + b);
                    try {
                        AdColonyCustomMessageListener adColonyCustomMessageListener = a.m.u.get(b);
                        if (adColonyCustomMessageListener != null) {
                            adColonyCustomMessageListener.onAdColonyCustomMessage(new AdColonyCustomMessage(b, b2));
                        }
                    } catch (RuntimeException e) {
                    }
                }
            });
        }
    }
}
