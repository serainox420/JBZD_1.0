package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zza;
import com.google.android.gms.common.util.zzc;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.common.util.zzu;
import com.google.android.gms.internal.zzaac;
import com.google.android.gms.internal.zzbth;
import com.google.android.gms.internal.zzbti;
import com.google.android.gms.internal.zzbtj;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class a {
    private final Context h;
    private final String i;
    private final com.google.firebase.b j;
    private final AtomicBoolean k = new AtomicBoolean(false);
    private final AtomicBoolean l = new AtomicBoolean();
    private final List<InterfaceC0496a> m = new CopyOnWriteArrayList();
    private final List<b> n = new CopyOnWriteArrayList();
    private final List<Object> o = new CopyOnWriteArrayList();
    private zzbti p;
    private static final List<String> b = Arrays.asList("com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId");
    private static final List<String> c = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    private static final List<String> d = Arrays.asList("com.google.android.gms.measurement.AppMeasurement");
    private static final List<String> e = Arrays.asList(new String[0]);
    private static final Set<String> f = Collections.emptySet();
    private static final Object g = new Object();

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, a> f3521a = new android.support.v4.f.a();

    /* renamed from: com.google.firebase.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0496a {
        void zzb(zzbtj zzbtjVar);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void zzat(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(24)
    /* loaded from: classes2.dex */
    public static class c extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private static AtomicReference<c> f3523a = new AtomicReference<>();
        private final Context b;

        public c(Context context) {
            this.b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (f3523a.get() == null) {
                c cVar = new c(context);
                if (!f3523a.compareAndSet(null, cVar)) {
                    return;
                }
                context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            }
        }

        public void a() {
            this.b.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (a.g) {
                for (a aVar : a.f3521a.values()) {
                    aVar.j();
                }
            }
            a();
        }
    }

    protected a(Context context, String str, com.google.firebase.b bVar) {
        this.h = (Context) zzac.zzw(context);
        this.i = zzac.zzdr(str);
        this.j = (com.google.firebase.b) zzac.zzw(bVar);
    }

    public static a a(Context context) {
        a a2;
        synchronized (g) {
            if (f3521a.containsKey("[DEFAULT]")) {
                a2 = d();
            } else {
                com.google.firebase.b a3 = com.google.firebase.b.a(context);
                a2 = a3 == null ? null : a(context, a3);
            }
        }
        return a2;
    }

    public static a a(Context context, com.google.firebase.b bVar) {
        return a(context, bVar, "[DEFAULT]");
    }

    public static a a(Context context, com.google.firebase.b bVar, String str) {
        a aVar;
        zzbth zzcw = zzbth.zzcw(context);
        b(context);
        String b2 = b(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (g) {
            zzac.zza(!f3521a.containsKey(b2), new StringBuilder(String.valueOf(b2).length() + 33).append("FirebaseApp name ").append(b2).append(" already exists!").toString());
            zzac.zzb(context, "Application context cannot be null.");
            aVar = new a(context, b2, bVar);
            f3521a.put(b2, aVar);
        }
        zzcw.zzg(aVar);
        aVar.a((Class<Class>) a.class, (Class) aVar, (Iterable<String>) b);
        if (aVar.e()) {
            aVar.a((Class<Class>) a.class, (Class) aVar, (Iterable<String>) c);
            aVar.a((Class<Class>) Context.class, (Class) aVar.a(), (Iterable<String>) d);
        }
        return aVar;
    }

    public static a a(String str) {
        a aVar;
        String concat;
        synchronized (g) {
            aVar = f3521a.get(b(str));
            if (aVar == null) {
                List<String> i = i();
                if (i.isEmpty()) {
                    concat = "";
                } else {
                    String valueOf = String.valueOf(TextUtils.join(", ", i));
                    concat = valueOf.length() != 0 ? "Available app names: ".concat(valueOf) : new String("Available app names: ");
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, concat));
            }
        }
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void a(Class<T> cls, T t, Iterable<String> iterable) {
        boolean b2 = android.support.v4.content.b.b(this.h);
        if (b2) {
            c.b(this.h);
        }
        for (String str : iterable) {
            if (b2) {
                try {
                } catch (ClassNotFoundException e2) {
                    if (f.contains(str)) {
                        throw new IllegalStateException(String.valueOf(str).concat(" is missing, but is required. Check if it has been removed by Proguard."));
                    }
                    Log.d("FirebaseApp", String.valueOf(str).concat(" is not linked. Skipping initialization."));
                } catch (IllegalAccessException e3) {
                    String valueOf = String.valueOf(str);
                    Log.wtf("FirebaseApp", valueOf.length() != 0 ? "Failed to initialize ".concat(valueOf) : new String("Failed to initialize "), e3);
                } catch (NoSuchMethodException e4) {
                    throw new IllegalStateException(String.valueOf(str).concat("#getInstance has been removed by Proguard. Add keep rule to prevent it."));
                } catch (InvocationTargetException e5) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e5);
                }
                if (e.contains(str)) {
                }
            }
            Method method = Class.forName(str).getMethod("getInstance", cls);
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, t);
            }
        }
    }

    public static void a(boolean z) {
        synchronized (g) {
            Iterator it = new ArrayList(f3521a.values()).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar.k.get()) {
                    aVar.c(z);
                }
            }
        }
    }

    private static String b(String str) {
        return str.trim();
    }

    @TargetApi(14)
    private static void b(Context context) {
        zzt.zzzg();
        if (context.getApplicationContext() instanceof Application) {
            zzaac.zza((Application) context.getApplicationContext());
            zzaac.zzvB().zza(new zzaac.zza() { // from class: com.google.firebase.a.1
                @Override // com.google.android.gms.internal.zzaac.zza
                public void zzat(boolean z) {
                    a.a(z);
                }
            });
        }
    }

    private void c(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (b bVar : this.n) {
            bVar.zzat(z);
        }
    }

    public static a d() {
        a aVar;
        synchronized (g) {
            aVar = f3521a.get("[DEFAULT]");
            if (aVar == null) {
                String valueOf = String.valueOf(zzu.zzzr());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 116).append("Default FirebaseApp is not initialized in this process ").append(valueOf).append(". Make sure to call FirebaseApp.initializeApp(Context) first.").toString());
            }
        }
        return aVar;
    }

    private void h() {
        zzac.zza(!this.l.get(), "FirebaseApp was deleted");
    }

    private static List<String> i() {
        zza zzaVar = new zza();
        synchronized (g) {
            for (a aVar : f3521a.values()) {
                zzaVar.add(aVar.b());
            }
            zzbth zzabY = zzbth.zzabY();
            if (zzabY != null) {
                zzaVar.addAll(zzabY.zzabZ());
            }
        }
        ArrayList arrayList = new ArrayList(zzaVar);
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        a((Class<Class>) a.class, (Class) this, (Iterable<String>) b);
        if (e()) {
            a((Class<Class>) a.class, (Class) this, (Iterable<String>) c);
            a((Class<Class>) Context.class, (Class) this.h, (Iterable<String>) d);
        }
    }

    public Context a() {
        h();
        return this.h;
    }

    public void a(zzbti zzbtiVar) {
        this.p = (zzbti) zzac.zzw(zzbtiVar);
    }

    public void a(zzbtj zzbtjVar) {
        Log.d("FirebaseApp", "Notifying auth state listeners.");
        int i = 0;
        for (InterfaceC0496a interfaceC0496a : this.m) {
            interfaceC0496a.zzb(zzbtjVar);
            i++;
        }
        Log.d("FirebaseApp", String.format("Notified %d auth state listeners.", Integer.valueOf(i)));
    }

    public void a(InterfaceC0496a interfaceC0496a) {
        h();
        zzac.zzw(interfaceC0496a);
        this.m.add(interfaceC0496a);
    }

    public void a(b bVar) {
        h();
        if (this.k.get() && zzaac.zzvB().zzvC()) {
            bVar.zzat(true);
        }
        this.n.add(bVar);
    }

    public Task<e> b(boolean z) {
        h();
        return this.p == null ? Tasks.forException(new FirebaseApiNotAvailableException("firebase-auth is not linked, please fall back to unauthenticated mode.")) : this.p.zzaX(z);
    }

    public String b() {
        h();
        return this.i;
    }

    public com.google.firebase.b c() {
        h();
        return this.j;
    }

    public boolean e() {
        return "[DEFAULT]".equals(b());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        return this.i.equals(((a) obj).b());
    }

    public String f() {
        String valueOf = String.valueOf(zzc.zzs(b().getBytes()));
        String valueOf2 = String.valueOf(zzc.zzs(c().b().getBytes()));
        return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("+").append(valueOf2).toString();
    }

    public int hashCode() {
        return this.i.hashCode();
    }

    public String toString() {
        return zzaa.zzv(this).zzg("name", this.i).zzg("options", this.j).toString();
    }
}
