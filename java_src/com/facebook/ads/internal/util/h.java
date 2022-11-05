package com.facebook.ads.internal.util;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.InterstitialAdActivity;
import com.google.android.gms.drive.DriveFile;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f2240a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static final String b = h.class.getSimpleName();
    private static final Map<AdSize, com.facebook.ads.internal.e> c = new HashMap();

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f2241a;
        public String b;
        public boolean c;

        public a(String str, String str2, boolean z) {
            this.f2241a = str;
            this.b = str2;
            this.c = z;
        }
    }

    static {
        c.put(AdSize.INTERSTITIAL, com.facebook.ads.internal.e.WEBVIEW_INTERSTITIAL_UNKNOWN);
        c.put(AdSize.RECTANGLE_HEIGHT_250, com.facebook.ads.internal.e.WEBVIEW_BANNER_250);
        c.put(AdSize.BANNER_HEIGHT_90, com.facebook.ads.internal.e.WEBVIEW_BANNER_90);
        c.put(AdSize.BANNER_HEIGHT_50, com.facebook.ads.internal.e.WEBVIEW_BANNER_50);
    }

    private static Intent a(Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setComponent(null);
        if (Build.VERSION.SDK_INT >= 15) {
            intent.setSelector(null);
        }
        return intent;
    }

    public static final <P, PR, R> AsyncTask<P, PR, R> a(AsyncTask<P, PR, R> asyncTask, P... pArr) {
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, pArr);
        } else {
            asyncTask.execute(pArr);
        }
        return asyncTask;
    }

    public static com.facebook.ads.internal.e a(AdSize adSize) {
        com.facebook.ads.internal.e eVar = c.get(adSize);
        return eVar == null ? com.facebook.ads.internal.e.WEBVIEW_BANNER_LEGACY : eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static a a(ContentResolver contentResolver) {
        Cursor cursor;
        a aVar;
        try {
            cursor = contentResolver.query(f2240a, new String[]{"aid", "androidid", "limit_tracking"}, null, null, null);
        } catch (Exception e) {
            cursor = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
        if (cursor != null) {
            try {
                try {
                } catch (Exception e2) {
                    aVar = new a(null, null, false);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return aVar;
                }
                if (cursor.moveToFirst()) {
                    aVar = new a(cursor.getString(cursor.getColumnIndex("aid")), cursor.getString(cursor.getColumnIndex("androidid")), Boolean.valueOf(cursor.getString(cursor.getColumnIndex("limit_tracking"))).booleanValue());
                    if (cursor != null) {
                        cursor.close();
                    }
                    return aVar;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        aVar = new a(null, null, false);
        if (cursor != null) {
            cursor.close();
        }
        return aVar;
    }

    public static Object a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(double d) {
        return String.format(Locale.US, "%.3f", Double.valueOf(d));
    }

    public static String a(long j) {
        return a(j / 1000.0d);
    }

    public static String a(InputStream inputStream) {
        StringWriter stringWriter = new StringWriter();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[4096];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                String stringWriter2 = stringWriter.toString();
                stringWriter.close();
                inputStreamReader.close();
                return stringWriter2;
            }
            stringWriter.write(cArr, 0, read);
        }
    }

    public static String a(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return jSONObject.toString();
    }

    public static String a(JSONObject jSONObject, String str) {
        return a(jSONObject, str, (String) null);
    }

    public static String a(JSONObject jSONObject, String str, String str2) {
        String optString = jSONObject.optString(str, str2);
        if ("null".equals(optString)) {
            return null;
        }
        return optString;
    }

    public static String a(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            String a2 = a(gZIPInputStream);
            gZIPInputStream.close();
            byteArrayInputStream.close();
            return a2;
        } catch (Exception e) {
            d.a(c.a(e, "Error decompressing data"));
            e.printStackTrace();
            return "";
        }
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public static Method a(String str, String str2, Class<?>... clsArr) {
        try {
            return a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    private static void a(Context context, Uri uri) {
        Intent a2 = a(uri);
        a2.addCategory("android.intent.category.BROWSABLE");
        a2.addFlags(DriveFile.MODE_READ_ONLY);
        a2.putExtra("com.android.browser.application_id", context.getPackageName());
        a2.putExtra("create_new_tab", false);
        context.startActivity(a2);
    }

    public static void a(Context context, Uri uri, String str) {
        if (!com.facebook.ads.internal.view.a.d.a(uri.getScheme()) || !com.facebook.ads.internal.h.b(context)) {
            a(context, uri);
        } else {
            b(context, uri, str);
        }
    }

    public static void a(Context context, String str) {
        if (AdSettings.isTestMode(context)) {
            Log.d("FBAudienceNetworkLog", str + " (displayed for test ads only)");
        }
    }

    public static void a(DisplayMetrics displayMetrics, View view, AdSize adSize) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= adSize.getWidth() ? displayMetrics.widthPixels : (int) Math.ceil(adSize.getWidth() * displayMetrics.density), (int) Math.ceil(adSize.getHeight() * displayMetrics.density));
        layoutParams.addRule(14, -1);
        view.setLayoutParams(layoutParams);
    }

    public static boolean a(Context context) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            String str = runningTaskInfo.topActivity.getPackageName() + ".UnityPlayerActivity";
            Boolean valueOf = Boolean.valueOf(((ActivityManager) context.getSystemService("activity")).getRunningTasks(2).get(0).topActivity.getClassName() == str || b(str));
            Log.d("IS_UNITY", Boolean.toString(valueOf.booleanValue()));
            return valueOf.booleanValue();
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean a(String str, String str2) {
        try {
            Class.forName(str + "." + str2);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static byte[] a(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes());
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Exception e) {
            d.a(c.a(e, "Error compressing data"));
            e.printStackTrace();
            return new byte[0];
        }
    }

    private static void b(Context context, Uri uri, String str) {
        Intent intent = new Intent(context, AudienceNetworkActivity.class);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.BROWSER);
        intent.putExtra(AudienceNetworkActivity.BROWSER_URL, uri.toString());
        intent.putExtra(AudienceNetworkActivity.CLIENT_TOKEN, str);
        intent.putExtra(AudienceNetworkActivity.HANDLER_TIME, System.currentTimeMillis());
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            intent.setClass(context, InterstitialAdActivity.class);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e2) {
                a(context, uri);
            }
        }
    }

    public static boolean b(Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        return keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode();
    }

    public static boolean b(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }
}
