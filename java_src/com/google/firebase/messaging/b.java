package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.app.aj;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.drive.DriveFile;
import java.util.Arrays;
import java.util.List;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    static b f3600a;
    private final Context b;
    private Bundle c;
    private final AtomicInteger d = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private b(Context context) {
        this.b = context.getApplicationContext();
    }

    private PendingIntent a(Bundle bundle, PendingIntent pendingIntent) {
        Intent intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
        a(intent, bundle);
        intent.putExtra("pending_intent", pendingIntent);
        return com.google.firebase.iid.f.b(this.b, b(), intent, 1073741824);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f3600a == null) {
                f3600a = new b(context);
            }
            bVar = f3600a;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    private static String a(String str) {
        return str.substring("gcm.n.".length());
    }

    private void a(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    private void a(String str, Notification notification) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        NotificationManager notificationManager = (NotificationManager) this.b.getSystemService("notification");
        if (TextUtils.isEmpty(str)) {
            str = new StringBuilder(37).append("GCM-Notification:").append(SystemClock.uptimeMillis()).toString();
        }
        notificationManager.notify(str, 0, notification);
    }

    private boolean a() {
        if (((KeyguardManager) this.b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!zzt.zzzn()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Bundle bundle) {
        return "1".equals(a(bundle, "gcm.n.e")) || a(bundle, "gcm.n.icon") != null;
    }

    private int b() {
        return this.d.incrementAndGet();
    }

    private int b(String str) {
        if (!TextUtils.isEmpty(str)) {
            Resources resources = this.b.getResources();
            int identifier = resources.getIdentifier(str, "drawable", this.b.getPackageName());
            if (identifier != 0) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str, "mipmap", this.b.getPackageName());
            if (identifier2 != 0) {
                return identifier2;
            }
            Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(str).length() + 61).append("Icon resource ").append(str).append(" not found. Notification will use default icon.").toString());
        }
        int i = c().getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i == 0) {
            i = this.b.getApplicationInfo().icon;
        }
        if (i == 0) {
            return 17301651;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri b(Bundle bundle) {
        String a2 = a(bundle, "gcm.n.link_android");
        if (TextUtils.isEmpty(a2)) {
            a2 = a(bundle, "gcm.n.link");
        }
        if (!TextUtils.isEmpty(a2)) {
            return Uri.parse(a2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("_loc_key");
        return a(bundle, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    private Bundle c() {
        if (this.c != null) {
            return this.c;
        }
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = this.b.getPackageManager().getApplicationInfo(this.b.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (applicationInfo == null || applicationInfo.metaData == null) {
            return Bundle.EMPTY;
        }
        this.c = applicationInfo.metaData;
        return this.c;
    }

    private Integer c(String str) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException e) {
                Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(str).length() + 54).append("Color ").append(str).append(" not valid. Notification will use default color.").toString());
            }
        }
        int i = c().getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i == 0) {
            return null;
        }
        try {
            return Integer.valueOf(android.support.v4.content.b.c(this.b, i));
        } catch (Resources.NotFoundException e2) {
            Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object[] c(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("_loc_args");
        String a2 = a(bundle, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(a2);
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < strArr.length; i++) {
                strArr[i] = jSONArray.opt(i);
            }
            return strArr;
        } catch (JSONException e) {
            String valueOf3 = String.valueOf(str);
            String valueOf4 = String.valueOf("_loc_args");
            String valueOf5 = String.valueOf(a(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3)));
            Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(valueOf5).length() + 41 + String.valueOf(a2).length()).append("Malformed ").append(valueOf5).append(": ").append(a2).append("  Default value will be used.").toString());
            return null;
        }
    }

    private Uri d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if ("default".equals(str) || this.b.getResources().getIdentifier(str, "raw", this.b.getPackageName()) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        String valueOf = String.valueOf("android.resource://");
        String valueOf2 = String.valueOf(this.b.getPackageName());
        return Uri.parse(new StringBuilder(String.valueOf(valueOf).length() + 5 + String.valueOf(valueOf2).length() + String.valueOf(str).length()).append(valueOf).append(valueOf2).append("/raw/").append(str).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(Bundle bundle) {
        String a2 = a(bundle, "gcm.n.sound2");
        return TextUtils.isEmpty(a2) ? a(bundle, "gcm.n.sound") : a2;
    }

    private String d(Bundle bundle, String str) {
        String a2 = a(bundle, str);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        String b = b(bundle, str);
        if (TextUtils.isEmpty(b)) {
            return null;
        }
        Resources resources = this.b.getResources();
        int identifier = resources.getIdentifier(b, "string", this.b.getPackageName());
        if (identifier == 0) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf("_loc_key");
            String valueOf3 = String.valueOf(a(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
            Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(valueOf3).length() + 49 + String.valueOf(b).length()).append(valueOf3).append(" resource not found: ").append(b).append(" Default value will be used.").toString());
            return null;
        }
        Object[] c = c(bundle, str);
        if (c == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, c);
        } catch (MissingFormatArgumentException e) {
            String valueOf4 = String.valueOf(Arrays.toString(c));
            Log.w("FirebaseMessaging", new StringBuilder(String.valueOf(b).length() + 58 + String.valueOf(valueOf4).length()).append("Missing format argument for ").append(b).append(": ").append(valueOf4).append(" Default value will be used.").toString(), e);
            return null;
        }
    }

    private Notification e(Bundle bundle) {
        String d = d(bundle, "gcm.n.title");
        String d2 = d(bundle, "gcm.n.body");
        int b = b(a(bundle, "gcm.n.icon"));
        Integer c = c(a(bundle, "gcm.n.color"));
        Uri d3 = d(d(bundle));
        PendingIntent f = f(bundle);
        PendingIntent pendingIntent = null;
        if (FirebaseMessagingService.zzX(bundle)) {
            f = a(bundle, f);
            pendingIntent = h(bundle);
        }
        aj.d a2 = new aj.d(this.b).c(true).a(b);
        if (!TextUtils.isEmpty(d)) {
            a2.a((CharSequence) d);
        } else {
            a2.a(this.b.getApplicationInfo().loadLabel(this.b.getPackageManager()));
        }
        if (!TextUtils.isEmpty(d2)) {
            a2.b(d2);
            a2.a(new aj.c().a(d2));
        }
        if (c != null) {
            a2.c(c.intValue());
        }
        if (d3 != null) {
            a2.a(d3);
        }
        if (f != null) {
            a2.a(f);
        }
        if (pendingIntent != null) {
            a2.b(pendingIntent);
        }
        return a2.a();
    }

    private PendingIntent f(Bundle bundle) {
        Intent g = g(bundle);
        if (g == null) {
            return null;
        }
        g.addFlags(67108864);
        Bundle bundle2 = new Bundle(bundle);
        FirebaseMessagingService.zzD(bundle2);
        g.putExtras(bundle2);
        for (String str : bundle2.keySet()) {
            if (str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                g.removeExtra(str);
            }
        }
        return PendingIntent.getActivity(this.b, b(), g, 1073741824);
    }

    private Intent g(Bundle bundle) {
        String a2 = a(bundle, "gcm.n.click_action");
        if (!TextUtils.isEmpty(a2)) {
            Intent intent = new Intent(a2);
            intent.setPackage(this.b.getPackageName());
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            return intent;
        }
        Uri b = b(bundle);
        if (b != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(this.b.getPackageName());
            intent2.setData(b);
            return intent2;
        }
        Intent launchIntentForPackage = this.b.getPackageManager().getLaunchIntentForPackage(this.b.getPackageName());
        if (launchIntentForPackage != null) {
            return launchIntentForPackage;
        }
        Log.w("FirebaseMessaging", "No activity found to launch app");
        return launchIntentForPackage;
    }

    private PendingIntent h(Bundle bundle) {
        Intent intent = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
        a(intent, bundle);
        return com.google.firebase.iid.f.b(this.b, b(), intent, 1073741824);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(Bundle bundle) {
        if ("1".equals(a(bundle, "gcm.n.noui"))) {
            return true;
        }
        if (a()) {
            return false;
        }
        a(a(bundle, "gcm.n.tag"), e(bundle));
        return true;
    }
}
