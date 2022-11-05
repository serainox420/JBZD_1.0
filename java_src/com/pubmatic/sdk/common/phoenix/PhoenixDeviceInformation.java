package com.pubmatic.sdk.common.phoenix;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.openx.view.mraid.JSInterface;
import io.fabric.sdk.android.services.b.b;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class PhoenixDeviceInformation {
    private static PhoenixDeviceInformation instance = null;
    private static Context mApplicationContext = null;
    public static int mInIframe = 0;
    public String mApplicationName;
    public String mApplicationVersion;
    public String mCarrierName;
    public String mDeviceScreenResolution;
    public String mPackageName;
    public String mPageURL;

    private PhoenixDeviceInformation(Context context) {
        this.mApplicationName = null;
        this.mApplicationVersion = null;
        this.mPackageName = null;
        this.mPageURL = null;
        this.mDeviceScreenResolution = null;
        this.mCarrierName = null;
        mApplicationContext = context;
        PackageManager packageManager = mApplicationContext.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(mApplicationContext.getPackageName(), 0);
            this.mApplicationName = packageInfo.applicationInfo.loadLabel(packageManager).toString();
            this.mPackageName = mApplicationContext.getPackageName();
            this.mApplicationVersion = packageInfo.versionName;
            this.mPageURL = this.mApplicationName + b.ROLL_OVER_FILE_NAME_SEPARATOR + this.mApplicationVersion;
            Display defaultDisplay = ((WindowManager) mApplicationContext.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            this.mDeviceScreenResolution = displayMetrics.widthPixels + JSInterface.JSON_X + displayMetrics.heightPixels;
            this.mCarrierName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized PhoenixDeviceInformation getInstance(Context context) {
        PhoenixDeviceInformation phoenixDeviceInformation;
        synchronized (PhoenixDeviceInformation.class) {
            if (instance == null) {
                instance = new PhoenixDeviceInformation(context);
            }
            phoenixDeviceInformation = instance;
        }
        return phoenixDeviceInformation;
    }

    public static synchronized String getCurrentTime() {
        String format;
        synchronized (PhoenixDeviceInformation.class) {
            format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        }
        return format;
    }

    public static synchronized float getRandomNumber() {
        float random;
        synchronized (PhoenixDeviceInformation.class) {
            random = (float) Math.random();
            while (random >= 1.0f) {
                random /= 10.0f;
            }
        }
        return random;
    }

    public static String getTimeZoneOffset() {
        try {
            String format = new SimpleDateFormat("Z").format(Calendar.getInstance(TimeZone.getTimeZone("GMT"), Locale.getDefault()).getTime());
            String valueOf = String.valueOf(Double.valueOf(format.substring(3, 5)).doubleValue() / 60.0d);
            return format.substring(0, 3) + valueOf.substring(valueOf.indexOf("."));
        } catch (Exception e) {
            return null;
        }
    }
}
