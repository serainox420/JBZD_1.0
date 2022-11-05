package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.util.zzt;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
/* loaded from: classes2.dex */
public class zzc {
    static String zzbhQ = null;
    static boolean zzbhR = false;
    static int zzbhS = 0;
    static int zzbhT = 0;
    static int zzbhU = 0;
    static BroadcastReceiver zzbhV = null;
    PendingIntent zzbgG;
    Messenger zzbgK;
    Map<String, Object> zzbhW = new HashMap();
    Messenger zzbhX;
    MessengerCompat zzbhY;
    long zzbhZ;
    long zzbia;
    int zzbib;
    int zzbic;
    long zzbid;
    Context zzqn;

    public zzc(Context context) {
        this.zzqn = context;
    }

    private void zzG(Object obj) {
        synchronized (getClass()) {
            for (String str : this.zzbhW.keySet()) {
                Object obj2 = this.zzbhW.get(str);
                this.zzbhW.put(str, obj);
                zzg(obj2, obj);
            }
        }
    }

    public static synchronized String zzHn() {
        String num;
        synchronized (zzc.class) {
            int i = zzbhU;
            zzbhU = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    static String zza(KeyPair keyPair, String... strArr) {
        try {
            byte[] bytes = TextUtils.join("\n", strArr).getBytes("UTF-8");
            try {
                PrivateKey privateKey = keyPair.getPrivate();
                Signature signature = Signature.getInstance(privateKey instanceof RSAPrivateKey ? "SHA256withRSA" : "SHA256withECDSA");
                signature.initSign(privateKey);
                signature.update(bytes);
                return InstanceID.zzv(signature.sign());
            } catch (GeneralSecurityException e) {
                Log.e("InstanceID/Rpc", "Unable to sign registration request", e);
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            Log.e("InstanceID/Rpc", "Unable to encode string", e2);
            return null;
        }
    }

    private static boolean zza(PackageManager packageManager) {
        for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0)) {
            if (zza(packageManager, resolveInfo.serviceInfo.packageName, "com.google.android.c2dm.intent.REGISTER")) {
                zzbhR = false;
                return true;
            }
        }
        return false;
    }

    private static boolean zza(PackageManager packageManager, String str, String str2) {
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", str) == 0) {
            return zzb(packageManager, str);
        }
        Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(str).length() + 56 + String.valueOf(str2).length()).append("Possible malicious package ").append(str).append(" declares ").append(str2).append(" without permission").toString());
        return false;
    }

    private Intent zzb(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent intent;
        ConditionVariable conditionVariable = new ConditionVariable();
        String zzHn = zzHn();
        synchronized (getClass()) {
            this.zzbhW.put(zzHn, conditionVariable);
        }
        zza(bundle, keyPair, zzHn);
        conditionVariable.block(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        synchronized (getClass()) {
            Object remove = this.zzbhW.remove(zzHn);
            if (!(remove instanceof Intent)) {
                if (remove instanceof String) {
                    throw new IOException((String) remove);
                }
                String valueOf = String.valueOf(remove);
                Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 12).append("No response ").append(valueOf).toString());
                throw new IOException(InstanceID.ERROR_TIMEOUT);
            }
            intent = (Intent) remove;
        }
        return intent;
    }

    private static boolean zzb(PackageManager packageManager) {
        for (ResolveInfo resolveInfo : packageManager.queryBroadcastReceivers(new Intent("com.google.iid.TOKEN_REQUEST"), 0)) {
            if (zza(packageManager, resolveInfo.activityInfo.packageName, "com.google.iid.TOKEN_REQUEST")) {
                zzbhR = true;
                return true;
            }
        }
        return false;
    }

    private static boolean zzb(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            zzbhQ = applicationInfo.packageName;
            zzbhT = applicationInfo.uid;
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static String zzbA(Context context) {
        if (zzbhQ != null) {
            return zzbhQ;
        }
        zzbhS = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        if (zzt.zzzq()) {
            if (zzb(packageManager) || zza(packageManager)) {
                return zzbhQ;
            }
        } else if (zza(packageManager) || zzb(packageManager)) {
            return zzbhQ;
        }
        Log.w("InstanceID/Rpc", "Failed to resolve IID implementation package, falling back");
        if (zzb(packageManager, "com.google.android.gms")) {
            zzbhR = zzt.zzzq();
            return zzbhQ;
        } else if (Build.VERSION.SDK_INT >= 21 || !zzb(packageManager, "com.google.android.gsf")) {
            Log.w("InstanceID/Rpc", "Google Play services is missing, unable to get tokens");
            return null;
        } else {
            zzbhR = false;
            return zzbhQ;
        }
    }

    private static int zzbB(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(zzbA(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    public static boolean zzbz(Context context) {
        if (zzbhQ != null) {
            zzbA(context);
        }
        return zzbhR;
    }

    private void zzeF(String str) {
        if (!"com.google.android.gsf".equals(zzbhQ)) {
            return;
        }
        this.zzbib++;
        if (this.zzbib < 3) {
            return;
        }
        if (this.zzbib == 3) {
            this.zzbic = new Random().nextInt(1000) + 1000;
        }
        this.zzbic *= 2;
        this.zzbid = SystemClock.elapsedRealtime() + this.zzbic;
        Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(str).length() + 31).append("Backoff due to ").append(str).append(" for ").append(this.zzbic).toString());
    }

    private void zzg(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message obtain = Message.obtain();
            obtain.obj = obj2;
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e);
                Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 24).append("Failed to send response ").append(valueOf).toString());
            }
        }
    }

    private void zzi(String str, Object obj) {
        synchronized (getClass()) {
            Object obj2 = this.zzbhW.get(str);
            this.zzbhW.put(str, obj);
            zzg(obj2, obj);
        }
    }

    void zzHl() {
        if (this.zzbgK != null) {
            return;
        }
        zzbA(this.zzqn);
        this.zzbgK = new Messenger(new Handler(Looper.getMainLooper()) { // from class: com.google.android.gms.iid.zzc.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                zzc.this.zze(message);
            }
        });
    }

    void zzHm() {
        synchronized (this) {
            if (zzbhV == null) {
                zzbhV = new BroadcastReceiver() { // from class: com.google.android.gms.iid.zzc.2
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        if (Log.isLoggable("InstanceID/Rpc", 3)) {
                            Log.d("InstanceID/Rpc", "Received GSF callback via dynamic receiver");
                        }
                        zzc.this.zzs(intent);
                    }
                };
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Registered GSF callback receiver");
                }
                IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
                intentFilter.addCategory(this.zzqn.getPackageName());
                this.zzqn.registerReceiver(zzbhV, intentFilter, "com.google.android.c2dm.permission.SEND", null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent zza(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent zzb = zzb(bundle, keyPair);
        if (zzb == null || !zzb.hasExtra("google.messenger")) {
            return zzb;
        }
        Intent zzb2 = zzb(bundle, keyPair);
        if (zzb2 != null && zzb2.hasExtra("google.messenger")) {
            return null;
        }
        return zzb2;
    }

    void zza(Bundle bundle, KeyPair keyPair, String str) throws IOException {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzbid != 0 && elapsedRealtime <= this.zzbid) {
            Log.w("InstanceID/Rpc", new StringBuilder(78).append("Backoff mode, next request attempt: ").append(this.zzbid - elapsedRealtime).append(" interval: ").append(this.zzbic).toString());
            throw new IOException(InstanceID.ERROR_BACKOFF);
        }
        zzHl();
        if (zzbhQ == null) {
            throw new IOException(InstanceID.ERROR_MISSING_INSTANCEID_SERVICE);
        }
        this.zzbhZ = SystemClock.elapsedRealtime();
        Intent intent = new Intent(zzbhR ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(zzbhQ);
        bundle.putString("gmsv", Integer.toString(zzbB(this.zzqn)));
        bundle.putString(PubMaticConstants.OSV_PARAM, Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", Integer.toString(InstanceID.zzbw(this.zzqn)));
        bundle.putString("app_ver_name", InstanceID.zzbx(this.zzqn));
        bundle.putString("cliv", "iid-10298000");
        bundle.putString(AdDatabaseHelper.COLUMN_APPID, InstanceID.zza(keyPair));
        String zzv = InstanceID.zzv(keyPair.getPublic().getEncoded());
        bundle.putString("pub2", zzv);
        bundle.putString("sig", zza(keyPair, this.zzqn.getPackageName(), zzv));
        intent.putExtras(bundle);
        zzp(intent);
        zzb(intent, str);
    }

    protected void zzb(Intent intent, String str) {
        this.zzbhZ = SystemClock.elapsedRealtime();
        intent.putExtra("kid", new StringBuilder(String.valueOf(str).length() + 5).append("|ID|").append(str).append("|").toString());
        intent.putExtra("X-kid", new StringBuilder(String.valueOf(str).length() + 5).append("|ID|").append(str).append("|").toString());
        boolean equals = "com.google.android.gsf".equals(zzbhQ);
        String stringExtra = intent.getStringExtra("useGsf");
        if (stringExtra != null) {
            equals = "1".equals(stringExtra);
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.d("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 8).append("Sending ").append(valueOf).toString());
        }
        if (this.zzbhX != null) {
            intent.putExtra("google.messenger", this.zzbgK);
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                this.zzbhX.send(obtain);
                return;
            } catch (RemoteException e) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        if (equals) {
            zzHm();
            this.zzqn.sendBroadcast(intent);
            return;
        }
        intent.putExtra("google.messenger", this.zzbgK);
        intent.putExtra("messenger2", "1");
        if (this.zzbhY != null) {
            Message obtain2 = Message.obtain();
            obtain2.obj = intent;
            try {
                this.zzbhY.send(obtain2);
                return;
            } catch (RemoteException e2) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        if (zzbhR) {
            this.zzqn.sendBroadcast(intent);
        } else {
            this.zzqn.startService(intent);
        }
    }

    public void zze(Message message) {
        if (message == null) {
            return;
        }
        if (!(message.obj instanceof Intent)) {
            Log.w("InstanceID/Rpc", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof MessengerCompat) {
                this.zzbhY = (MessengerCompat) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.zzbhX = (Messenger) parcelableExtra;
            }
        }
        zzs((Intent) message.obj);
    }

    synchronized void zzp(Intent intent) {
        if (this.zzbgG == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.zzbgG = PendingIntent.getBroadcast(this.zzqn, 0, intent2, 0);
        }
        intent.putExtra("app", this.zzbgG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzq(Intent intent) throws IOException {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        intent.getLongExtra("Retry-After", 0L);
        if (stringExtra != null) {
            return stringExtra;
        }
        String stringExtra2 = intent.getStringExtra("error");
        if (stringExtra2 != null) {
            throw new IOException(stringExtra2);
        }
        String valueOf = String.valueOf(intent.getExtras());
        Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 29).append("Unexpected response from GCM ").append(valueOf).toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    void zzr(Intent intent) {
        String str;
        String str2;
        String stringExtra = intent.getStringExtra("error");
        if (stringExtra == null) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 49).append("Unexpected response, no error or registration id ").append(valueOf).toString());
            return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf2 = String.valueOf(stringExtra);
            Log.d("InstanceID/Rpc", valueOf2.length() != 0 ? "Received InstanceID error ".concat(valueOf2) : new String("Received InstanceID error "));
        }
        if (stringExtra.startsWith("|")) {
            String[] split = stringExtra.split("\\|");
            if (!"ID".equals(split[1])) {
                String valueOf3 = String.valueOf(stringExtra);
                Log.w("InstanceID/Rpc", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
            }
            if (split.length > 2) {
                str = split[2];
                str2 = split[3];
                if (str2.startsWith(":")) {
                    str2 = str2.substring(1);
                }
            } else {
                str2 = "UNKNOWN";
                str = null;
            }
            intent.putExtra("error", str2);
        } else {
            str = null;
            str2 = stringExtra;
        }
        if (str == null) {
            zzG(str2);
        } else {
            zzi(str, str2);
        }
        long longExtra = intent.getLongExtra("Retry-After", 0L);
        if (longExtra > 0) {
            this.zzbia = SystemClock.elapsedRealtime();
            this.zzbic = ((int) longExtra) * 1000;
            this.zzbid = SystemClock.elapsedRealtime() + this.zzbic;
            Log.w("InstanceID/Rpc", new StringBuilder(52).append("Explicit request from server to backoff: ").append(this.zzbic).toString());
        } else if (!"SERVICE_NOT_AVAILABLE".equals(str2) && !"AUTHENTICATION_FAILED".equals(str2)) {
        } else {
            zzeF(str2);
        }
    }

    public void zzs(Intent intent) {
        if (intent == null) {
            if (!Log.isLoggable("InstanceID/Rpc", 3)) {
                return;
            }
            Log.d("InstanceID/Rpc", "Unexpected response: null");
            return;
        }
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action) && !"com.google.android.gms.iid.InstanceID".equals(action)) {
            if (!Log.isLoggable("InstanceID/Rpc", 3)) {
                return;
            }
            String valueOf = String.valueOf(intent.getAction());
            Log.d("InstanceID/Rpc", valueOf.length() != 0 ? "Unexpected response ".concat(valueOf) : new String("Unexpected response "));
            return;
        }
        String stringExtra = intent.getStringExtra("registration_id");
        String stringExtra2 = stringExtra == null ? intent.getStringExtra("unregistered") : stringExtra;
        if (stringExtra2 == null) {
            zzr(intent);
            return;
        }
        this.zzbhZ = SystemClock.elapsedRealtime();
        this.zzbid = 0L;
        this.zzbib = 0;
        this.zzbic = 0;
        String str = null;
        if (stringExtra2.startsWith("|")) {
            String[] split = stringExtra2.split("\\|");
            if (!"ID".equals(split[1])) {
                String valueOf2 = String.valueOf(stringExtra2);
                Log.w("InstanceID/Rpc", valueOf2.length() != 0 ? "Unexpected structured response ".concat(valueOf2) : new String("Unexpected structured response "));
            }
            String str2 = split[2];
            if (split.length > 4) {
                if ("SYNC".equals(split[3])) {
                    InstanceIDListenerService.zzby(this.zzqn);
                } else if ("RST".equals(split[3])) {
                    InstanceIDListenerService.zza(this.zzqn, InstanceID.getInstance(this.zzqn).zzHj());
                    intent.removeExtra("registration_id");
                    zzi(str2, intent);
                    return;
                }
            }
            String str3 = split[split.length - 1];
            if (str3.startsWith(":")) {
                str3 = str3.substring(1);
            }
            intent.putExtra("registration_id", str3);
            str = str2;
        }
        if (str == null) {
            zzG(intent);
        } else {
            zzi(str, intent);
        }
    }
}
