package com.apprupt.sdk;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.media.AudioManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.apprupt.sdk.Logger;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.GpsHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class CvAppInfo {
    private static CvAppInfo c;

    /* renamed from: a  reason: collision with root package name */
    final CvAppsList f1732a;
    private String o;
    private String p;
    private Context y;
    private String d = "";
    private String e = "";
    private String f = "";
    private String g = "";
    private String h = "";
    private String i = "";
    private String j = "";
    private String k = "";
    private String l = "";
    private String m = "";
    private String n = "";
    private String q = "Mozilla/5.0 (Linux; Android " + Build.VERSION.RELEASE + "; Build/" + Build.ID + "; " + Build.BRAND + ") AppleWebKit/unknown (KHTML, like Gecko) Chrome/unknown Mobile Safari/unknown";
    private String r = "";
    private String s = "";
    private String t = "";
    private boolean u = false;
    private int v = 0;
    private int w = 0;
    private float x = BitmapDescriptorFactory.HUE_RED;
    private final Logger.log z = Logger.a("APP_INFO");
    final Events b = new Events();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        if (c == null) {
            synchronized (CvAppInfo.class) {
                if (c == null) {
                    c = new CvAppInfo(context);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CvAppInfo a() {
        return c;
    }

    private CvAppInfo(Context context) {
        this.o = "";
        this.p = "";
        this.z.a("Initializing CvAppInfo on android " + Build.VERSION.INCREMENTAL + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + Build.VERSION.CODENAME + " (API " + Build.VERSION.SDK_INT + ")");
        this.f1732a = new CvAppsList(context);
        f(context);
        synchronized (this) {
            this.y = context.getApplicationContext();
            v();
            CvGeoLocation.a(context);
            c(context);
            d(context);
            e(context);
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            this.o = applicationInfo.packageName;
            this.p = applicationInfo.name;
            z();
            b(context);
            w();
        }
        if (!e()) {
            CvFeaturesList.f1810a[0] = CvFeaturesList.f1810a[0] & (-3);
        }
        this.b.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Connectivity b() {
        return new Connectivity(this.y);
    }

    private void v() {
        this.z.d("DETERMINING ADVIDENT!");
        new Thread(new Runnable() { // from class: com.apprupt.sdk.CvAppInfo.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                    Object invoke = cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(cls, CvAppInfo.this.y);
                    CvAppInfo.this.i = (String) invoke.getClass().getMethod("getId", new Class[0]).invoke(invoke, new Object[0]);
                    CvAppInfo.this.u = ((Boolean) invoke.getClass().getMethod(GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]).invoke(invoke, new Object[0])).booleanValue();
                    if (CvAppInfo.this.i == null || CvAppInfo.this.i.equals("null")) {
                        CvAppInfo.this.i = "";
                    } else if (CvAppInfo.this.i.length() > 0) {
                        synchronized (CvAppInfo.this) {
                            CvAppInfo.this.z.d("GOT advident " + CvAppInfo.this.i);
                            CvAppInfo.this.j = CvHash.a(CvAppInfo.this.i);
                            CvAppInfo.this.k = CvHash.b(CvAppInfo.this.i);
                        }
                    }
                } catch (Exception e) {
                    CvAppInfo.this.z.d("Cannot get advident (" + e.getClass() + "): " + e.getLocalizedMessage());
                    if (e.getCause() != null) {
                        Throwable cause = e.getCause();
                        CvAppInfo.this.z.d("Cannot get advident (" + cause.getClass() + "): " + cause.getLocalizedMessage());
                    }
                }
            }
        }).start();
    }

    private void b(Context context) {
        String str;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            str = null;
        } else {
            str = telephonyManager.getNetworkOperatorName();
        }
        if (str == null) {
            str = "";
        }
        this.t = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.t;
    }

    boolean d() {
        return (this.y.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    boolean e() {
        return ((TelephonyManager) this.y.getSystemService("phone")).getPhoneType() != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        String str = "";
        if (d()) {
            str = "Android Tablet";
        } else if (e()) {
            str = "Android Phone";
        }
        return String.format("%s;%s;%s", str, p(), q());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleJSON g() {
        long availableBlocksLong;
        long blockCountLong;
        SimpleJSON simpleJSON = new SimpleJSON();
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            if (Build.VERSION.SDK_INT < 18) {
                long blockSize = statFs.getBlockSize();
                availableBlocksLong = statFs.getAvailableBlocks() * blockSize;
                blockCountLong = statFs.getBlockCount() * blockSize;
            } else {
                long blockSizeLong = statFs.getBlockSizeLong();
                availableBlocksLong = statFs.getAvailableBlocksLong() * blockSizeLong;
                blockCountLong = statFs.getBlockCountLong() * blockSizeLong;
            }
            simpleJSON.a("total", (Object) Long.valueOf(blockCountLong));
            simpleJSON.a("free", (Object) Long.valueOf(availableBlocksLong));
        } catch (NoSuchMethodError e) {
        }
        return simpleJSON;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h() {
        return String.format("%dx%d;24;%.2f", Integer.valueOf(this.v), Integer.valueOf(this.w), Float.valueOf(this.x));
    }

    private void w() {
        DisplayMetrics displayMetrics = this.y.getResources().getDisplayMetrics();
        this.x = displayMetrics.density;
        this.v = (int) (displayMetrics.widthPixels / this.x);
        this.w = (int) (displayMetrics.heightPixels / this.x);
    }

    public int i() {
        Context context = this.y;
        Context context2 = this.y;
        return ((AudioManager) context.getSystemService("audio")).getStreamVolume(3);
    }

    private String x() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("udid_md5", this.h);
            jSONObject.put("udid_sha1", this.l);
            jSONObject.put("mac_md5", this.m);
            jSONObject.put("mac_sha1", this.n);
            jSONObject.put("advident", this.i);
            jSONObject.put("advident_sha1", this.k);
            jSONObject.put("advident_md5", this.j);
            return CvCrypto.a(jSONObject.toString().getBytes());
        } catch (JSONException e) {
            this.z.d("Caught exception while building UID object", e);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return ((AudioManager) this.y.getSystemService("audio")).isMusicActive();
    }

    private String a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine).append("\n");
            } else {
                return sb.toString();
            }
        }
    }

    private String a(String str) {
        String str2;
        Exception e;
        IOException e2;
        FileInputStream fileInputStream;
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(String.format("s%s", "ys"));
        arrayList.add(String.format("c%sss", "la"));
        arrayList.add(String.format("n%st", "e"));
        arrayList.add(str);
        arrayList.add(String.format("ad%sss", "dre"));
        StringBuilder sb = new StringBuilder();
        for (String str3 : arrayList) {
            sb.append("/");
            sb.append(str3);
        }
        try {
            fileInputStream = new FileInputStream(new File(String.format("%s", sb.toString())));
            str2 = a(fileInputStream).trim();
        } catch (IOException e3) {
            str2 = null;
            e2 = e3;
        } catch (Exception e4) {
            str2 = null;
            e = e4;
        }
        try {
            fileInputStream.close();
        } catch (IOException e5) {
            e2 = e5;
            this.z.d("Error while reading mac from file", e2);
            this.z.d("DATA: " + str2);
            return str2;
        } catch (Exception e6) {
            e = e6;
            this.z.d("Error while reading mac from file (" + e.getClass().getName() + ")", e);
            this.z.d("DATA: " + str2);
            return str2;
        }
        this.z.d("DATA: " + str2);
        return str2;
    }

    private void y() {
        String[] strArr;
        if (this.d.matches("^[0-9a-fA-F]{2}([^0-9a-fA-F][0-9a-fA-F]{2}){5}$")) {
            strArr = this.d.split("[^0-9a-fA-F]");
        } else if (this.d.matches("^[0-9a-fA-F]{12}$")) {
            strArr = new String[6];
            int i = 0;
            int i2 = 0;
            while (i2 < 6) {
                strArr[i2] = this.d.substring(i, i + 2);
                i2++;
                i += 2;
            }
        } else {
            this.z.c("MAC incorrect or has strange formatting: " + this.d + ", cannot extract data for hashes");
            this.d = "00:00:00:00:00:00";
            this.n = "";
            this.m = "";
            return;
        }
        byte[] bArr = new byte[strArr.length];
        for (int i3 = 0; i3 < strArr.length; i3++) {
            bArr[i3] = (byte) ((Character.digit(strArr[i3].charAt(0), 16) << 4) + Character.digit(strArr[i3].charAt(1), 16));
        }
        this.n = CvHash.b(bArr);
        this.m = CvHash.a(bArr);
    }

    private void c(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") != -1) {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager != null) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (connectionInfo != null) {
                    this.d = connectionInfo.getMacAddress();
                    this.z.a("Got mac address: " + this.d + " (" + connectionInfo.getMacAddress() + ")");
                } else {
                    this.z.d("Cannot get connection info");
                }
            } else {
                this.z.d("Cannot get WifiManager");
            }
        } else {
            this.z.d("ACCESS_WIFI_STATE permission is missing");
        }
        if (this.d == null || this.d.length() == 0) {
            this.d = a(String.format("et%s", String.format("h%d", 0)));
        }
        if (this.d == null || this.d.length() == 0) {
            this.d = a(String.format("et%s", String.format("h%d", 1)));
        }
        if (this.d == null || this.d.length() == 0) {
            this.d = "00:00:00:00:00:00";
            this.m = "";
            this.n = "";
            Logger.a().c("WiFi interface MAC address unavailable.");
            return;
        }
        y();
        this.z.a("MAC: " + this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String k() {
        if (this.y.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") != -1) {
            WifiManager wifiManager = (WifiManager) this.y.getSystemService("wifi");
            if (wifiManager != null) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (connectionInfo != null) {
                    String bssid = connectionInfo.getBSSID();
                    if (bssid == null) {
                        this.z.c("BSSID is null");
                    } else {
                        return bssid;
                    }
                } else {
                    this.z.d("Cannot get connection info");
                }
            } else {
                this.z.d("Cannot get WifiManager");
            }
        } else {
            this.z.d("ACCESS_WIFI_STATE permission is missing");
        }
        return "";
    }

    private void d(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != -1) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            this.f = telephonyManager.getDeviceId();
            this.g = telephonyManager.getSimSerialNumber();
            this.z.a("IMEI: " + this.f);
            this.z.a("SIM card serial number: " + this.g);
            return;
        }
        this.f = "";
        this.g = "";
    }

    private void z() {
        String sb;
        if (Build.VERSION.SDK_INT < 21) {
            sb = Build.CPU_ABI;
        } else {
            StringBuilder sb2 = new StringBuilder();
            for (int i = 0; i < Build.SUPPORTED_ABIS.length; i++) {
                if (i > 0) {
                    sb2.append(",");
                }
                sb2.append(Build.SUPPORTED_ABIS[i]);
            }
            sb = sb2.toString();
        }
        String format = String.format("%s|%s|%s|%s|%s|%s|%s|%s|%s", this.d, this.e, this.e, this.g, this.f, Build.BOARD, sb, Build.DEVICE, Long.toString(Build.TIME), Build.MODEL);
        this.r = CvHash.b(format);
        this.s = CvHash.b(format);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONArray l() {
        JSONArray jSONArray = new JSONArray();
        try {
            for (BluetoothDevice bluetoothDevice : BluetoothAdapter.getDefaultAdapter().getBondedDevices()) {
                SimpleJSON simpleJSON = new SimpleJSON();
                simpleJSON.a("name", (Object) bluetoothDevice.getName());
                simpleJSON.a("address", (Object) bluetoothDevice.getAddress());
                jSONArray.put(simpleJSON.f1969a);
            }
        } catch (Exception e) {
        }
        return jSONArray;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:28:0x00ec
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:82)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    private void e(android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apprupt.sdk.CvAppInfo.e(android.content.Context):void");
    }

    private void f(final Context context) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            g(context);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvAppInfo.2
                @Override // java.lang.Runnable
                public void run() {
                    CvAppInfo.this.g(context);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Context context) {
        synchronized (this) {
            try {
                this.q = new WebView(context).getSettings().getUserAgentString();
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String m() {
        return x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String n() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String o() {
        this.z.d("Returning userAgent " + this.q);
        return this.q;
    }

    String p() {
        return Build.MODEL;
    }

    String q() {
        return String.format("Android %s", Build.VERSION.RELEASE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String r() {
        return Locale.getDefault().getLanguage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String s() {
        return Locale.getDefault().getCountry();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String t() {
        return Locale.getDefault().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean u() {
        return this.u;
    }
}
