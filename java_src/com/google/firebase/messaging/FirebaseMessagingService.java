package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.firebase.iid.zzb;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class FirebaseMessagingService extends zzb {
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

    private void zzI(Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException e) {
                Log.e("FirebaseMessaging", "Notification pending intent canceled");
            }
        }
        if (zzX(intent.getExtras())) {
            e.b(this, intent);
        }
    }

    private void zzJ(Intent intent) {
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
                if (zzX(intent.getExtras())) {
                    e.a(this, intent);
                }
                zzl(intent);
                return;
            case 1:
                onDeletedMessages();
                return;
            case 2:
                onMessageSent(intent.getStringExtra("google.message_id"));
                return;
            case 3:
                onSendError(zzm(intent), new SendException(intent.getStringExtra("error")));
                return;
            default:
                String valueOf = String.valueOf(stringExtra);
                Log.w("FirebaseMessaging", valueOf.length() != 0 ? "Received message with unknown type: ".concat(valueOf) : new String("Received message with unknown type: "));
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzX(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return "1".equals(bundle.getString("google.c.a.e"));
    }

    private void zzl(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("android.support.content.wakelockid");
        if (b.a(extras)) {
            if (b.a(this).c(extras)) {
                return;
            }
            if (zzX(extras)) {
                e.d(this, intent);
            }
        }
        onMessageReceived(new RemoteMessage(extras));
    }

    private String zzm(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.firebase.iid.zzb
    public void handleIntent(Intent intent) {
        boolean z;
        String action = intent.getAction();
        if (action == null) {
            action = "";
        }
        switch (action.hashCode()) {
            case 75300319:
                if (action.equals("com.google.firebase.messaging.NOTIFICATION_DISMISS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 366519424:
                if (action.equals("com.google.android.c2dm.intent.RECEIVE")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                zzJ(intent);
                return;
            case true:
                if (!zzX(intent.getExtras())) {
                    return;
                }
                e.c(this, intent);
                return;
            default:
                String valueOf = String.valueOf(intent.getAction());
                Log.d("FirebaseMessaging", valueOf.length() != 0 ? "Unknown intent action: ".concat(valueOf) : new String("Unknown intent action: "));
                return;
        }
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, Exception exc) {
    }

    @Override // com.google.firebase.iid.zzb
    protected Intent zzD(Intent intent) {
        return com.google.firebase.iid.f.a().c();
    }

    @Override // com.google.firebase.iid.zzb
    public boolean zzE(Intent intent) {
        if ("com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            zzI(intent);
            return true;
        }
        return false;
    }
}
