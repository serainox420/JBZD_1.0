package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.common.time.Clock;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.firebase.iid.b;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzaua extends zzauh {
    static final Pair<String, Long> zzbsX = new Pair<>("", 0L);
    private SharedPreferences zzagD;
    public final zzc zzbsY;
    public final zzb zzbsZ;
    public final zzb zzbta;
    public final zzb zzbtb;
    public final zzb zzbtc;
    public final zzb zzbtd;
    private String zzbte;
    private boolean zzbtf;
    private long zzbtg;
    private String zzbth;
    private long zzbti;
    private final Object zzbtj;
    private SecureRandom zzbtk;
    public final zzb zzbtl;
    public final zzb zzbtm;
    public final zza zzbtn;
    public final zzb zzbto;
    public final zzb zzbtp;
    public boolean zzbtq;

    /* loaded from: classes2.dex */
    public final class zza {
        private final String zzAX;
        private boolean zzayS;
        private final boolean zzbtr;
        private boolean zzbts;

        public zza(String str, boolean z) {
            com.google.android.gms.common.internal.zzac.zzdr(str);
            this.zzAX = str;
            this.zzbtr = z;
        }

        private void zzMp() {
            if (this.zzbts) {
                return;
            }
            this.zzbts = true;
            this.zzayS = zzaua.this.zzagD.getBoolean(this.zzAX, this.zzbtr);
        }

        public boolean get() {
            zzMp();
            return this.zzayS;
        }

        public void set(boolean z) {
            SharedPreferences.Editor edit = zzaua.this.zzagD.edit();
            edit.putBoolean(this.zzAX, z);
            edit.apply();
            this.zzayS = z;
        }
    }

    /* loaded from: classes2.dex */
    public final class zzb {
        private final String zzAX;
        private long zzadd;
        private boolean zzbts;
        private final long zzbtu;

        public zzb(String str, long j) {
            com.google.android.gms.common.internal.zzac.zzdr(str);
            this.zzAX = str;
            this.zzbtu = j;
        }

        private void zzMp() {
            if (this.zzbts) {
                return;
            }
            this.zzbts = true;
            this.zzadd = zzaua.this.zzagD.getLong(this.zzAX, this.zzbtu);
        }

        public long get() {
            zzMp();
            return this.zzadd;
        }

        public void set(long j) {
            SharedPreferences.Editor edit = zzaua.this.zzagD.edit();
            edit.putLong(this.zzAX, j);
            edit.apply();
            this.zzadd = j;
        }
    }

    /* loaded from: classes2.dex */
    public final class zzc {
        private final long zzagH;
        final String zzbtv;
        private final String zzbtw;
        private final String zzbtx;

        private zzc(String str, long j) {
            com.google.android.gms.common.internal.zzac.zzdr(str);
            com.google.android.gms.common.internal.zzac.zzax(j > 0);
            this.zzbtv = String.valueOf(str).concat(":start");
            this.zzbtw = String.valueOf(str).concat(":count");
            this.zzbtx = String.valueOf(str).concat(":value");
            this.zzagH = j;
        }

        private void zzqk() {
            zzaua.this.zzmR();
            long currentTimeMillis = zzaua.this.zznR().currentTimeMillis();
            SharedPreferences.Editor edit = zzaua.this.zzagD.edit();
            edit.remove(this.zzbtw);
            edit.remove(this.zzbtx);
            edit.putLong(this.zzbtv, currentTimeMillis);
            edit.apply();
        }

        private long zzql() {
            zzaua.this.zzmR();
            long zzqn = zzqn();
            if (zzqn == 0) {
                zzqk();
                return 0L;
            }
            return Math.abs(zzqn - zzaua.this.zznR().currentTimeMillis());
        }

        private long zzqn() {
            return zzaua.this.zzMj().getLong(this.zzbtv, 0L);
        }

        public void zzcc(String str) {
            zzk(str, 1L);
        }

        public void zzk(String str, long j) {
            zzaua.this.zzmR();
            if (zzqn() == 0) {
                zzqk();
            }
            if (str == null) {
                str = "";
            }
            long j2 = zzaua.this.zzagD.getLong(this.zzbtw, 0L);
            if (j2 <= 0) {
                SharedPreferences.Editor edit = zzaua.this.zzagD.edit();
                edit.putString(this.zzbtx, str);
                edit.putLong(this.zzbtw, j);
                edit.apply();
                return;
            }
            boolean z = (zzaua.this.zzMg().nextLong() & Clock.MAX_TIME) < (Clock.MAX_TIME / (j2 + j)) * j;
            SharedPreferences.Editor edit2 = zzaua.this.zzagD.edit();
            if (z) {
                edit2.putString(this.zzbtx, str);
            }
            edit2.putLong(this.zzbtw, j2 + j);
            edit2.apply();
        }

        public Pair<String, Long> zzqm() {
            zzaua.this.zzmR();
            long zzql = zzql();
            if (zzql < this.zzagH) {
                return null;
            }
            if (zzql > this.zzagH * 2) {
                zzqk();
                return null;
            }
            String string = zzaua.this.zzMj().getString(this.zzbtx, null);
            long j = zzaua.this.zzMj().getLong(this.zzbtw, 0L);
            zzqk();
            return (string == null || j <= 0) ? zzaua.zzbsX : new Pair<>(string, Long.valueOf(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaua(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbsY = new zzc("health_monitor", zzKn().zzpz());
        this.zzbsZ = new zzb("last_upload", 0L);
        this.zzbta = new zzb("last_upload_attempt", 0L);
        this.zzbtb = new zzb("backoff", 0L);
        this.zzbtc = new zzb("last_delete_stale", 0L);
        this.zzbtl = new zzb("time_before_start", NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        this.zzbtm = new zzb("session_timeout", 1800000L);
        this.zzbtn = new zza("start_new_session", true);
        this.zzbto = new zzb("last_pause_time", 0L);
        this.zzbtp = new zzb("time_active", 0L);
        this.zzbtd = new zzb("midnight_offset", 0L);
        this.zzbtj = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SecureRandom zzMg() {
        zzmR();
        if (this.zzbtk == null) {
            this.zzbtk = new SecureRandom();
        }
        return this.zzbtk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SharedPreferences zzMj() {
        zzmR();
        zzob();
        return this.zzagD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMeasurementEnabled(boolean z) {
        zzmR();
        zzKl().zzMe().zzj("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor edit = zzMj().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzKq() {
        zzmR();
        try {
            return b.a().b();
        } catch (IllegalStateException e) {
            zzKl().zzMa().log("Failed to retrieve Firebase Instance Id");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzMh() {
        byte[] bArr = new byte[16];
        zzMg().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzMi() {
        zzob();
        zzmR();
        long j = this.zzbtd.get();
        if (j == 0) {
            long nextInt = zzMg().nextInt(86400000) + 1;
            this.zzbtd.set(nextInt);
            return nextInt;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzMk() {
        zzmR();
        return zzMj().getString("gmp_app_id", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzMl() {
        String str;
        synchronized (this.zzbtj) {
            str = Math.abs(zznR().elapsedRealtime() - this.zzbti) < 1000 ? this.zzbth : null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Boolean zzMm() {
        zzmR();
        if (!zzMj().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(zzMj().getBoolean("use_service", false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzMn() {
        boolean z = true;
        zzmR();
        zzKl().zzMe().log("Clearing collection preferences.");
        boolean contains = zzMj().contains("measurement_enabled");
        if (contains) {
            z = zzaL(true);
        }
        SharedPreferences.Editor edit = zzMj().edit();
        edit.clear();
        edit.apply();
        if (contains) {
            setMeasurementEnabled(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String zzMo() {
        zzmR();
        String string = zzMj().getString("previous_os_version", null);
        String zzLS = zzKc().zzLS();
        if (!TextUtils.isEmpty(zzLS) && !zzLS.equals(string)) {
            SharedPreferences.Editor edit = zzMj().edit();
            edit.putString("previous_os_version", zzLS);
            edit.apply();
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzaK(boolean z) {
        zzmR();
        zzKl().zzMe().zzj("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor edit = zzMj().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzaL(boolean z) {
        zzmR();
        return zzMj().getBoolean("measurement_enabled", z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<String, Boolean> zzfG(String str) {
        zzmR();
        long elapsedRealtime = zznR().elapsedRealtime();
        if (this.zzbte == null || elapsedRealtime >= this.zzbtg) {
            this.zzbtg = elapsedRealtime + zzKn().zzfm(str);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(getContext());
                this.zzbte = advertisingIdInfo.getId();
                if (this.zzbte == null) {
                    this.zzbte = "";
                }
                this.zzbtf = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Throwable th) {
                zzKl().zzMd().zzj("Unable to get advertising id", th);
                this.zzbte = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.zzbte, Boolean.valueOf(this.zzbtf));
        }
        return new Pair<>(this.zzbte, Boolean.valueOf(this.zzbtf));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzfH(String str) {
        zzmR();
        String str2 = (String) zzfG(str).first;
        MessageDigest zzch = zzaut.zzch("MD5");
        if (zzch == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzch.digest(str2.getBytes())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzfI(String str) {
        zzmR();
        SharedPreferences.Editor edit = zzMj().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzfJ(String str) {
        synchronized (this.zzbtj) {
            this.zzbth = str;
            this.zzbti = zznR().elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
        this.zzagD = getContext().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzbtq = this.zzagD.getBoolean("has_been_opened", false);
        if (!this.zzbtq) {
            SharedPreferences.Editor edit = this.zzagD.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
    }
}
