package com.smartadserver.android.library.g;

import android.annotation.TargetApi;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.common.time.Clock;
import com.facebook.imagepipeline.common.RotationOptions;
import com.flurry.android.Constants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.smartadserver.android.library.ui.SASAdView;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASUtil.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f5436a;
    public static String b;
    public static String c;
    private static a d;
    private static final String e = c.class.getSimpleName();
    private static Boolean f = false;
    private static final String g = c.class.getSimpleName();
    private static String h = j("63323234643163626632366536356235343230376662316336336133663830626463306236666361");
    private static String i;
    private static AdvertisingIdClient.Info j;
    private static Context k;
    private static GoogleApiClient l;
    private static boolean m;
    private static Handler n;

    static {
        a("Current SDK Version : 6.6.2 " + g());
        f5436a = false;
        i = "unkownUserAgent";
        j = null;
        k = null;
        m = true;
        b = "unknown package";
        c = "unknown app";
    }

    private static void k(Context context) {
        if (context != null) {
            k = context.getApplicationContext();
        }
    }

    public static Context a() {
        return k;
    }

    public static int b() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        Context a2 = a();
        if (a2 == null || (connectivityManager = (ConnectivityManager) a2.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return 0;
        }
        if (activeNetworkInfo.getType() == 1) {
            return 4;
        }
        int networkType = ((TelephonyManager) a2.getSystemService("phone")).getNetworkType();
        int i2 = (Build.VERSION.SDK_INT < 13 || networkType != 15) ? 0 : 3;
        int i3 = (Build.VERSION.SDK_INT >= 11 && i2 == 0 && networkType == 13) ? 3 : i2;
        if (i3 == 0) {
            switch (networkType) {
                case 0:
                case 1:
                case 2:
                case 4:
                case 5:
                case 6:
                case 7:
                default:
                    return 1;
                case 3:
                case 8:
                case 9:
                    return 2;
                case 10:
                    return 3;
            }
        }
        return i3;
    }

    public static boolean c() {
        return m;
    }

    private static synchronized GoogleApiClient l(Context context) {
        GoogleApiClient googleApiClient;
        synchronized (c.class) {
            if (l == null) {
                try {
                    l = new GoogleApiClient.Builder(context).addApi(LocationServices.API).build();
                } catch (Throwable th) {
                }
            }
            if (l != null && !l.isConnecting() && !l.isConnected()) {
                l.connect();
            }
            googleApiClient = l;
        }
        return googleApiClient;
    }

    public static Location a(Context context) {
        GoogleApiClient l2 = l(context);
        if (l2 == null || !l2.isConnected() || !c()) {
            return null;
        }
        try {
            return LocationServices.FusedLocationApi.getLastLocation(l2);
        } catch (SecurityException e2) {
            return null;
        }
    }

    public static synchronized AdvertisingIdClient.Info a(Context context, boolean z) throws NoClassDefFoundError {
        AdvertisingIdClient.Info info;
        synchronized (c.class) {
            k(context);
            boolean z2 = j == null || z;
            long currentTimeMillis = System.currentTimeMillis();
            if (context != null && z2) {
                try {
                    j = AdvertisingIdClient.getAdvertisingIdInfo(context);
                    a("Retrieved Google Advertising id in : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                } catch (Exception e2) {
                    c("Can not retrieve Google Advertising id due to exception: " + e2.getMessage());
                }
            }
            info = j;
        }
        return info;
    }

    public static void a(String str) {
        if (f.booleanValue() && str != null) {
            Log.i(g, str);
        }
    }

    public static void b(String str) {
        if (f.booleanValue() && str != null) {
            Log.w(g, str);
        }
    }

    public static void c(String str) {
        if (str != null) {
            Log.e(g, str);
        }
    }

    public static void a(String str, String str2) {
        if (f5436a && str2 != null) {
            Log.d(str, str2);
        }
    }

    public static String b(Context context) {
        k(context);
        String str = b;
        if (context != null) {
            return context.getPackageName();
        }
        return str;
    }

    public static String c(Context context) {
        k(context);
        String str = c;
        if (context != null) {
            return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        }
        return str;
    }

    public static String d(Context context) {
        k(context);
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string == null) {
            string = "0000000000000000";
        }
        if (SASAdView.g()) {
            try {
                return e(string);
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
                return string;
            }
        }
        return string;
    }

    public static String d(String str) throws NoSuchAlgorithmException {
        return b(str, "SHA-256");
    }

    public static String e(String str) throws NoSuchAlgorithmException {
        return b(str, "MD5");
    }

    private static String b(String str, String str2) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        messageDigest.update(str.getBytes());
        byte[] digest = messageDigest.digest();
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : digest) {
            String hexString = Integer.toHexString(b2 & Constants.UNKNOWN);
            if (hexString.length() < 2) {
                stringBuffer.append(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static boolean e(Context context) {
        k(context);
        if (d == null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        }
        return d.a(context);
    }

    public static String f(Context context) {
        k(context);
        String str = i;
        try {
            WebView webView = new WebView(context.getApplicationContext());
            str = webView.getSettings().getUserAgentString();
            webView.destroy();
            return str;
        } catch (Exception e2) {
            return str;
        }
    }

    public static int g(Context context) {
        k(context);
        switch (((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case 0:
                return 0;
            case 1:
                return 90;
            case 2:
                return RotationOptions.ROTATE_180;
            case 3:
                return RotationOptions.ROTATE_270;
            default:
                return -1;
        }
    }

    public static boolean d() {
        return Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper();
    }

    public static int a(int i2, Resources resources) {
        return (int) TypedValue.applyDimension(1, i2, resources.getDisplayMetrics());
    }

    public static boolean h(Context context) {
        k(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int g2 = g(context);
        return (g2 == 0 || g2 == 180) ? displayMetrics.widthPixels > displayMetrics.heightPixels : displayMetrics.widthPixels < displayMetrics.heightPixels;
    }

    public static int i(Context context) {
        k(context);
        boolean h2 = h(context);
        int g2 = g(context);
        return !h2 ? (g2 == 90 || g2 == 270) ? 0 : 1 : (g2 == 0 || g2 == 180) ? 0 : 1;
    }

    public static int a(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null) {
            return -1;
        }
        return viewGroup.indexOfChild(view);
    }

    public static Bitmap f(String str) {
        return a(str, (long) Clock.MAX_TIME);
    }

    public static Bitmap a(final String str, long j2) {
        try {
            return (Bitmap) Executors.newSingleThreadExecutor().submit(new Callable<Bitmap>() { // from class: com.smartadserver.android.library.g.c.1
                @Override // java.util.concurrent.Callable
                /* renamed from: a */
                public Bitmap call() throws Exception {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.connect();
                    return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                }
            }).get(j2, TimeUnit.MILLISECONDS);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String e() {
        return new SimpleDateFormat("ddMMyyyyhhmmss").format(new Date());
    }

    public static String f() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
        } catch (SocketException e2) {
        }
        return "unknown";
    }

    public static String g(String str) {
        if (str != null) {
            try {
                return URLEncoder.encode(str, "UTF-8").replace("+", "%20");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                return str;
            }
        }
        return str;
    }

    public static String h(String str) {
        if (str != null) {
            return str.substring(0, str.lastIndexOf("/") + 1);
        }
        return null;
    }

    public static String a(JSONObject jSONObject) {
        String str;
        int[] a2;
        int[] a3;
        int[] a4;
        int[] a5;
        int i2;
        int i3;
        int[] a6;
        int[] a7;
        String optString = jSONObject.optString("frequency", "");
        int optInt = jSONObject.optInt("interval", -1);
        long optLong = jSONObject.optLong("expires", -1L);
        JSONArray optJSONArray = jSONObject.optJSONArray("daysInWeek");
        JSONArray optJSONArray2 = jSONObject.optJSONArray("daysInMonth");
        JSONArray optJSONArray3 = jSONObject.optJSONArray("daysInYear");
        JSONArray optJSONArray4 = jSONObject.optJSONArray("weeksInMonth");
        JSONArray optJSONArray5 = jSONObject.optJSONArray("monthsInYear");
        String str2 = "";
        if (optString != null) {
            if ("daily".equals(optString)) {
                str2 = "FREQ=DAILY";
            } else if ("weekly".equals(optString)) {
                str = "FREQ=WEEKLY";
                if (optJSONArray != null) {
                    String[] strArr = {"SU", "MO", "TU", "WE", "TH", "FR", "SA"};
                    String str3 = "";
                    for (int i4 : a(optJSONArray)) {
                        if (i4 >= 0 && i4 <= 6) {
                            str3 = str3 + strArr[i4] + ",";
                        }
                    }
                    if (str3.endsWith(",")) {
                        str3 = str3.substring(0, str3.length() - 1);
                    }
                    if (str3.length() > 0) {
                        str2 = str + ";BYDAY=" + str3;
                    }
                }
                str2 = str;
            } else if ("monthly".equals(optString)) {
                str = "FREQ=MONTHLY";
                if (optJSONArray2 != null) {
                    String str4 = "";
                    for (int i5 : a(optJSONArray2)) {
                        if (i5 >= -30 && i5 <= 31 && i5 != 0) {
                            str4 = str4 + i5 + ",";
                        }
                    }
                    if (str4.endsWith(",")) {
                        str4 = str4.substring(0, str4.length() - 1);
                    }
                    if (str4.length() > 0) {
                        str2 = str + ";BYMONTHDAY=" + str4;
                    }
                    str2 = str;
                } else {
                    if (optJSONArray4 != null) {
                        String str5 = "";
                        for (int i6 : a(optJSONArray4)) {
                            if (i6 >= -5 && i6 <= 5 && i6 != 0) {
                                if (i6 > 0) {
                                    int i7 = 1;
                                    while (i7 < 8 && (i3 = ((i6 - 1) * 7) + i7) <= 31) {
                                        i7++;
                                        str5 = str5 + i3 + ",";
                                    }
                                } else {
                                    int i8 = 1;
                                    while (i8 < 8 && (i2 = ((i6 + 1) * 7) - i8) >= -31) {
                                        i8++;
                                        str5 = str5 + i2 + ",";
                                    }
                                }
                            }
                        }
                        if (str5.endsWith(",")) {
                            str5 = str5.substring(0, str5.length() - 1);
                        }
                        if (str5.length() > 0) {
                            str = str + ";BYMONTHDAY=" + str5;
                        }
                        str2 = str;
                    }
                    str2 = str;
                }
            } else if ("yearly".equals(optString)) {
                str = "FREQ=YEARLY";
                if (optJSONArray5 != null) {
                    String str6 = "";
                    for (int i9 : a(optJSONArray5)) {
                        if (i9 >= 0 && i9 <= 12) {
                            str6 = str6 + i9 + ",";
                        }
                    }
                    if (str6.endsWith(",")) {
                        str6 = str6.substring(0, str6.length() - 1);
                    }
                    if (str6.length() > 0) {
                        str = str + ";BYMONTH=" + str6;
                    }
                    if (optJSONArray2 != null) {
                        String str7 = "";
                        for (int i10 : a(optJSONArray2)) {
                            if (i10 >= -30 && i10 <= 31 && i10 != 0) {
                                str7 = str7 + i10 + ",";
                            }
                        }
                        if (str7.endsWith(",")) {
                            str7 = str7.substring(0, str7.length() - 1);
                        }
                        if (str7.length() > 0) {
                            str2 = str + ";BYMONTHDAY=" + str7;
                        }
                    }
                    str2 = str;
                } else {
                    if (optJSONArray3 != null) {
                        String str8 = "";
                        for (int i11 : a(optJSONArray3)) {
                            if (i11 >= -365 && i11 <= 366 && i11 != 0) {
                                str8 = str8 + i11 + ",";
                            }
                        }
                        if (str8.endsWith(",")) {
                            str8 = str8.substring(0, str8.length() - 1);
                        }
                        if (str8.length() > 0) {
                            str2 = str + ";BYYEARDAY=" + str8;
                        }
                    }
                    str2 = str;
                }
            }
        }
        String str9 = "";
        if (optInt >= 0) {
            str9 = "INTERVAL=" + optInt;
        }
        String str10 = "";
        if (optLong > 0) {
            str10 = "UNTIL=" + new SimpleDateFormat("yyyyMMdd").format(new Date(optLong));
        }
        if (str2.length() <= 0) {
            str2 = "";
        }
        if (str9.length() > 0) {
            if (str2.length() > 0) {
                str2 = str2 + ";";
            }
            str2 = str2 + str9;
        }
        if (str10.length() > 0) {
            if (str2.length() > 0) {
                str2 = str2 + ";";
            }
            return str2 + str10;
        }
        return str2;
    }

    private static int[] a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= iArr.length) {
                return iArr;
            }
            try {
                iArr[i3] = ((Integer) jSONArray.get(i3)).intValue();
            } catch (JSONException e2) {
            }
            i2 = i3 + 1;
        }
    }

    public static String g() {
        return h;
    }

    private static String j(String str) {
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < charArray.length - 1; i2 += 2) {
            sb.append((char) ((Character.digit(charArray[i2], 16) * 16) + Character.digit(charArray[i2 + 1], 16)));
        }
        return sb.toString();
    }

    public static String a(Bitmap bitmap, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    }

    public static boolean j(Context context) {
        boolean z;
        k(context);
        if (context != null) {
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager != null) {
                z = !powerManager.isScreenOn();
            } else {
                z = false;
            }
            return keyguardManager != null ? z || keyguardManager.inKeyguardRestrictedInputMode() : z;
        }
        return false;
    }

    public static int a(String str, int i2) {
        SimpleDateFormat simpleDateFormat;
        String str2;
        if (str == null) {
            return -1;
        }
        if (str.endsWith("%")) {
            try {
                return (int) ((Double.parseDouble(str.substring(0, str.length() - 1)) * i2) / 100.0d);
            } catch (NumberFormatException e2) {
                return -1;
            }
        }
        try {
            return (int) (Double.parseDouble(str) * 1000.0d);
        } catch (NumberFormatException e3) {
            if (str.length() > 8 && str.indexOf(46) == 8) {
                simpleDateFormat = new SimpleDateFormat("HH:mm:ss.SSS");
                str = str.concat("000").substring(0, 12);
                str2 = "00:00:00.000";
            } else {
                simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
                str2 = "00:00:00";
            }
            try {
                return (int) (simpleDateFormat.parse(str).getTime() - simpleDateFormat.parse(str2).getTime());
            } catch (ParseException e4) {
                return -1;
            }
        }
    }

    public static String a(String str, String str2, Context context) {
        k(context);
        String packageName = context.getPackageName();
        Resources resources = context.getResources();
        try {
            return resources.getString(resources.getIdentifier(str, "string", packageName));
        } catch (Exception e2) {
            b("Could not find String resource for key " + str + ". Using english as default");
            return str2;
        }
    }

    public static String[] i(String str) {
        if (str != null && str.length() > 0 && !str.equals(",")) {
            String[] split = str.split(",http");
            for (int i2 = 1; i2 < split.length; i2++) {
                split[i2] = "http" + split[i2];
            }
            if (split.length == 1 && split[0].endsWith(",")) {
                split[0] = split[0].substring(0, split[0].length() - 1);
            }
            return split;
        }
        return new String[0];
    }

    public static Handler h() {
        if (n == null) {
            n = new Handler(Looper.getMainLooper());
        }
        return n;
    }

    @TargetApi(19)
    public static void a(final WebView webView, final String str, final Runnable runnable) {
        if (webView != null && str != null && str.length() != 0) {
            h().post(new Runnable() { // from class: com.smartadserver.android.library.g.c.2
                @Override // java.lang.Runnable
                public void run() {
                    if (Build.VERSION.SDK_INT >= 19) {
                        webView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.smartadserver.android.library.g.c.2.1
                            @Override // android.webkit.ValueCallback
                            /* renamed from: a */
                            public void onReceiveValue(String str2) {
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }
                        });
                        return;
                    }
                    webView.loadUrl("javascript:" + str);
                    webView.postDelayed(runnable, 100L);
                }
            });
        }
    }

    public static int[] a(View view, int i2) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new int[]{iArr[0], iArr[1] - i2, view.getWidth(), view.getHeight()};
    }

    public static int[] a(View view, View view2) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        view2.getLocationInWindow(iArr2);
        return new int[]{iArr[0] - iArr2[0], iArr[1] - iArr2[1], view.getWidth(), view.getHeight()};
    }
}
