package android.support.customtabs;

import android.app.Service;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.h;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public abstract class CustomTabsService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private final Map<IBinder, IBinder.DeathRecipient> f1a = new android.support.v4.f.a();
    private h.a b = new h.a() { // from class: android.support.customtabs.CustomTabsService.1
        @Override // android.support.customtabs.h
        public boolean a(long j) {
            return CustomTabsService.this.a(j);
        }

        @Override // android.support.customtabs.h
        public boolean a(g gVar) {
            final f fVar = new f(gVar);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: android.support.customtabs.CustomTabsService.1.1
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        CustomTabsService.this.a(fVar);
                    }
                };
                synchronized (CustomTabsService.this.f1a) {
                    gVar.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.f1a.put(gVar.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.b(fVar);
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // android.support.customtabs.h
        public boolean a(g gVar, Uri uri, Bundle bundle, List<Bundle> list) {
            return CustomTabsService.this.a(new f(gVar), uri, bundle, list);
        }

        @Override // android.support.customtabs.h
        public Bundle a(String str, Bundle bundle) {
            return CustomTabsService.this.a(str, bundle);
        }

        @Override // android.support.customtabs.h
        public boolean a(g gVar, Bundle bundle) {
            return CustomTabsService.this.a(new f(gVar), bundle);
        }

        @Override // android.support.customtabs.h
        public boolean a(g gVar, Uri uri) {
            return CustomTabsService.this.a(new f(gVar), uri);
        }

        @Override // android.support.customtabs.h
        public int a(g gVar, String str, Bundle bundle) {
            return CustomTabsService.this.a(new f(gVar), str, bundle);
        }
    };

    protected abstract int a(f fVar, String str, Bundle bundle);

    protected abstract Bundle a(String str, Bundle bundle);

    protected abstract boolean a(long j);

    protected abstract boolean a(f fVar, Uri uri);

    protected abstract boolean a(f fVar, Uri uri, Bundle bundle, List<Bundle> list);

    protected abstract boolean a(f fVar, Bundle bundle);

    protected abstract boolean b(f fVar);

    protected boolean a(f fVar) {
        try {
            synchronized (this.f1a) {
                IBinder a2 = fVar.a();
                a2.unlinkToDeath(this.f1a.get(a2), 0);
                this.f1a.remove(a2);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }
}
