package android.support.v7.media;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import com.loopme.debugging.Params;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegisteredMediaRouteProviderWatcher.java */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final Context f680a;
    private final a b;
    private final PackageManager d;
    private boolean f;
    private final ArrayList<l> e = new ArrayList<>();
    private final BroadcastReceiver g = new BroadcastReceiver() { // from class: android.support.v7.media.m.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            m.this.b();
        }
    };
    private final Runnable h = new Runnable() { // from class: android.support.v7.media.m.2
        @Override // java.lang.Runnable
        public void run() {
            m.this.b();
        }
    };
    private final Handler c = new Handler();

    /* compiled from: RegisteredMediaRouteProviderWatcher.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(c cVar);

        void b(c cVar);
    }

    public m(Context context, a aVar) {
        this.f680a = context;
        this.b = aVar;
        this.d = context.getPackageManager();
    }

    public void a() {
        if (!this.f) {
            this.f = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            intentFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
            intentFilter.addDataScheme(Params.PACKAGE_ID);
            this.f680a.registerReceiver(this.g, intentFilter, null, this.c);
            this.c.post(this.h);
        }
    }

    void b() {
        int i;
        int i2 = 0;
        if (this.f) {
            Iterator<ResolveInfo> it = this.d.queryIntentServices(new Intent("android.media.MediaRouteProviderService"), 0).iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                ServiceInfo serviceInfo = it.next().serviceInfo;
                if (serviceInfo != null) {
                    int a2 = a(serviceInfo.packageName, serviceInfo.name);
                    if (a2 < 0) {
                        l lVar = new l(this.f680a, new ComponentName(serviceInfo.packageName, serviceInfo.name));
                        lVar.h();
                        i2 = i + 1;
                        this.e.add(i, lVar);
                        this.b.a(lVar);
                    } else if (a2 >= i) {
                        l lVar2 = this.e.get(a2);
                        lVar2.h();
                        lVar2.j();
                        i2 = i + 1;
                        Collections.swap(this.e, a2, i);
                    }
                }
                i2 = i;
            }
            if (i < this.e.size()) {
                for (int size = this.e.size() - 1; size >= i; size--) {
                    l lVar3 = this.e.get(size);
                    this.b.b(lVar3);
                    this.e.remove(lVar3);
                    lVar3.i();
                }
            }
        }
    }

    private int a(String str, String str2) {
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            if (this.e.get(i).b(str, str2)) {
                return i;
            }
        }
        return -1;
    }
}
