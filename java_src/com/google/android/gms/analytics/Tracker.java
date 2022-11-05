package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzrk;
import com.google.android.gms.internal.zzrx;
import com.google.android.gms.internal.zzsa;
import com.google.android.gms.internal.zzsb;
import com.google.android.gms.internal.zzsc;
import com.google.android.gms.internal.zzse;
import com.google.android.gms.internal.zzsz;
import com.google.android.gms.internal.zztb;
import com.google.android.gms.internal.zztl;
import com.google.android.gms.internal.zztm;
import com.google.firebase.a.a;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.openx.view.mraid.JSInterface;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
/* loaded from: classes.dex */
public class Tracker extends zzsa {
    private final Map<String, String> zzFP;
    private boolean zzacs;
    private final Map<String, String> zzact;
    private final zztb zzacu;
    private final zza zzacv;
    private ExceptionReporter zzacw;
    private zztl zzacx;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza extends zzsa implements GoogleAnalytics.zza {
        private boolean zzacG;
        private int zzacH;
        private long zzacI;
        private boolean zzacJ;
        private long zzacK;

        protected zza(zzsc zzscVar) {
            super(zzscVar);
            this.zzacI = -1L;
        }

        private void zzmW() {
            if (this.zzacI >= 0 || this.zzacG) {
                zzmu().zza(Tracker.this.zzacv);
            } else {
                zzmu().zzb(Tracker.this.zzacv);
            }
        }

        public void enableAutoActivityTracking(boolean z) {
            this.zzacG = z;
            zzmW();
        }

        public void setSessionTimeout(long j) {
            this.zzacI = j;
            zzmW();
        }

        @Override // com.google.android.gms.internal.zzsa
        protected void zzmS() {
        }

        public synchronized boolean zzmV() {
            boolean z;
            z = this.zzacJ;
            this.zzacJ = false;
            return z;
        }

        boolean zzmX() {
            return zznR().elapsedRealtime() >= this.zzacK + Math.max(1000L, this.zzacI);
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public void zzo(Activity activity) {
            if (this.zzacH == 0 && zzmX()) {
                this.zzacJ = true;
            }
            this.zzacH++;
            if (this.zzacG) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Tracker.this.setCampaignParamsOnNextHit(intent.getData());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("&t", "screenview");
                Tracker.this.set("&cd", Tracker.this.zzacx != null ? Tracker.this.zzacx.zzr(activity) : activity.getClass().getCanonicalName());
                if (TextUtils.isEmpty((CharSequence) hashMap.get("&dr"))) {
                    String zzq = Tracker.zzq(activity);
                    if (!TextUtils.isEmpty(zzq)) {
                        hashMap.put("&dr", zzq);
                    }
                }
                Tracker.this.send(hashMap);
            }
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public void zzp(Activity activity) {
            this.zzacH--;
            this.zzacH = Math.max(0, this.zzacH);
            if (this.zzacH == 0) {
                this.zzacK = zznR().elapsedRealtime();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tracker(zzsc zzscVar, String str, zztb zztbVar) {
        super(zzscVar);
        this.zzFP = new HashMap();
        this.zzact = new HashMap();
        if (str != null) {
            this.zzFP.put("&tid", str);
        }
        this.zzFP.put("useSecure", "1");
        this.zzFP.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        if (zztbVar == null) {
            this.zzacu = new zztb("tracking", zznR());
        } else {
            this.zzacu = zztbVar;
        }
        this.zzacv = new zza(zzscVar);
    }

    private static boolean zza(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        entry.getValue();
        return key.startsWith("&") && key.length() >= 2;
    }

    private static String zzb(Map.Entry<String, String> entry) {
        if (!zza(entry)) {
            return null;
        }
        return entry.getKey().substring(1);
    }

    private static void zzb(Map<String, String> map, Map<String, String> map2) {
        zzac.zzw(map2);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String zzb = zzb(entry);
            if (zzb != null) {
                map2.put(zzb, entry.getValue());
            }
        }
    }

    private static void zzc(Map<String, String> map, Map<String, String> map2) {
        zzac.zzw(map2);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String zzb = zzb(entry);
            if (zzb != null && !map2.containsKey(zzb)) {
                map2.put(zzb, entry.getValue());
            }
        }
    }

    private boolean zzmT() {
        return this.zzacw != null;
    }

    static String zzq(Activity activity) {
        zzac.zzw(activity);
        Intent intent = activity.getIntent();
        if (intent == null) {
            return null;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (TextUtils.isEmpty(stringExtra)) {
            return null;
        }
        return stringExtra;
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzacs = z;
    }

    public void enableAutoActivityTracking(boolean z) {
        this.zzacv.enableAutoActivityTracking(z);
    }

    public void enableExceptionReporting(boolean z) {
        synchronized (this) {
            if (zzmT() == z) {
                return;
            }
            if (z) {
                this.zzacw = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), getContext());
                Thread.setDefaultUncaughtExceptionHandler(this.zzacw);
                zzbP("Uncaught exceptions will be reported to Google Analytics");
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this.zzacw.zzmv());
                zzbP("Uncaught exceptions will not be reported to Google Analytics");
            }
        }
    }

