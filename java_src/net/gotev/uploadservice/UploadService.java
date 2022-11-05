package net.gotev.uploadservice;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class UploadService extends Service {
    private PowerManager.WakeLock k;
    private int l = 0;
    private final BlockingQueue<Runnable> o = new LinkedBlockingQueue();
    private ThreadPoolExecutor q;
    private static final String j = UploadService.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static int f5835a = Runtime.getRuntime().availableProcessors();
    public static int b = 1;
    public static boolean c = true;
    public static String d = "net.gotev";
    public static net.gotev.uploadservice.a.c e = new net.gotev.uploadservice.a.a.b();
    public static int f = 4096;
    public static int g = 1000;
    public static int h = 10;
    public static int i = 600000;
    private static final Map<String, j> m = new ConcurrentHashMap();
    private static final Map<String, i> n = new ConcurrentHashMap();
    private static volatile String p = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a() {
        return d + ".uploadservice.action.upload";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String b() {
        return d + ".uploadservice.broadcast.status";
    }

    public static synchronized void c() {
        synchronized (UploadService.class) {
            if (!m.isEmpty()) {
                for (String str : m.keySet()) {
                    m.get(str).g();
                }
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.k = ((PowerManager) getSystemService("power")).newWakeLock(1, j);
        this.k.setReferenceCounted(false);
        if (!this.k.isHeld()) {
            this.k.acquire();
        }
        if (f5835a <= 0) {
            f5835a = Runtime.getRuntime().availableProcessors();
        }
        this.q = new ThreadPoolExecutor(f5835a, f5835a, b, TimeUnit.SECONDS, this.o);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (intent == null || !a().equals(intent.getAction())) {
            return d();
        }
        String str = j;
        Locale locale = Locale.getDefault();
        Object[] objArr = new Object[4];
        objArr[0] = d;
        objArr[1] = Integer.valueOf(f5835a);
        objArr[2] = Integer.valueOf(b);
        objArr[3] = c ? "enabled" : "disabled";
        Logger.b(str, String.format(locale, "Starting service with namespace: %s, upload pool size: %d, %ds idle thread keep alive time. Foreground execution is %s", objArr));
        j a2 = a(intent);
        if (a2 == null) {
            return d();
        }
        if (m.containsKey(a2.d.c())) {
            Logger.a(j, "Preventing upload with id: " + a2.d.c() + " to be uploaded twice! Please check your code and fix it!");
            return d();
        }
        this.l += 2;
        a2.a(0L).b(this.l + 1234);
        m.put(a2.d.c(), a2);
        this.q.execute(a2);
        return 1;
    }

    private int d() {
        if (m.isEmpty()) {
            stopSelf();
            return 2;
        }
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        c();
        this.q.shutdown();
        if (c) {
            Logger.c(j, "Stopping foreground execution");
            stopForeground(true);
        }
        if (this.k.isHeld()) {
            this.k.release();
        }
        m.clear();
        n.clear();
        Logger.c(j, "UploadService destroyed");
    }

    j a(Intent intent) {
        j jVar;
        Exception e2;
        String stringExtra = intent.getStringExtra("taskClass");
        if (stringExtra == null) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(stringExtra);
            if (j.class.isAssignableFrom(cls)) {
                jVar = (j) j.class.cast(cls.newInstance());
                try {
                    jVar.a(this, intent);
                } catch (Exception e3) {
                    e2 = e3;
                    Logger.a(j, "Error while instantiating new task", e2);
                    return jVar;
                }
            } else {
                Logger.a(j, stringExtra + " does not extend UploadTask!");
                jVar = null;
            }
            Logger.c(j, "Successfully created new task with class: " + stringExtra);
            return jVar;
        } catch (Exception e4) {
            jVar = null;
            e2 = e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized boolean a(String str, Notification notification) {
        boolean z = false;
        synchronized (this) {
            if (c) {
                if (p == null) {
                    p = str;
                    Logger.c(j, str + " now holds the foreground notification");
                }
                if (str.equals(p)) {
                    startForeground(1234, notification);
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(String str) {
        j remove = m.remove(str);
        n.remove(str);
        if (c && remove != null && remove.d.c().equals(p)) {
            Logger.c(j, str + " now un-holded the foreground notification");
            p = null;
        }
        if (c && m.isEmpty()) {
            Logger.c(j, "All tasks completed, stopping foreground execution");
            stopForeground(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(String str, i iVar) {
        if (iVar != null) {
            n.put(str, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i b(String str) {
        return n.get(str);
    }
}
