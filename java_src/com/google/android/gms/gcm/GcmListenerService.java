package com.google.android.gms.gcm;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class GcmListenerService extends com.google.firebase.iid.zzb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzD(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    private void zzl(Intent intent) {
        Bundle extras = intent.getExtras();
        extras.remove("message_type");
        extras.remove("android.support.content.wakelockid");
        if (zza.zzE(extras)) {
            if (!zza.zzbu(this)) {
                zza.zzbt(this).zzG(extras);
                return;
            }
            zza.zzF(extras);
        }
        String string = extras.getString("from");
        extras.remove("from");
        zzD(extras);
        onMessageReceived(string, extras);
    }

    private static String zzm(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    @Override // com.google.firebase.iid.zzb
    public void handleIntent(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            String valueOf = String.valueOf(intent.getAction());
            Log.w("GcmListenerService", valueOf.length() != 0 ? "Unknown intent action: ".concat(valueOf) : new String("Unknown intent action: "));
            return;
        }
        String stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE;
        }
        char c = 65535;
        switch (stringExtra.hashCode()) {
            case -2062414158:
                if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_DELETED)) {
                    c = 1;
                    break;
                }
                break;
            case 102161:
                if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE)) {
                    c = 0;
                    break;
                }
                break;
            case 814694033:
                if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR)) {
                    c = 3;
                    break;
                }
                break;
            case 814800675:
                if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_EVENT)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                zzl(intent);
                return;
            case 1:
                onDeletedMessages();
                return;
            case 2:
                onMessageSent(intent.getStringExtra("google.message_id"));
                return;
            case 3:
                onSendError(zzm(intent), intent.getStringExtra("error"));
                return;
            default:
                String valueOf2 = String.valueOf(stringExtra);
                Log.w("GcmListenerService", valueOf2.length() != 0 ? "Received message with unknown type: ".concat(valueOf2) : new String("Received message with unknown type: "));
                return;
        }
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(String str, Bundle bundle) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, String str2) {
    }
}
