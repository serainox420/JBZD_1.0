package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.support.v4.f.k;
import android.util.Log;
import com.google.android.gms.wallet.WalletConstants;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes2.dex */
public class f {
    private static f c;
    private final k<String, String> d = new k<>();
    private Boolean e = null;

    /* renamed from: a  reason: collision with root package name */
    final Queue<Intent> f3589a = new LinkedList();
    final Queue<Intent> b = new LinkedList();

    private f() {
    }

    public static PendingIntent a(Context context, int i, Intent intent, int i2) {
        return a(context, i, "com.google.firebase.INSTANCE_ID_EVENT", intent, i2);
    }

    private static PendingIntent a(Context context, int i, String str, Intent intent, int i2) {
        Intent intent2 = new Intent(context, FirebaseInstanceIdInternalReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return PendingIntent.getBroadcast(context, i, intent2, i2);
    }

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (c == null) {
                c = new f();
            }
            fVar = c;
        }
        return fVar;
    }

    private boolean a(Context context) {
        if (this.e == null) {
            this.e = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        return this.e.booleanValue();
    }

    private int b(Context context, Intent intent) {
        ComponentName startService;
        c(context, intent);
        try {
            if (a(context)) {
                startService = WakefulBroadcastReceiver.startWakefulService(context, intent);
            } else {
                startService = context.startService(intent);
                Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
            }
            if (startService != null) {
                return -1;
            }
            Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
            return WalletConstants.ERROR_CODE_INVALID_PARAMETERS;
        } catch (SecurityException e) {
            Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", e);
            return 401;
        }
    }

    public static PendingIntent b(Context context, int i, Intent intent, int i2) {
        return a(context, i, "com.google.firebase.MESSAGING_EVENT", intent, i2);
    }

    private void c(Context context, Intent intent) {
        String str;
        synchronized (this.d) {
            str = this.d.get(intent.getAction());
        }
        if (str == null) {
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveService == null || resolveService.serviceInfo == null) {
                Log.e("FirebaseInstanceId", "Failed to resolve target intent service, skipping classname enforcement");
                return;
            }
            ServiceInfo serviceInfo = resolveService.serviceInfo;
            if (!context.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
                String valueOf = String.valueOf(serviceInfo.packageName);
                String valueOf2 = String.valueOf(serviceInfo.name);
                Log.e("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 94 + String.valueOf(valueOf2).length()).append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ").append(valueOf).append("/").append(valueOf2).toString());
                return;
            }
            str = serviceInfo.name;
            if (str.startsWith(".")) {
                String valueOf3 = String.valueOf(context.getPackageName());
                String valueOf4 = String.valueOf(str);
                str = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
            }
            synchronized (this.d) {
                this.d.put(intent.getAction(), str);
            }
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf5 = String.valueOf(str);
            Log.d("FirebaseInstanceId", valueOf5.length() != 0 ? "Restricting intent to a specific service: ".concat(valueOf5) : new String("Restricting intent to a specific service: "));
        }
        intent.setClassName(context.getPackageName(), str);
    }

    public int a(Context context, String str, Intent intent) {
        char c2 = 65535;
        switch (str.hashCode()) {
            case -842411455:
                if (str.equals("com.google.firebase.INSTANCE_ID_EVENT")) {
                    c2 = 0;
                    break;
                }
                break;
            case 41532704:
                if (str.equals("com.google.firebase.MESSAGING_EVENT")) {
                    c2 = 1;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.f3589a.offer(intent);
                break;
            case 1:
                this.b.offer(intent);
                break;
            default:
                String valueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Unknown service action: ".concat(valueOf) : new String("Unknown service action: "));
                return 500;
        }
        Intent intent2 = new Intent(str);
        intent2.setPackage(context.getPackageName());
        return b(context, intent2);
    }

    public void a(Context context, Intent intent) {
        a(context, "com.google.firebase.INSTANCE_ID_EVENT", intent);
    }

    public Intent b() {
        return this.f3589a.poll();
    }

    public Intent c() {
        return this.b.poll();
    }
}
