package com.mdotm.android.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mdotm.android.listener.InterstitialActionListener;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes3.dex */
public class MdotMUtils {
    private static MdotMUtils _mdotmUtilsInstance;
    private HashMap<Long, InterstitialActionListener> interstitialActionListeners = new HashMap<>();
    public static int AD_ICON_WITH_TEXT_MESSAGE = 2;
    public static int AD_WITH_BANNER_OR_XHTML_OR_VIDEO = 1;
    public static int AD_RECEVIED = 1;

    public static MdotMUtils getUtilsInstance() {
        if (_mdotmUtilsInstance == null) {
            _mdotmUtilsInstance = new MdotMUtils();
        }
        return _mdotmUtilsInstance;
    }

    public String getUserAgent(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Exception e) {
            MdotMLogger.e(this, e.getMessage());
            return getUserAgentManually();
        }
    }

    private String getUserAgentManually() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = Build.VERSION.RELEASE;
        if (str.length() > 0) {
            stringBuffer.append(str);
        } else {
            stringBuffer.append("1.0");
        }
        stringBuffer.append("; ");
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (language != null) {
            stringBuffer.append(language.toLowerCase());
            String country = locale.getCountry();
            if (country != null) {
                stringBuffer.append("-");
                stringBuffer.append(country.toLowerCase());
            }
        } else {
            stringBuffer.append("en");
        }
        String str2 = Build.MODEL;
        if (str2.length() > 0) {
            stringBuffer.append("; ");
            stringBuffer.append(str2);
        }
        String str3 = Build.ID;
        if (str3.length() > 0) {
            stringBuffer.append(" Build/");
            stringBuffer.append(str3);
        }
        return String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1", stringBuffer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    @TargetApi(13)
    public String getDisplaySize(Context context) {
        int width;
        Point point = new Point();
        int i = (WindowManager) context.getSystemService("window");
        try {
            if (Build.VERSION.SDK_INT >= 13) {
                MdotMLogger.d(this, "Getting conditional display size");
                i.getDefaultDisplay().getSize(point);
                width = point.x;
                i = point.y;
            } else {
                MdotMLogger.d(this, "Default display");
                Display defaultDisplay = i.getDefaultDisplay();
                width = defaultDisplay.getWidth();
                i = defaultDisplay.getHeight();
            }
        } catch (Exception e) {
            e.printStackTrace();
            MdotMLogger.d(this, "Default display");
            Display defaultDisplay2 = i.getDefaultDisplay();
            width = defaultDisplay2.getWidth();
            i = defaultDisplay2.getHeight();
        }
        String str = String.valueOf(width) + "," + i;
        MdotMLogger.i(this, "SCREEN DISPLAY SIZE " + str);
        return str;
    }

    public String getBandWidth(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return null;
        }
        int type = activeNetworkInfo.getType();
        int subtype = activeNetworkInfo.getSubtype();
        if (type == 1) {
            try {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
                if (connectionInfo != null) {
                    Integer valueOf = Integer.valueOf(connectionInfo.getLinkSpeed());
                    MdotMLogger.d(this, "Wifi bandwidth " + valueOf);
                    return String.valueOf(String.valueOf(valueOf)) + "000";
                }
            } catch (Exception e) {
            }
            return null;
        } else if (type != 0) {
            return null;
        } else {
            switch (subtype) {
                case 0:
                    return null;
                case 1:
                    return "100";
                case 2:
                    return "50";
                case 3:
                    return "400";
                case 4:
                    return "14";
                case 5:
                    return "400";
                case 6:
                    return "600";
                case 7:
                    return "50";
                case 8:
                    return "2000";
                case 9:
                    return "1024";
                case 10:
                    return "700";
                case 11:
                    return "25600";
                case 12:
                    return "5120";
                case 13:
                    return "10240";
                case 14:
                    return "1024";
                case 15:
                    return "10240";
                default:
                    return null;
            }
        }
    }

    @TargetApi(11)
    public void reportImpression(String str, Context context) {
        MdotMLogger.d(this, "initiated " + str);
        if (Build.VERSION.SDK_INT >= 11) {
            new MyAsynchTask(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        } else {
            new MyAsynchTask(context).execute(str);
        }
    }

    /* loaded from: classes3.dex */
    class MyAsynchTask extends AsyncTask<String, Void, Void> {
        Context context;

        public MyAsynchTask(Context context) {
            this.context = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) {
            URL url;
            HttpURLConnection httpURLConnection;
            int i;
            String str = strArr[0];
            MdotMLogger.i(this, "Reporting impression " + str);
            if (str == null || str.trim().length() <= 0) {
                MdotMLogger.d(this, "imp pixel url is null");
            } else if (MdotMUtils.this.isNetworkAvailable(this.context)) {
                try {
                    url = new URL(str);
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                    url = null;
                }
                try {
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    httpURLConnection = null;
                }
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(30000);
                try {
                    i = httpURLConnection.getResponseCode();
                } catch (IOException e3) {
                    e3.printStackTrace();
                    i = 0;
                }
                if (i == 200 || i == 201) {
                    MdotMLogger.i(this, "impression successfull ");
                } else {
                    MdotMLogger.i(this, "impression unsuccessfull ");
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public InterstitialActionListener getInterstitialActionListener(long j) {
        return this.interstitialActionListeners.get(Long.valueOf(j));
    }

    public void setInterstitialActionListener(long j, InterstitialActionListener interstitialActionListener) {
        this.interstitialActionListeners.put(Long.valueOf(j), interstitialActionListener);
    }

    public void removeInterstitialActionListener(long j) {
        this.interstitialActionListeners.remove(Long.valueOf(j));
    }

    public String getAdId(Context context) {
        AdvertisingIdClient.Info adInfo = getAdInfo(context);
        if (adInfo == null) {
            return null;
        }
        String id = adInfo.getId();
        MdotMLogger.d(this, "Ad Id is " + id);
        return id;
    }

    private AdvertisingIdClient.Info getAdInfo(Context context) {
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return MdotMAdInfo.getAdInfo(context);
        } catch (ClassNotFoundException e) {
            MdotMLogger.i("this", "GPS not found ");
            e.printStackTrace();
            return null;
        }
    }

    public boolean getLAT(Context context) {
        AdvertisingIdClient.Info adInfo = getAdInfo(context);
        if (adInfo == null || adInfo.getId() == null) {
            return false;
        }
        boolean isLimitAdTrackingEnabled = adInfo.isLimitAdTrackingEnabled();
        MdotMLogger.i(this, "isLAT " + isLimitAdTrackingEnabled);
        return isLimitAdTrackingEnabled;
    }
}
