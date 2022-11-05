package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.ab;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: NotificationManagerCompat.java */
/* loaded from: classes.dex */
public final class as {

    /* renamed from: a  reason: collision with root package name */
    static final int f244a;
    private static String c;
    private static h h;
    private static final a i;
    private final Context e;
    private final NotificationManager f;
    private static final Object b = new Object();
    private static Set<String> d = new HashSet();
    private static final Object g = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public interface a {
        int a();

        void a(NotificationManager notificationManager, String str, int i);

        void a(NotificationManager notificationManager, String str, int i, Notification notification);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public interface i {
        void a(ab abVar) throws RemoteException;
    }

    static {
        if (android.support.v4.os.c.a()) {
            i = new b();
        } else if (Build.VERSION.SDK_INT >= 19) {
            i = new e();
        } else if (Build.VERSION.SDK_INT >= 14) {
            i = new d();
        } else {
            i = new c();
        }
        f244a = i.a();
    }

    public static as a(Context context) {
        return new as(context);
    }

    private as(Context context) {
        this.e = context;
        this.f = (NotificationManager) this.e.getSystemService("notification");
    }

    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    static class c implements a {
        c() {
        }

        @Override // android.support.v4.app.as.a
        public void a(NotificationManager notificationManager, String str, int i) {
            notificationManager.cancel(str, i);
        }

        @Override // android.support.v4.app.as.a
        public void a(NotificationManager notificationManager, String str, int i, Notification notification) {
            notificationManager.notify(str, i, notification);
        }

        @Override // android.support.v4.app.as.a
        public int a() {
            return 1;
        }
    }

    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.app.as.c, android.support.v4.app.as.a
        public int a() {
            return 33;
        }
    }

    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    static class e extends d {
        e() {
        }
    }

    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    static class b extends e {
        b() {
        }
    }

    public void a(int i2, Notification notification) {
        a(null, i2, notification);
    }

    public void a(String str, int i2, Notification notification) {
        if (a(notification)) {
            a(new f(this.e.getPackageName(), i2, str, notification));
            i.a(this.f, str, i2);
            return;
        }
        i.a(this.f, str, i2, notification);
    }

    public static Set<String> b(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (b) {
            if (string != null) {
                if (!string.equals(c)) {
                    String[] split = string.split(":");
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    d = hashSet;
                    c = string;
                }
            }
            set = d;
        }
        return set;
    }

    private static boolean a(Notification notification) {
        Bundle a2 = aj.a(notification);
        return a2 != null && a2.getBoolean("android.support.useSideChannel");
    }

