package com.unity3d.ads.properties;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.log.DeviceLog;
import java.io.ByteArrayInputStream;
import java.lang.ref.WeakReference;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes3.dex */
public class ClientProperties {
    private static final X500Principal DEBUG_CERT = new X500Principal("CN=Android Debug,O=Android,C=US");
    private static WeakReference<Activity> _activity;
    private static Context _applicationContext;
    private static String _gameId;
    private static IUnityAdsListener _listener;

    public static Activity getActivity() {
        return _activity.get();
    }

    public static void setActivity(Activity activity) {
        _activity = new WeakReference<>(activity);
    }

    public static Context getApplicationContext() {
        return _applicationContext;
    }

    public static void setApplicationContext(Context context) {
        _applicationContext = context;
    }

    public static IUnityAdsListener getListener() {
        return _listener;
    }

    public static void setListener(IUnityAdsListener iUnityAdsListener) {
        _listener = iUnityAdsListener;
    }

    public static String getGameId() {
        return _gameId;
    }

    public static void setGameId(String str) {
        _gameId = str;
    }

    public static String getAppName() {
        return _applicationContext.getPackageName();
    }

    public static String getAppVersion() {
        try {
            return getApplicationContext().getPackageManager().getPackageInfo(getApplicationContext().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            DeviceLog.exception("Error getting package info", e);
            return null;
        }
    }

    public static boolean isAppDebuggable() {
        boolean z;
        boolean z2 = true;
        if (getApplicationContext() != null) {
            PackageManager packageManager = getApplicationContext().getPackageManager();
            String packageName = getApplicationContext().getPackageName();
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i == 0) {
                    z2 = false;
                }
                z = false;
            } catch (PackageManager.NameNotFoundException e) {
                DeviceLog.exception("Could not find name", e);
                z = true;
                z2 = false;
            }
            if (z) {
                try {
                    Signature[] signatureArr = packageManager.getPackageInfo(packageName, 64).signatures;
                    int length = signatureArr.length;
                    int i2 = 0;
                    boolean z3 = z2;
                    while (i2 < length) {
                        try {
                            boolean equals = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[i2].toByteArray()))).getSubjectX500Principal().equals(DEBUG_CERT);
                            if (!equals) {
                                i2++;
                                z3 = equals;
                            } else {
                                return equals;
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            z2 = z3;
                            e = e2;
                            DeviceLog.exception("Could not find name", e);
                            return z2;
                        } catch (CertificateException e3) {
                            z2 = z3;
                            e = e3;
                            DeviceLog.exception("Certificate exception", e);
                            return z2;
                        }
                    }
                    return z3;
                } catch (PackageManager.NameNotFoundException e4) {
                    e = e4;
                } catch (CertificateException e5) {
                    e = e5;
                }
            } else {
                return z2;
            }
        } else {
            return false;
        }
    }
}
