package com.google.firebase.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.stats.zza;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public abstract class zzb extends Service {
    private Binder zzckU;
    private int zzckV;
    final ExecutorService zzbtI = Executors.newSingleThreadExecutor();
    private final Object zzrJ = new Object();
    private int zzckW = 0;

    /* loaded from: classes2.dex */
    public static class a extends Binder {

        /* renamed from: a  reason: collision with root package name */
        private final zzb f3593a;

        a(zzb zzbVar) {
            this.f3593a = zzbVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(BroadcastReceiver.PendingResult pendingResult) {
            if (pendingResult != null) {
                pendingResult.finish();
            }
        }

        public void a(final Intent intent, final BroadcastReceiver.PendingResult pendingResult) {
            if (Binder.getCallingUid() != Process.myUid()) {
                throw new SecurityException("Binding only allowed within app");
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "service received new intent via bind strategy");
            }
            if (this.f3593a.zzE(intent)) {
                b(pendingResult);
                return;
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "intent being queued for bg execution");
            }
            this.f3593a.zzbtI.execute(new Runnable() { // from class: com.google.firebase.iid.zzb.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        Log.d("EnhancedIntentService", "bg processing of the intent starting now");
                    }
                    a.this.f3593a.handleIntent(intent);
                    a.b(pendingResult);
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    public static class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private final Context f3595a;
        private final Intent b;
        private a d;
        private final Queue<Pair<Intent, BroadcastReceiver.PendingResult>> c = new LinkedList();
        private boolean e = false;

        public b(Context context, String str) {
            this.f3595a = context.getApplicationContext();
            this.b = new Intent(str).setPackage(this.f3595a.getPackageName());
        }

        private synchronized void a() {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "flush queue called");
            }
            while (!this.c.isEmpty()) {
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    Log.d("EnhancedIntentService", "found intent to be delivered");
                }
                if (this.d == null || !this.d.isBinderAlive()) {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        Log.d("EnhancedIntentService", new StringBuilder(39).append("binder is dead. start connection? ").append(!this.e).toString());
                    }
                    if (!this.e) {
                        this.e = true;
                        try {
                        } catch (SecurityException e) {
                            Log.e("EnhancedIntentService", "Exception while binding the service", e);
                        }
                        if (!zza.zzyJ().zza(this.f3595a, this.b, this, 65)) {
                            Log.e("EnhancedIntentService", "binding to the service failed");
                            while (!this.c.isEmpty()) {
                                ((BroadcastReceiver.PendingResult) this.c.poll().second).finish();
                            }
                        }
                    }
                } else {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        Log.d("EnhancedIntentService", "binder is alive, sending the intent.");
                    }
                    Pair<Intent, BroadcastReceiver.PendingResult> poll = this.c.poll();
                    this.d.a((Intent) poll.first, (BroadcastReceiver.PendingResult) poll.second);
                }
            }
        }

        public synchronized void a(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "new intent queued in the bind-strategy delivery");
            }
            this.c.add(new Pair<>(intent, pendingResult));
            a();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                this.e = false;
                this.d = (a) iBinder;
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    String valueOf = String.valueOf(componentName);
                    Log.d("EnhancedIntentService", new StringBuilder(String.valueOf(valueOf).length() + 20).append("onServiceConnected: ").append(valueOf).toString());
                }
                a();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                String valueOf = String.valueOf(componentName);
                Log.d("EnhancedIntentService", new StringBuilder(String.valueOf(valueOf).length() + 23).append("onServiceDisconnected: ").append(valueOf).toString());
            }
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzC(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.zzrJ) {
            this.zzckW--;
            if (this.zzckW == 0) {
                zzqE(this.zzckV);
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.zzckU == null) {
            this.zzckU = new a(this);
        }
        return this.zzckU;
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.zzrJ) {
            this.zzckV = i2;
            this.zzckW++;
        }
        final Intent zzD = zzD(intent);
        if (zzD == null) {
            zzC(intent);
            return 2;
        } else if (zzE(zzD)) {
            zzC(intent);
            return 2;
        } else {
            this.zzbtI.execute(new Runnable() { // from class: com.google.firebase.iid.zzb.1
                @Override // java.lang.Runnable
                public void run() {
                    zzb.this.handleIntent(zzD);
                    zzb.this.zzC(intent);
                }
            });
            return 3;
        }
    }

    protected Intent zzD(Intent intent) {
        return intent;
    }

    public boolean zzE(Intent intent) {
        return false;
    }

    boolean zzqE(int i) {
        return stopSelfResult(i);
    }
}
