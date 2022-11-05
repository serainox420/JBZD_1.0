package com.google.firebase.iid;

import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.firebase.iid.g;
import java.io.IOException;
/* loaded from: classes2.dex */
public class FirebaseInstanceIdService extends zzb {
    private static BroadcastReceiver zzcln;
    static final Object zzclo = new Object();
    static boolean zzclp = false;
    private boolean zzclq = false;

    private String zzG(Intent intent) {
        String stringExtra = intent.getStringExtra("subtype");
        return stringExtra == null ? "" : stringExtra;
    }

    private int zza(Intent intent, boolean z) {
        int intExtra = intent == null ? 10 : intent.getIntExtra("next_retry_delay_in_seconds", 0);
        if (intExtra >= 10 || z) {
            if (intExtra < 10) {
                return 10;
            }
            if (intExtra <= 28800) {
                return intExtra;
            }
            return 28800;
        }
        return 30;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Context context, FirebaseInstanceId firebaseInstanceId) {
        synchronized (zzclo) {
            if (zzclp) {
                return;
            }
            g.a e = firebaseInstanceId.e();
            if (e != null && !e.b(c.e) && firebaseInstanceId.g().a() == null) {
                return;
            }
            zzcs(context);
        }
    }

    private void zza(Intent intent, boolean z, boolean z2) {
        synchronized (zzclo) {
            zzclp = false;
        }
        if (e.a(this) == null) {
            return;
        }
        FirebaseInstanceId a2 = FirebaseInstanceId.a();
        g.a e = a2.e();
        if (e == null || e.b(c.e)) {
            try {
                String f = a2.f();
                if (f == null) {
                    zzd(intent, "returned token is null");
                    return;
                }
                if (this.zzclq) {
                    Log.d("FirebaseInstanceId", "get master token succeeded");
                }
                zza(this, a2);
                if (!z2 && e != null && (e == null || f.equals(e.f3591a))) {
                    return;
                }
                onTokenRefresh();
                return;
            } catch (IOException e2) {
                zzd(intent, e2.getMessage());
                return;
            } catch (SecurityException e3) {
                Log.e("FirebaseInstanceId", "Unable to get master token", e3);
                return;
            }
        }
        d g = a2.g();
        for (String a3 = g.a(); a3 != null; a3 = g.a()) {
            String[] split = a3.split("!");
            if (split.length == 2) {
                String str = split[0];
                String str2 = split[1];
                char c = 65535;
                try {
                    switch (str.hashCode()) {
                        case 83:
                            if (str.equals("S")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 85:
                            if (str.equals("U")) {
                                c = 1;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            FirebaseInstanceId.a().b(str2);
                            if (this.zzclq) {
                                Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                                break;
                            } else {
                                continue;
                            }
                        case 1:
                            FirebaseInstanceId.a().c(str2);
                            if (this.zzclq) {
                                Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                                break;
                            } else {
                                continue;
                            }
                    }
                } catch (IOException e4) {
                    zzd(intent, e4.getMessage());
                    return;
                }
            }
            g.b(a3);
        }
        Log.d("FirebaseInstanceId", "topic sync succeeded");
    }

    private void zza(e eVar, Bundle bundle) {
        String a2 = e.a(this);
        if (a2 == null) {
            Log.w("FirebaseInstanceId", "Unable to respond to ping due to missing target package");
            return;
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        intent.setPackage(a2);
        intent.putExtras(bundle);
        eVar.a(intent);
        intent.putExtra("google.to", "google.com/iid");
        intent.putExtra("google.message_id", e.c());
        sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzcs(Context context) {
        if (e.a(context) == null) {
            return;
        }
        synchronized (zzclo) {
            if (!zzclp) {
                f.a().a(context, zzqF(0));
                zzclp = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzct(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private void zzd(Intent intent, String str) {
        boolean zzct = zzct(this);
        final int zza = zza(intent, zzct);
        Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(str).length() + 47).append("background sync failed: ").append(str).append(", retry in ").append(zza).append("s").toString());
        synchronized (zzclo) {
            zzqG(zza);
            zzclp = true;
        }
        if (!zzct) {
            if (this.zzclq) {
                Log.d("FirebaseInstanceId", "device not connected. Connectivity change received registered");
            }
            if (zzcln == null) {
                zzcln = new BroadcastReceiver() { // from class: com.google.firebase.iid.FirebaseInstanceIdService.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent2) {
                        if (FirebaseInstanceIdService.zzct(context)) {
                            if (FirebaseInstanceIdService.this.zzclq) {
                                Log.d("FirebaseInstanceId", "connectivity changed. starting background sync.");
                            }
                            FirebaseInstanceIdService.this.getApplicationContext().unregisterReceiver(this);
                            f.a().a(context, FirebaseInstanceIdService.zzqF(zza));
                        }
                    }
                };
            }
            getApplicationContext().registerReceiver(zzcln, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    private c zzjw(String str) {
        if (str == null) {
            return c.a(this, null);
        }
        Bundle bundle = new Bundle();
        bundle.putString("subtype", str);
        return c.a(this, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent zzqF(int i) {
        Intent intent = new Intent("ACTION_TOKEN_REFRESH_RETRY");
        intent.putExtra("next_retry_delay_in_seconds", i);
        return intent;
    }

    private void zzqG(int i) {
        ((AlarmManager) getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + (i * 1000), f.a(this, 0, zzqF(i * 2), 134217728));
    }

    @Override // com.google.firebase.iid.zzb
    public void handleIntent(Intent intent) {
        boolean z;
        String action = intent.getAction();
        if (action == null) {
            action = "";
        }
        switch (action.hashCode()) {
            case -1737547627:
                if (action.equals("ACTION_TOKEN_REFRESH_RETRY")) {
                    z = false;
                    break;
                }
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                zza(intent, false, false);
                return;
            default:
                zzF(intent);
                return;
        }
    }

    public void onTokenRefresh() {
    }

    @Override // com.google.firebase.iid.zzb
    protected Intent zzD(Intent intent) {
        return f.a().b();
    }

    @Override // com.google.firebase.iid.zzb
    public boolean zzE(Intent intent) {
        this.zzclq = Log.isLoggable("FirebaseInstanceId", 3);
        if (intent.getStringExtra("error") == null && intent.getStringExtra("registration_id") == null) {
            return false;
        }
        String zzG = zzG(intent);
        if (this.zzclq) {
            String valueOf = String.valueOf(zzG);
            Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Register result in service ".concat(valueOf) : new String("Register result in service "));
        }
        zzjw(zzG).d().d(intent);
        return true;
    }

    public void zzF(Intent intent) {
        String zzG = zzG(intent);
        c zzjw = zzjw(zzG);
        String stringExtra = intent.getStringExtra("CMD");
        if (this.zzclq) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(zzG).length() + 18 + String.valueOf(stringExtra).length() + String.valueOf(valueOf).length()).append("Service command ").append(zzG).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(stringExtra).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf).toString());
        }
        if (intent.getStringExtra("unregistered") != null) {
            g c = zzjw.c();
            if (zzG == null) {
                zzG = "";
            }
            c.c(zzG);
            zzjw.d().d(intent);
        } else if ("gcm.googleapis.com/refresh".equals(intent.getStringExtra("from"))) {
            zzjw.c().c(zzG);
            zza(intent, false, true);
        } else if ("RST".equals(stringExtra)) {
            zzjw.b();
            zza(intent, true, true);
        } else if ("RST_FULL".equals(stringExtra)) {
            if (zzjw.c().b()) {
                return;
            }
            zzjw.b();
            zzjw.c().c();
            zza(intent, true, true);
        } else if ("SYNC".equals(stringExtra)) {
            zzjw.c().c(zzG);
            zza(intent, false, true);
        } else if (!"PING".equals(stringExtra)) {
        } else {
            zza(zzjw.d(), intent.getExtras());
        }
    }
}