    public String get(String str) {
        zzob();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.zzFP.containsKey(str)) {
            return this.zzFP.get(str);
        }
        if (str.equals("&ul")) {
            return zztm.zza(Locale.getDefault());
        }
        if (str.equals("&cid")) {
            return zznX().zzoQ();
        }
        if (str.equals("&sr")) {
            return zzoa().zzpC();
        }
        if (str.equals("&aid")) {
            return zznZ().zzoy().zzke();
        }
        if (str.equals("&an")) {
            return zznZ().zzoy().zzmY();
        }
        if (str.equals("&av")) {
            return zznZ().zzoy().zzmZ();
        }
        if (!str.equals("&aiid")) {
            return null;
        }
        return zznZ().zzoy().zzna();
    }

    public void send(Map<String, String> map) {
        final long currentTimeMillis = zznR().currentTimeMillis();
        if (zzmu().getAppOptOut()) {
            zzbQ("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        final boolean isDryRunEnabled = zzmu().isDryRunEnabled();
        final HashMap hashMap = new HashMap();
        zzb(this.zzFP, hashMap);
        zzb(map, hashMap);
        final boolean zzg = zztm.zzg(this.zzFP.get("useSecure"), true);
        zzc(this.zzact, hashMap);
        this.zzact.clear();
        final String str = hashMap.get("t");
        if (TextUtils.isEmpty(str)) {
            zznS().zzg(hashMap, "Missing hit type parameter");
            return;
        }
        final String str2 = hashMap.get("tid");
        if (TextUtils.isEmpty(str2)) {
            zznS().zzg(hashMap, "Missing tracking id parameter");
            return;
        }
        final boolean zzmU = zzmU();
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int parseInt = Integer.parseInt(this.zzFP.get("&a")) + 1;
                if (parseInt >= Integer.MAX_VALUE) {
                    parseInt = 1;
                }
                this.zzFP.put("&a", Integer.toString(parseInt));
            }
        }
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.analytics.Tracker.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z = true;
                if (Tracker.this.zzacv.zzmV()) {
                    hashMap.put("sc", SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
                }
                zztm.zzd(hashMap, "cid", Tracker.this.zzmu().zzmy());
                String str3 = (String) hashMap.get("sf");
                if (str3 != null) {
                    double zza2 = zztm.zza(str3, 100.0d);
                    if (zztm.zza(zza2, (String) hashMap.get("cid"))) {
                        Tracker.this.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(zza2));
                        return;
                    }
                }
                zzrx zznY = Tracker.this.zznY();
                if (zzmU) {
                    zztm.zzb(hashMap, "ate", zznY.zznw());
                    zztm.zzc(hashMap, "adid", zznY.zznG());
                } else {
                    hashMap.remove("ate");
                    hashMap.remove("adid");
                }
                zzrk zzoy = Tracker.this.zznZ().zzoy();
                zztm.zzc(hashMap, "an", zzoy.zzmY());
                zztm.zzc(hashMap, "av", zzoy.zzmZ());
                zztm.zzc(hashMap, "aid", zzoy.zzke());
                zztm.zzc(hashMap, "aiid", zzoy.zzna());
                hashMap.put("v", "1");
                hashMap.put("_v", zzsb.zzadQ);
                zztm.zzc(hashMap, "ul", Tracker.this.zzoa().zzpB().getLanguage());
                zztm.zzc(hashMap, "sr", Tracker.this.zzoa().zzpC());
                if (!(str.equals("transaction") || str.equals("item")) && !Tracker.this.zzacu.zzpV()) {
                    Tracker.this.zznS().zzg(hashMap, "Too many hits sent too quickly, rate limiting invoked");
                    return;
                }
                long zzcf = zztm.zzcf((String) hashMap.get("ht"));
                if (zzcf == 0) {
                    zzcf = currentTimeMillis;
                }
                if (isDryRunEnabled) {
                    Tracker.this.zznS().zzc("Dry run enabled. Would have sent hit", new zzsz(Tracker.this, hashMap, zzcf, zzg));
                    return;
                }
                String str4 = (String) hashMap.get("cid");
                HashMap hashMap2 = new HashMap();
                zztm.zza(hashMap2, "uid", hashMap);
                zztm.zza(hashMap2, "an", hashMap);
                zztm.zza(hashMap2, "aid", hashMap);
                zztm.zza(hashMap2, "av", hashMap);
                zztm.zza(hashMap2, "aiid", hashMap);
                String str5 = str2;
                if (TextUtils.isEmpty((CharSequence) hashMap.get("adid"))) {
                    z = false;
                }
                hashMap.put("_s", String.valueOf(Tracker.this.zzmA().zza(new zzse(0L, str4, str5, z, 0L, hashMap2))));
                Tracker.this.zzmA().zza(new zzsz(Tracker.this, hashMap, zzcf, zzg));
            }
        });
    }

    public void set(String str, String str2) {
        zzac.zzb(str, "Key should be non-null");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zzFP.put(str, str2);
    }

    public void setAnonymizeIp(boolean z) {
        set("&aip", zztm.zzX(z));
    }

    public void setAppId(String str) {
        set("&aid", str);
    }

    public void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public void setAppName(String str) {
        set("&an", str);
    }

    public void setAppVersion(String str) {
        set("&av", str);
    }

    public void setCampaignParamsOnNextHit(Uri uri) {
        if (uri == null || uri.isOpaque()) {
            return;
        }
        String queryParameter = uri.getQueryParameter(AdTrackerConstants.REFERRER);
        if (TextUtils.isEmpty(queryParameter)) {
            return;
        }
        String valueOf = String.valueOf(queryParameter);
        Uri parse = Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?"));
        String queryParameter2 = parse.getQueryParameter("utm_id");
        if (queryParameter2 != null) {
            this.zzact.put("&ci", queryParameter2);
        }
        String queryParameter3 = parse.getQueryParameter("anid");
        if (queryParameter3 != null) {
            this.zzact.put("&anid", queryParameter3);
        }
        String queryParameter4 = parse.getQueryParameter("utm_campaign");
        if (queryParameter4 != null) {
            this.zzact.put("&cn", queryParameter4);
        }
        String queryParameter5 = parse.getQueryParameter("utm_content");
        if (queryParameter5 != null) {
            this.zzact.put("&cc", queryParameter5);
        }
        String queryParameter6 = parse.getQueryParameter("utm_medium");
        if (queryParameter6 != null) {
            this.zzact.put("&cm", queryParameter6);
        }
        String queryParameter7 = parse.getQueryParameter("utm_source");
        if (queryParameter7 != null) {
            this.zzact.put("&cs", queryParameter7);
        }
        String queryParameter8 = parse.getQueryParameter("utm_term");
        if (queryParameter8 != null) {
            this.zzact.put("&ck", queryParameter8);
        }
        String queryParameter9 = parse.getQueryParameter("dclid");
        if (queryParameter9 != null) {
            this.zzact.put("&dclid", queryParameter9);
        }
        String queryParameter10 = parse.getQueryParameter("gclid");
        if (queryParameter10 != null) {
            this.zzact.put("&gclid", queryParameter10);
        }
        String queryParameter11 = parse.getQueryParameter(a.b.ACLID);
        if (queryParameter11 == null) {
            return;
        }
        this.zzact.put("&aclid", queryParameter11);
    }

    public void setClientId(String str) {
        set("&cid", str);
    }

    public void setEncoding(String str) {
        set("&de", str);
    }

    public void setHostname(String str) {
        set("&dh", str);
    }

    public void setLanguage(String str) {
        set("&ul", str);
    }

    public void setLocation(String str) {
        set("&dl", str);
    }

    public void setPage(String str) {
        set("&dp", str);
    }

    public void setReferrer(String str) {
        set("&dr", str);
    }

    public void setSampleRate(double d) {
        set("&sf", Double.toString(d));
    }

    public void setScreenColors(String str) {
        set("&sd", str);
    }

    public void setScreenName(String str) {
        set("&cd", str);
    }

    public void setScreenResolution(int i, int i2) {
        if (i >= 0 || i2 >= 0) {
            set("&sr", new StringBuilder(23).append(i).append(JSInterface.JSON_X).append(i2).toString());
        } else {
            zzbS("Invalid width or height. The values should be non-negative.");
        }
    }

    public void setSessionTimeout(long j) {
        this.zzacv.setSessionTimeout(1000 * j);
    }

    public void setTitle(String str) {
        set("&dt", str);
    }

    public void setUseSecure(boolean z) {
        set("useSecure", zztm.zzX(z));
    }

    public void setViewportSize(String str) {
        set("&vp", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zztl zztlVar) {
        zzbP("Loading Tracker config values");
        this.zzacx = zztlVar;
        if (this.zzacx.zzqs()) {
            String trackingId = this.zzacx.getTrackingId();
            set("&tid", trackingId);
            zza("trackingId loaded", trackingId);
        }
        if (this.zzacx.zzqt()) {
            String d = Double.toString(this.zzacx.zzqu());
            set("&sf", d);
            zza("Sample frequency loaded", d);
        }
        if (this.zzacx.zzqv()) {
            int sessionTimeout = this.zzacx.getSessionTimeout();
            setSessionTimeout(sessionTimeout);
            zza("Session timeout loaded", Integer.valueOf(sessionTimeout));
        }
        if (this.zzacx.zzqw()) {
            boolean zzqx = this.zzacx.zzqx();
            enableAutoActivityTracking(zzqx);
            zza("Auto activity tracking loaded", Boolean.valueOf(zzqx));
        }
        if (this.zzacx.zzqy()) {
            boolean zzqz = this.zzacx.zzqz();
            if (zzqz) {
                set("&aip", "1");
            }
            zza("Anonymize ip loaded", Boolean.valueOf(zzqz));
        }
        enableExceptionReporting(this.zzacx.zzqA());
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
        this.zzacv.initialize();
        String zzmY = zzmB().zzmY();
        if (zzmY != null) {
            set("&an", zzmY);
        }
        String zzmZ = zzmB().zzmZ();
        if (zzmZ != null) {
            set("&av", zzmZ);
        }
    }

    boolean zzmU() {
        return this.zzacs;
    }
}
