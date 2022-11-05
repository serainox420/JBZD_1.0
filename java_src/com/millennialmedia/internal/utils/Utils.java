package com.millennialmedia.internal.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Vibrator;
import android.text.TextUtils;
import android.widget.Toast;
import com.google.android.gms.drive.DriveFile;
import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class Utils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4188a = Utils.class.getName();

    /* loaded from: classes3.dex */
    public interface VibrateListener {
        void onError();

        void onFinished();

        void onStarted();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(String.format("%02X", Byte.valueOf(bArr[i])));
        }
        return sb.toString();
    }

    public static void injectIfNotNull(Map<String, Object> map, String str, Object obj) {
        if (str == null) {
            MMLog.e(f4188a, "Unable to inject value, specified key is null");
        } else if (obj != null) {
            map.put(str, obj);
        }
    }

    public static List<String> splitCommaSeparateString(String str) {
        if (str != null) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (!arrayList.contains(trim)) {
                    arrayList.add(trim);
                }
            }
            if (arrayList.size() != 0) {
                return arrayList;
            }
            return null;
        }
        return null;
    }

    public static void showToast(final Context context, final String str) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.utils.Utils.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(context, str, 0).show();
            }
        });
    }

    public static void vibrate(long[] jArr, int i, final VibrateListener vibrateListener) {
        if (vibrateListener == null) {
            MMLog.e(f4188a, "Unable to call vibrate, provided listener cannot be null");
        } else if (!EnvironmentUtils.hasVibratePermission()) {
            MMLog.e(f4188a, "Unable to call vibrate, permission is not available");
            vibrateListener.onError();
        } else {
            ((Vibrator) EnvironmentUtils.getApplicationContext().getSystemService("vibrator")).vibrate(jArr, -1);
            vibrateListener.onStarted();
            long j = 0;
            for (long j2 : jArr) {
                j += j2;
            }
            ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.utils.Utils.2
                @Override // java.lang.Runnable
                public void run() {
                    VibrateListener.this.onFinished();
                }
            }, j);
        }
    }

    public static void logAndFireMMException(String str, String str2) throws MMException {
        MMLog.e(str, str2);
        throw new MMException(str2);
    }

    public static boolean startActivity(Context context, Intent intent) {
        if (!(context instanceof Activity)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            MMLog.e(f4188a, "Unable to start activity for intent: " + intent);
            return false;
        }
    }

    public static boolean startActivityFromUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            MMLog.e(f4188a, "Unable to start activity for null url");
            return false;
        }
        return startActivity(EnvironmentUtils.getApplicationContext(), new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public static boolean isSchemeAvailable(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.contains(":")) {
            str = str + ":";
        }
        List<ResolveInfo> queryIntentActivities = EnvironmentUtils.getApplicationContext().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        return queryIntentActivities != null && queryIntentActivities.size() > 0;
    }

    public static boolean isPackageAvailable(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            EnvironmentUtils.getApplicationContext().getPackageManager().getPackageInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean isEmpty(String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    public static String trimStringNotEmpty(String str) {
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                return trim;
            }
        }
        return null;
    }

    public static boolean isActivityContext(Context context) {
        if (context == null) {
            return false;
        }
        if (context instanceof Activity) {
            return true;
        }
        Context context2 = context;
        while (context2 instanceof ContextWrapper) {
            context2 = ((ContextWrapper) context2).getBaseContext();
            if (context2 instanceof Activity) {
                return true;
            }
        }
        return false;
    }

    public static void putIfNotNull(Map map, Object obj, Object obj2) {
        if (obj2 != null) {
            map.put(obj, obj2);
        }
    }
}
