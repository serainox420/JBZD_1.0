package com.google.firebase.iid;

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
import android.support.v4.f.k;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.iid.InstanceID;
import com.google.android.gms.iid.MessengerCompat;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.Random;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    static String f3585a = null;
    static boolean b = false;
    static int c = 0;
    static int d = 0;
    static int e = 0;
    static BroadcastReceiver f = null;
    Context g;
    Messenger h;
    Messenger i;
    MessengerCompat j;
    PendingIntent k;
    long l;
    long m;
    int n;
    int o;
    long p;
    private final k<String, b> q = new k<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final ConditionVariable f3588a;
        private Intent b;
        private String c;

        private a() {
            this.f3588a = new ConditionVariable();
        }

        public Intent a() throws IOException {
            if (!this.f3588a.block(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS)) {
                Log.w("InstanceID/Rpc", "No response");
                throw new IOException(InstanceID.ERROR_TIMEOUT);
            } else if (this.c == null) {
                return this.b;
            } else {
                throw new IOException(this.c);
            }
        }

        @Override // com.google.firebase.iid.e.b
        public void a(Intent intent) {
            this.b = intent;
            this.f3588a.open();
        }

        @Override // com.google.firebase.iid.e.b
        public void a(String str) {
            this.c = str;
            this.f3588a.open();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface b {
        void a(Intent intent);

        void a(String str);
    }

    public e(Context context) {
        this.g = context;
    }

    public static String a(Context context) {
        if (f3585a != null) {
            return f3585a;
        }
        c = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        if (zzt.zzzq()) {
            if (b(packageManager) || a(packageManager)) {
                return f3585a;
            }
        } else if (a(packageManager) || b(packageManager)) {
            return f3585a;
        }
        Log.w("InstanceID/Rpc", "Failed to resolve IID implementation package, falling back");
        if (a(packageManager, "com.google.android.gms")) {
            b = zzt.zzzq();
            return f3585a;
        } else if (Build.VERSION.SDK_INT >= 21 || !a(packageManager, "com.google.android.gsf")) {
            Log.w("InstanceID/Rpc", "Google Play services is missing, unable to get tokens");
            return null;
        } else {
            b = false;
            return f3585a;
        }
    }

    static String a(KeyPair keyPair, String... strArr) {
        try {
            byte[] bytes = TextUtils.join("\n", strArr).getBytes("UTF-8");
            try {
                PrivateKey privateKey = keyPair.getPrivate();
                Signature signature = Signature.getInstance(privateKey instanceof RSAPrivateKey ? "SHA256withRSA" : "SHA256withECDSA");
                signature.initSign(privateKey);
                signature.update(bytes);
                return FirebaseInstanceId.a(signature.sign());
            } catch (GeneralSecurityException e2) {
                Log.e("InstanceID/Rpc", "Unable to sign registration request", e2);
                return null;
            }
        } catch (UnsupportedEncodingException e3) {
            Log.e("InstanceID/Rpc", "Unable to encode string", e3);
            return null;
        }
    }

    private void a(String str) {
        if (!"com.google.android.gsf".equals(f3585a)) {
            return;
        }
        this.n++;
        if (this.n < 3) {
            return;
        }
        if (this.n == 3) {
            this.o = new Random().nextInt(1000) + 1000;
        }
        this.o *= 2;
        this.p = SystemClock.elapsedRealtime() + this.o;
        Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(str).length() + 31).append("Backoff due to ").append(str).append(" for ").append(this.o).toString());
    }

    private void a(String str, Intent intent) {
        synchronized (this.q) {
            b remove = this.q.remove(str);
            if (remove != null) {
                remove.a(intent);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("InstanceID/Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    private void a(String str, String str2) {
        synchronized (this.q) {
            if (str == null) {
                for (int i = 0; i < this.q.size(); i++) {
                    this.q.c(i).a(str2);
                }
                this.q.clear();
            } else {
                b remove = this.q.remove(str);
                if (remove == null) {
                    String valueOf = String.valueOf(str);
                    Log.w("InstanceID/Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                    return;
                }
                remove.a(str2);
            }
        }
    }

    private static boolean a(PackageManager packageManager) {
        for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0)) {
            if (a(packageManager, resolveInfo.serviceInfo.packageName, "com.google.android.c2dm.intent.REGISTER")) {
                b = false;
                return true;
            }
        }
        return false;
    }

    private static boolean a(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            f3585a = applicationInfo.packageName;
            d = applicationInfo.uid;
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    private static boolean a(PackageManager packageManager, String str, String str2) {
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", str) == 0) {
            return a(packageManager, str);
        }
        Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(str).length() + 56 + String.valueOf(str2).length()).append("Possible malicious package ").append(str).append(" declares ").append(str2).append(" without permission").toString());
        return false;
    }

    private Intent b(Bundle bundle, KeyPair keyPair) throws IOException {
        String c2 = c();
        a aVar = new a();
        synchronized (this.q) {
            this.q.put(c2, aVar);
        }
        a(bundle, keyPair, c2);
        try {
            Intent a2 = aVar.a();
            synchronized (this.q) {
                this.q.remove(c2);
            }
            return a2;
        } catch (Throwable th) {
            synchronized (this.q) {
                this.q.remove(c2);
                throw th;
            }
        }
    }

    private static boolean b(PackageManager packageManager) {
        for (ResolveInfo resolveInfo : packageManager.queryBroadcastReceivers(new Intent("com.google.iid.TOKEN_REQUEST"), 0)) {
            if (a(packageManager, resolveInfo.activityInfo.packageName, "com.google.iid.TOKEN_REQUEST")) {
                b = true;
                return true;
            }
        }
        return false;
    }

    public static synchronized String c() {
        String num;
        synchronized (e.class) {
            int i = e;
            e = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent a(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent b2 = b(bundle, keyPair);
        if (b2 == null || !b2.hasExtra("google.messenger")) {
            return b2;
        }
        Intent b3 = b(bundle, keyPair);
        if (b3 != null && b3.hasExtra("google.messenger")) {
            return null;
        }
        return b3;
    }

    void a() {
        if (this.h != null) {
            return;
        }
        a(this.g);
        this.h = new Messenger(new Handler(Looper.getMainLooper()) { // from class: com.google.firebase.iid.e.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                e.this.a(message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(Intent intent) {
        if (this.k == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.k = PendingIntent.getBroadcast(this.g, 0, intent2, 0);
        }
        intent.putExtra("app", this.k);
    }

    protected void a(Intent intent, String str) {
        this.l = SystemClock.elapsedRealtime();
        intent.putExtra("kid", new StringBuilder(String.valueOf(str).length() + 5).append("|ID|").append(str).append("|").toString());
        intent.putExtra("X-kid", new StringBuilder(String.valueOf(str).length() + 5).append("|ID|").append(str).append("|").toString());
        boolean equals = "com.google.android.gsf".equals(f3585a);
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.d("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 8).append("Sending ").append(valueOf).toString());
        }
        if (equals) {
            b();
            this.g.startService(intent);
            return;
        }
        intent.putExtra("google.messenger", this.h);
        if (this.i != null || this.j != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                if (this.i != null) {
                    this.i.send(obtain);
                } else {
                    this.j.send(obtain);
                }
                return;
            } catch (RemoteException e2) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        if (b) {
            this.g.sendBroadcast(intent);
        } else {
            this.g.startService(intent);
        }
    }

    public void a(Bundle bundle, KeyPair keyPair, String str) throws IOException {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.p != 0 && elapsedRealtime <= this.p) {
            Log.w("InstanceID/Rpc", new StringBuilder(78).append("Backoff mode, next request attempt: ").append(this.p - elapsedRealtime).append(" interval: ").append(this.o).toString());
            throw new IOException(InstanceID.ERROR_BACKOFF);
        }
        a();
        if (f3585a == null) {
            throw new IOException(InstanceID.ERROR_MISSING_INSTANCEID_SERVICE);
        }
        this.l = SystemClock.elapsedRealtime();
        Intent intent = new Intent(b ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(f3585a);
        bundle.putString("gmsv", Integer.toString(FirebaseInstanceId.a(this.g, a(this.g))));
        bundle.putString(PubMaticConstants.OSV_PARAM, Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", Integer.toString(FirebaseInstanceId.a(this.g)));
        bundle.putString("app_ver_name", FirebaseInstanceId.b(this.g));
        bundle.putString("cliv", "fiid-10298000");
        bundle.putString(AdDatabaseHelper.COLUMN_APPID, FirebaseInstanceId.a(keyPair));
        String a2 = FirebaseInstanceId.a(keyPair.getPublic().getEncoded());
        bundle.putString("pub2", a2);
        bundle.putString("sig", a(keyPair, this.g.getPackageName(), a2));
        intent.putExtras(bundle);
        a(intent);
        a(intent, str);
    }

    void a(Message message) {
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
                this.j = (MessengerCompat) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.i = (Messenger) parcelableExtra;
            }
        }
        d((Intent) message.obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b(Intent intent) throws IOException {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
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

    void b() {
        synchronized (this) {
            if (f == null) {
                f = new BroadcastReceiver() { // from class: com.google.firebase.iid.e.2
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        if (Log.isLoggable("InstanceID/Rpc", 3)) {
                            String valueOf = String.valueOf(intent.getExtras());
                            Log.d("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 44).append("Received GSF callback via dynamic receiver: ").append(valueOf).toString());
                        }
                        e.this.d(intent);
                    }
                };
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Registered GSF callback receiver");
                }
                IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
                intentFilter.addCategory(this.g.getPackageName());
                this.g.registerReceiver(f, intentFilter, "com.google.android.c2dm.permission.SEND", null);
            }
        }
    }

    void c(Intent intent) {
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
        a(str, str2);
        long longExtra = intent.getLongExtra("Retry-After", 0L);
        if (longExtra > 0) {
            this.m = SystemClock.elapsedRealtime();
            this.o = ((int) longExtra) * 1000;
            this.p = SystemClock.elapsedRealtime() + this.o;
            Log.w("InstanceID/Rpc", new StringBuilder(52).append("Explicit request from server to backoff: ").append(this.o).toString());
        } else if (!"SERVICE_NOT_AVAILABLE".equals(str2) && !"AUTHENTICATION_FAILED".equals(str2)) {
        } else {
            a(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(Intent intent) {
        String str;
        if (intent == null) {
            if (!Log.isLoggable("InstanceID/Rpc", 3)) {
                return;
            }
            Log.d("InstanceID/Rpc", "Unexpected response: null");
        } else if (!"com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            if (!Log.isLoggable("InstanceID/Rpc", 3)) {
                return;
            }
            String valueOf = String.valueOf(intent.getAction());
            Log.d("InstanceID/Rpc", valueOf.length() != 0 ? "Unexpected response ".concat(valueOf) : new String("Unexpected response "));
        } else {
            String stringExtra = intent.getStringExtra("registration_id");
            if (stringExtra == null) {
                stringExtra = intent.getStringExtra("unregistered");
            }
            if (stringExtra == null) {
                c(intent);
                return;
            }
            this.l = SystemClock.elapsedRealtime();
            this.p = 0L;
            this.n = 0;
            this.o = 0;
            if (stringExtra.startsWith("|")) {
                String[] split = stringExtra.split("\\|");
                if (!"ID".equals(split[1])) {
                    String valueOf2 = String.valueOf(stringExtra);
                    Log.w("InstanceID/Rpc", valueOf2.length() != 0 ? "Unexpected structured response ".concat(valueOf2) : new String("Unexpected structured response "));
                }
                String str2 = split[2];
                if (split.length > 4) {
                    if ("SYNC".equals(split[3])) {
                        FirebaseInstanceId.c(this.g);
                    } else if ("RST".equals(split[3])) {
                        FirebaseInstanceId.a(this.g, c.a(this.g, null).c());
                        intent.removeExtra("registration_id");
                        a(str2, intent);
                        return;
                    }
                }
                String str3 = split[split.length - 1];
                if (str3.startsWith(":")) {
                    str3 = str3.substring(1);
                }
                intent.putExtra("registration_id", str3);
                str = str2;
            } else {
                str = null;
            }
            if (str != null) {
                a(str, intent);
            } else if (!Log.isLoggable("InstanceID/Rpc", 3)) {
            } else {
                Log.d("InstanceID/Rpc", "Ignoring response without a request ID");
            }
        }
    }
}
