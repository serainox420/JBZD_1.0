package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.mopub.mobileads.resource.DrawableConstants;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import io.fabric.sdk.android.services.common.a;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.StringTokenizer;
@zzme
/* loaded from: classes.dex */
public class zzqe {
    public static final Handler zzYP = new Handler(Looper.getMainLooper());
    private static final String zzYQ = AdView.class.getName();
    private static final String zzYR = InterstitialAd.class.getName();
    private static final String zzYS = PublisherAdView.class.getName();
    private static final String zzYT = PublisherInterstitialAd.class.getName();
    private static final String zzYU = SearchAdView.class.getName();
    private static final String zzYV = AdLoader.class.getName();

    /* loaded from: classes2.dex */
    public interface zza {
        void zzu(String str);
    }

    private void zza(ViewGroup viewGroup, zzeg zzegVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i);
        textView.setBackgroundColor(i2);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i);
        int zzb = zzb(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzegVar.widthPixels - zzb, zzegVar.heightPixels - zzb, 17));
        viewGroup.addView(frameLayout, zzegVar.widthPixels, zzegVar.heightPixels);
    }

    public int zza(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    public String zza(StackTraceElement[] stackTraceElementArr, String str) {
        String str2;
        for (int i = 0; i + 1 < stackTraceElementArr.length; i++) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i];
            String className = stackTraceElement.getClassName();
            if ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (zzYQ.equalsIgnoreCase(className) || zzYR.equalsIgnoreCase(className) || zzYS.equalsIgnoreCase(className) || zzYT.equalsIgnoreCase(className) || zzYU.equalsIgnoreCase(className) || zzYV.equalsIgnoreCase(className))) {
                str2 = stackTraceElementArr[i + 1].getClassName();
                break;
            }
        }
        str2 = null;
        if (str != null) {
            String zzb = zzb(str, ".", 3);
            if (str2 != null && !str2.contains(zzb)) {
                return str2;
            }
        }
        return null;
    }

    public void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        zza(context, str, str2, bundle, z, new zza(this) { // from class: com.google.android.gms.internal.zzqe.1
            /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.zzqe$1$1] */
            @Override // com.google.android.gms.internal.zzqe.zza
            public void zzu(final String str3) {
                new Thread(this) { // from class: com.google.android.gms.internal.zzqe.1.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        new zzqg().zzu(str3);
                    }
                }.start();
            }
        });
    }

    public void zza(Context context, String str, String str2, Bundle bundle, boolean z, zza zzaVar) {
        if (z) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            bundle.putString(PubMaticConstants.OS_PARAM, Build.VERSION.RELEASE);
            bundle.putString(PhoenixConstants.APP_API_PARAM, String.valueOf(Build.VERSION.SDK_INT));
            bundle.putString(AdDatabaseHelper.COLUMN_APPID, applicationContext.getPackageName());
            if (str == null) {
                str = new StringBuilder(23).append(com.google.android.gms.common.zze.zzuY().zzaC(context)).append(".").append(10298000).toString();
            }
            bundle.putString("js", str);
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str3 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        zzaVar.zzu(appendQueryParameter.toString());
    }

    public void zza(ViewGroup viewGroup, zzeg zzegVar, String str) {
        zza(viewGroup, zzegVar, str, DrawableConstants.CtaButton.BACKGROUND_COLOR, -1);
    }

    public void zza(ViewGroup viewGroup, zzeg zzegVar, String str, String str2) {
        zzqf.zzbh(str2);
        zza(viewGroup, zzegVar, str, -65536, DrawableConstants.CtaButton.BACKGROUND_COLOR);
    }

    public void zza(boolean z, HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(z);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    public String zzad(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || zzli()) {
            string = "emulator";
        }
        return zzbe(string);
    }

    public String zzae(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    public boolean zzaf(Context context) {
        return com.google.android.gms.common.zze.zzuY().isGooglePlayServicesAvailable(context) == 0;
    }

    public boolean zzag(Context context) {
        int isGooglePlayServicesAvailable = com.google.android.gms.common.zze.zzuY().isGooglePlayServicesAvailable(context);
        return isGooglePlayServicesAvailable == 0 || isGooglePlayServicesAvailable == 2;
    }

    public boolean zzah(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    @TargetApi(17)
    public boolean zzai(Context context) {
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (com.google.android.gms.common.util.zzt.zzzj()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            intValue = displayMetrics.heightPixels;
            intValue2 = displayMetrics.widthPixels;
        } else {
            try {
                intValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                intValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
                return false;
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels == intValue && displayMetrics.widthPixels == intValue2;
    }

    public int zzaj(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", a.ANDROID_CLIENT_TYPE);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public int zzb(Context context, int i) {
        return zza(context.getResources().getDisplayMetrics(), i);
    }

    public int zzb(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    String zzb(String str, String str2, int i) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        StringBuilder sb = new StringBuilder();
        int i2 = i - 1;
        if (i <= 0 || !stringTokenizer.hasMoreElements()) {
            return str;
        }
        sb.append(stringTokenizer.nextToken());
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0 || !stringTokenizer.hasMoreElements()) {
                break;
            }
            sb.append(".").append(stringTokenizer.nextToken());
            i2 = i3;
        }
        return sb.toString();
    }

    public String zzbe(String str) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return null;
    }

    public int zzc(Context context, int i) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return zzb(displayMetrics, i);
    }

    public boolean zzli() {
        return Build.DEVICE.startsWith("generic");
    }

    public boolean zzlj() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
