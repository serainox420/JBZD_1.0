package pl.jbzd.app.fcm;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.l;
import android.text.TextUtils;
import com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase;
import com.facebook.share.internal.ShareConstants;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import org.json.JSONObject;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.response.BaseMediaResponse;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.view.main.MainActivity;
import pl.jbzd.core.a.d;
/* loaded from: classes3.dex */
public class MyFirebaseMessagingService extends FirebaseMessagingService {
    public static final String PUSH_NOTIFICATION = "pushNotification";
    private d notificationUtils;

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        JSONObject jSONObject = null;
        if (remoteMessage != null && getSharedPreferences(getPackageName(), 0).getBoolean("NOTIFICATIONS_ON", true)) {
            if (remoteMessage.a().size() > 0) {
                try {
                    String str = remoteMessage.a().containsKey(ShareConstants.WEB_DIALOG_PARAM_MESSAGE) ? remoteMessage.a().get(ShareConstants.WEB_DIALOG_PARAM_MESSAGE) : null;
                    if (remoteMessage.a().containsKey("custom")) {
                        jSONObject = new JSONObject(remoteMessage.a().get("custom"));
                    }
                    handleDataMessage((str == null || str.isEmpty()) ? "Sprawdź nowe Kwejki!" : str, jSONObject);
                } catch (Exception e) {
                }
            } else if (remoteMessage.b() != null) {
                handleNotification(remoteMessage.b().a());
            }
        }
    }

    private void handleNotification(String str) {
        if (!d.a(getApplicationContext())) {
            Intent intent = new Intent(PUSH_NOTIFICATION);
            intent.putExtra(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str);
            l.a(this).a(intent);
            new d(getApplicationContext()).a();
        }
    }

    private void handleDataMessage(String str, JSONObject jSONObject) {
        int i = -1;
        if (jSONObject != null) {
            try {
                if (jSONObject.has(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID) && !jSONObject.isNull(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID)) {
                    i = jSONObject.getInt(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID);
                }
            } catch (Exception e) {
                return;
            }
        }
        if (i > 0) {
            ApiClient.init(this);
            BaseMediaResponse body = ApiClient.getApiService().media_index(i).execute().body();
            if (body != null && body.media != null) {
                showNotification(str, Media.fromBaseMedia(body.media));
                return;
            } else {
                showNotification(str, null);
                return;
            }
        }
        showNotification(str, null);
    }

    private void showNotification(String str, Media media) {
        if (!d.a(getApplicationContext())) {
            Intent intent = new Intent(PUSH_NOTIFICATION);
            intent.putExtra(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str);
            l.a(this).a(intent);
            return;
        }
        Intent intent2 = new Intent(getApplicationContext(), MainActivity.class);
        try {
            intent2.putExtra("ARG_MEDIA", media != null ? media : null);
        } catch (Exception e) {
            media = null;
        }
        if (media != null && media.realmGet$image() != null) {
            showNotificationMessageWithBigImage(getApplicationContext(), str, (TextUtils.isEmpty(media.realmGet$title()) || media.realmGet$title().equalsIgnoreCase(str)) ? "" : media.realmGet$title(), "", intent2, media.realmGet$image());
        } else {
            showNotificationMessage(getApplicationContext(), str, "", "", intent2);
        }
    }

    private void showNotificationMessage(Context context, String str, String str2, String str3, Intent intent) {
        this.notificationUtils = new d(context);
        intent.setFlags(805339136);
        this.notificationUtils.a(str, str2, str3, intent);
    }

    private void showNotificationMessageWithBigImage(Context context, String str, String str2, String str3, Intent intent, String str4) {
        this.notificationUtils = new d(context);
        intent.setFlags(805339136);
        this.notificationUtils.a(str, str2, str3, intent, str4);
    }
}
