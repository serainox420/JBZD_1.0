package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;
@zzme
/* loaded from: classes.dex */
public final class zzni {
    public final int zzRH;
    public final int zzRI;
    public final int zzUE;
    public final boolean zzUF;
    public final boolean zzUG;
    public final String zzUH;
    public final String zzUI;
    public final boolean zzUJ;
    public final boolean zzUK;
    public final boolean zzUL;
    public final boolean zzUM;
    public final String zzUN;
    public final String zzUO;
    public final int zzUP;
    public final int zzUQ;
    public final int zzUR;
    public final int zzUS;
    public final int zzUT;
    public final int zzUU;
    public final double zzUV;
    public final boolean zzUW;
    public final boolean zzUX;
    public final int zzUY;
    public final String zzUZ;
    public final boolean zzVa;
    public final float zzxk;

    /* loaded from: classes2.dex */
    public static final class zza {
        private int zzRH;
        private int zzRI;
        private int zzUE;
        private boolean zzUF;
        private boolean zzUG;
        private String zzUH;
        private String zzUI;
        private boolean zzUJ;
        private boolean zzUK;
        private boolean zzUL;
        private boolean zzUM;
        private String zzUN;
        private String zzUO;
        private int zzUP;
        private int zzUQ;
        private int zzUR;
        private int zzUS;
        private int zzUT;
        private int zzUU;
        private double zzUV;
        private boolean zzUW;
        private boolean zzUX;
        private int zzUY;
        private String zzUZ;
        private boolean zzVa;
        private float zzxk;

        public zza(Context context) {
            DisplayMetrics displayMetrics;
            boolean z = true;
            PackageManager packageManager = context.getPackageManager();
            zzw(context);
            zzx(context);
            zzy(context);
            Locale locale = Locale.getDefault();
            this.zzUF = zza(packageManager, "geo:0,0?q=donuts") != null;
            this.zzUG = zza(packageManager, "http://www.google.com") == null ? false : z;
            this.zzUI = locale.getCountry();
            this.zzUJ = zzel.zzeT().zzli();
            this.zzUK = com.google.android.gms.common.util.zzj.zzbb(context);
            this.zzUN = locale.getLanguage();
            this.zzUO = zza(context, packageManager);
            Resources resources = context.getResources();
            if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                return;
            }
            this.zzxk = displayMetrics.density;
            this.zzRH = displayMetrics.widthPixels;
            this.zzRI = displayMetrics.heightPixels;
        }

        public zza(Context context, zzni zzniVar) {
            context.getPackageManager();
            zzw(context);
            zzx(context);
            zzy(context);
            zzz(context);
            this.zzUF = zzniVar.zzUF;
            this.zzUG = zzniVar.zzUG;
            this.zzUI = zzniVar.zzUI;
            this.zzUJ = zzniVar.zzUJ;
            this.zzUK = zzniVar.zzUK;
            this.zzUN = zzniVar.zzUN;
            this.zzUO = zzniVar.zzUO;
            this.zzxk = zzniVar.zzxk;
            this.zzRH = zzniVar.zzRH;
            this.zzRI = zzniVar.zzRI;
        }

        private static ResolveInfo zza(PackageManager packageManager, String str) {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        }

        private static String zza(Context context, PackageManager packageManager) {
            ActivityInfo activityInfo;
            ResolveInfo zza = zza(packageManager, "market://details?id=com.google.android.gms.ads");
            if (zza == null || (activityInfo = zza.activityInfo) == null) {
                return null;
            }
            try {
                PackageInfo packageInfo = zzadg.zzbi(context).getPackageInfo(activityInfo.packageName, 0);
                if (packageInfo == null) {
                    return null;
                }
                int i = packageInfo.versionCode;
                String valueOf = String.valueOf(activityInfo.packageName);
                return new StringBuilder(String.valueOf(valueOf).length() + 12).append(i).append(".").append(valueOf).toString();
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        private void zzw(Context context) {
            AudioManager zzR = com.google.android.gms.ads.internal.zzw.zzcM().zzR(context);
            if (zzR != null) {
                try {
                    this.zzUE = zzR.getMode();
                    this.zzUL = zzR.isMusicActive();
                    this.zzUM = zzR.isSpeakerphoneOn();
                    this.zzUP = zzR.getStreamVolume(3);
                    this.zzUT = zzR.getRingerMode();
                    this.zzUU = zzR.getStreamVolume(2);
                    return;
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "DeviceInfo.gatherAudioInfo");
                }
            }
            this.zzUE = -2;
            this.zzUL = false;
            this.zzUM = false;
            this.zzUP = 0;
            this.zzUT = 0;
            this.zzUU = 0;
        }

        @TargetApi(16)
        private void zzx(Context context) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            this.zzUH = telephonyManager.getNetworkOperator();
            this.zzUR = telephonyManager.getNetworkType();
            this.zzUS = telephonyManager.getPhoneType();
            this.zzUQ = -2;
            this.zzUX = false;
            this.zzUY = -1;
            if (com.google.android.gms.ads.internal.zzw.zzcM().zze(context, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE")) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    this.zzUQ = activeNetworkInfo.getType();
                    this.zzUY = activeNetworkInfo.getDetailedState().ordinal();
                } else {
                    this.zzUQ = -1;
                }
                if (Build.VERSION.SDK_INT < 16) {
                    return;
                }
                this.zzUX = connectivityManager.isActiveNetworkMetered();
            }
        }

        private void zzy(Context context) {
            boolean z = false;
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver == null) {
                this.zzUV = -1.0d;
                this.zzUW = false;
                return;
            }
            int intExtra = registerReceiver.getIntExtra("status", -1);
            this.zzUV = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            this.zzUW = z;
        }

        private void zzz(Context context) {
            this.zzUZ = Build.FINGERPRINT;
            this.zzVa = zzgr.zzo(context);
        }

        public zzni zzjC() {
            return new zzni(this.zzUE, this.zzUF, this.zzUG, this.zzUH, this.zzUI, this.zzUJ, this.zzUK, this.zzUL, this.zzUM, this.zzUN, this.zzUO, this.zzUP, this.zzUQ, this.zzUR, this.zzUS, this.zzUT, this.zzUU, this.zzxk, this.zzRH, this.zzRI, this.zzUV, this.zzUW, this.zzUX, this.zzUY, this.zzUZ, this.zzVa);
        }
    }

    zzni(int i, boolean z, boolean z2, String str, String str2, boolean z3, boolean z4, boolean z5, boolean z6, String str3, String str4, int i2, int i3, int i4, int i5, int i6, int i7, float f, int i8, int i9, double d, boolean z7, boolean z8, int i10, String str5, boolean z9) {
        this.zzUE = i;
        this.zzUF = z;
        this.zzUG = z2;
        this.zzUH = str;
        this.zzUI = str2;
        this.zzUJ = z3;
        this.zzUK = z4;
        this.zzUL = z5;
        this.zzUM = z6;
        this.zzUN = str3;
        this.zzUO = str4;
        this.zzUP = i2;
        this.zzUQ = i3;
        this.zzUR = i4;
        this.zzUS = i5;
        this.zzUT = i6;
        this.zzUU = i7;
        this.zzxk = f;
        this.zzRH = i8;
        this.zzRI = i9;
        this.zzUV = d;
        this.zzUW = z7;
        this.zzUX = z8;
        this.zzUY = i10;
        this.zzUZ = str5;
        this.zzVa = z9;
    }
}