    private void a(i iVar) {
        synchronized (g) {
            if (h == null) {
                h = new h(this.e.getApplicationContext());
            }
            h.a(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public static class h implements ServiceConnection, Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final Context f247a;
        private final Handler c;
        private final Map<ComponentName, a> d = new HashMap();
        private Set<String> e = new HashSet();
        private final HandlerThread b = new HandlerThread("NotificationManagerCompat");

        public h(Context context) {
            this.f247a = context;
            this.b.start();
            this.c = new Handler(this.b.getLooper(), this);
        }

        public void a(i iVar) {
            this.c.obtainMessage(0, iVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    b((i) message.obj);
                    return true;
                case 1:
                    g gVar = (g) message.obj;
                    a(gVar.f246a, gVar.b);
                    return true;
                case 2:
                    a((ComponentName) message.obj);
                    return true;
                case 3:
                    b((ComponentName) message.obj);
                    return true;
                default:
                    return false;
            }
        }

        private void b(i iVar) {
            a();
            for (a aVar : this.d.values()) {
                aVar.d.add(iVar);
                d(aVar);
            }
        }

        private void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.d.get(componentName);
            if (aVar != null) {
                aVar.c = ab.a.a(iBinder);
                aVar.e = 0;
                d(aVar);
            }
        }

        private void a(ComponentName componentName) {
            a aVar = this.d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void b(ComponentName componentName) {
            a aVar = this.d.get(componentName);
            if (aVar != null) {
                d(aVar);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.c.obtainMessage(1, new g(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.c.obtainMessage(2, componentName).sendToTarget();
        }

        private void a() {
            Set<String> b = as.b(this.f247a);
            if (!b.equals(this.e)) {
                this.e = b;
                List<ResolveInfo> queryIntentServices = this.f247a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
                HashSet<ComponentName> hashSet = new HashSet();
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    if (b.contains(resolveInfo.serviceInfo.packageName)) {
                        ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                        if (resolveInfo.serviceInfo.permission != null) {
                            Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                        } else {
                            hashSet.add(componentName);
                        }
                    }
                }
                for (ComponentName componentName2 : hashSet) {
                    if (!this.d.containsKey(componentName2)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                        }
                        this.d.put(componentName2, new a(componentName2));
                    }
                }
                Iterator<Map.Entry<ComponentName, a>> it = this.d.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<ComponentName, a> next = it.next();
                    if (!hashSet.contains(next.getKey())) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                        }
                        b(next.getValue());
                        it.remove();
                    }
                }
            }
        }

        private boolean a(a aVar) {
            if (aVar.b) {
                return true;
            }
            aVar.b = this.f247a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f248a), this, as.f244a);
            if (aVar.b) {
                aVar.e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f248a);
                this.f247a.unbindService(this);
            }
            return aVar.b;
        }

        private void b(a aVar) {
            if (aVar.b) {
                this.f247a.unbindService(this);
                aVar.b = false;
            }
            aVar.c = null;
        }

        private void c(a aVar) {
            if (!this.c.hasMessages(3, aVar.f248a)) {
                aVar.e++;
                if (aVar.e > 6) {
                    Log.w("NotifManCompat", "Giving up on delivering " + aVar.d.size() + " tasks to " + aVar.f248a + " after " + aVar.e + " retries");
                    aVar.d.clear();
                    return;
                }
                int i = (1 << (aVar.e - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i + " ms");
                }
                this.c.sendMessageDelayed(this.c.obtainMessage(3, aVar.f248a), i);
            }
        }

        private void d(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f248a + ", " + aVar.d.size() + " queued tasks");
            }
            if (!aVar.d.isEmpty()) {
                if (!a(aVar) || aVar.c == null) {
                    c(aVar);
                    return;
                }
                while (true) {
                    i peek = aVar.d.peek();
                    if (peek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Sending task " + peek);
                        }
                        peek.a(aVar.c);
                        aVar.d.remove();
                    } catch (DeadObjectException e) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Remote service has died: " + aVar.f248a);
                        }
                    } catch (RemoteException e2) {
                        Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f248a, e2);
                    }
                }
                if (!aVar.d.isEmpty()) {
                    c(aVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: NotificationManagerCompat.java */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public final ComponentName f248a;
            public ab c;
            public boolean b = false;
            public LinkedList<i> d = new LinkedList<>();
            public int e = 0;

            public a(ComponentName componentName) {
                this.f248a = componentName;
            }
        }
    }

    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    private static class g {

        /* renamed from: a  reason: collision with root package name */
        final ComponentName f246a;
        final IBinder b;

        public g(ComponentName componentName, IBinder iBinder) {
            this.f246a = componentName;
            this.b = iBinder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationManagerCompat.java */
    /* loaded from: classes.dex */
    public static class f implements i {

        /* renamed from: a  reason: collision with root package name */
        final String f245a;
        final int b;
        final String c;
        final Notification d;

        public f(String str, int i, String str2, Notification notification) {
            this.f245a = str;
            this.b = i;
            this.c = str2;
            this.d = notification;
        }

        @Override // android.support.v4.app.as.i
        public void a(ab abVar) throws RemoteException {
            abVar.a(this.f245a, this.b, this.c, this.d);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("NotifyTask[");
            sb.append("packageName:").append(this.f245a);
            sb.append(", id:").append(this.b);
            sb.append(", tag:").append(this.c);
            sb.append("]");
            return sb.toString();
        }
    }
}
