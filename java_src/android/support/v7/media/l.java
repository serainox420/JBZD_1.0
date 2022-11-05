package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v7.media.c;
import android.support.v7.media.g;
import android.util.Log;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegisteredMediaRouteProvider.java */
/* loaded from: classes.dex */
public final class l extends android.support.v7.media.c implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f673a = Log.isLoggable("MediaRouteProviderProxy", 3);
    final c b;
    private final ComponentName c;
    private final ArrayList<b> d;
    private boolean e;
    private boolean f;
    private a g;
    private boolean h;

    public l(Context context, ComponentName componentName) {
        super(context, new c.C0040c(componentName));
        this.d = new ArrayList<>();
        this.c = componentName;
        this.b = new c();
    }

    @Override // android.support.v7.media.c
    public c.d a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        return c(str, null);
    }

    @Override // android.support.v7.media.c
    public c.d a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("routeGroupId cannot be null");
        }
        return c(str, str2);
    }

    @Override // android.support.v7.media.c
    public void b(android.support.v7.media.b bVar) {
        if (this.h) {
            this.g.a(bVar);
        }
        k();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (f673a) {
            Log.d("MediaRouteProviderProxy", this + ": Connected");
        }
        if (this.f) {
            o();
            Messenger messenger = iBinder != null ? new Messenger(iBinder) : null;
            if (e.a(messenger)) {
                a aVar = new a(messenger);
                if (aVar.a()) {
                    this.g = aVar;
                    return;
                } else if (f673a) {
                    Log.d("MediaRouteProviderProxy", this + ": Registration failed");
                    return;
                } else {
                    return;
                }
            }
            Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (f673a) {
            Log.d("MediaRouteProviderProxy", this + ": Service disconnected");
        }
        o();
    }

    public String toString() {
        return "Service connection " + this.c.flattenToShortString();
    }

    public boolean b(String str, String str2) {
        return this.c.getPackageName().equals(str) && this.c.getClassName().equals(str2);
    }

    public void h() {
        if (!this.e) {
            if (f673a) {
                Log.d("MediaRouteProviderProxy", this + ": Starting");
            }
            this.e = true;
            k();
        }
    }

    public void i() {
        if (this.e) {
            if (f673a) {
                Log.d("MediaRouteProviderProxy", this + ": Stopping");
            }
            this.e = false;
            k();
        }
    }

    public void j() {
        if (this.g == null && l()) {
            n();
            m();
        }
    }

    private void k() {
        if (l()) {
            m();
        } else {
            n();
        }
    }

    private boolean l() {
        return this.e && (d() != null || !this.d.isEmpty());
    }

    private void m() {
        if (!this.f) {
            if (f673a) {
                Log.d("MediaRouteProviderProxy", this + ": Binding");
            }
            Intent intent = new Intent("android.media.MediaRouteProviderService");
            intent.setComponent(this.c);
            try {
                this.f = a().bindService(intent, this, 1);
                if (!this.f && f673a) {
                    Log.d("MediaRouteProviderProxy", this + ": Bind failed");
                }
            } catch (SecurityException e) {
                if (f673a) {
                    Log.d("MediaRouteProviderProxy", this + ": Bind failed", e);
                }
            }
        }
    }

    private void n() {
        if (this.f) {
            if (f673a) {
                Log.d("MediaRouteProviderProxy", this + ": Unbinding");
            }
            this.f = false;
            o();
            a().unbindService(this);
        }
    }

    private c.d c(String str, String str2) {
        android.support.v7.media.d f = f();
        if (f != null) {
            List<android.support.v7.media.a> a2 = f.a();
            int size = a2.size();
            for (int i = 0; i < size; i++) {
                if (a2.get(i).a().equals(str)) {
                    b bVar = new b(str, str2);
                    this.d.add(bVar);
                    if (this.h) {
                        bVar.a(this.g);
                    }
                    k();
                    return bVar;
                }
            }
        }
        return null;
    }

    void a(a aVar) {
        if (this.g == aVar) {
            this.h = true;
            p();
            android.support.v7.media.b d2 = d();
            if (d2 != null) {
                this.g.a(d2);
            }
        }
    }

    void b(a aVar) {
        if (this.g == aVar) {
            if (f673a) {
                Log.d("MediaRouteProviderProxy", this + ": Service connection died");
            }
            o();
        }
    }

    void a(a aVar, String str) {
        if (this.g == aVar) {
            if (f673a) {
                Log.d("MediaRouteProviderProxy", this + ": Service connection error - " + str);
            }
            n();
        }
    }

    void a(a aVar, android.support.v7.media.d dVar) {
        if (this.g == aVar) {
            if (f673a) {
                Log.d("MediaRouteProviderProxy", this + ": Descriptor changed, descriptor=" + dVar);
            }
            a(dVar);
        }
    }

    private void o() {
        if (this.g != null) {
            a((android.support.v7.media.d) null);
            this.h = false;
            q();
            this.g.b();
            this.g = null;
        }
    }

    void a(b bVar) {
        this.d.remove(bVar);
        bVar.d();
        k();
    }

    private void p() {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            this.d.get(i).a(this.g);
        }
    }

    private void q() {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            this.d.get(i).d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegisteredMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public final class b extends c.d {
        private final String b;
        private final String c;
        private boolean d;
        private int e = -1;
        private int f;
        private a g;
        private int h;

        public b(String str, String str2) {
            this.b = str;
            this.c = str2;
        }

        public void a(a aVar) {
            this.g = aVar;
            this.h = aVar.a(this.b, this.c);
            if (this.d) {
                aVar.d(this.h);
                if (this.e >= 0) {
                    aVar.b(this.h, this.e);
                    this.e = -1;
                }
                if (this.f != 0) {
                    aVar.c(this.h, this.f);
                    this.f = 0;
                }
            }
        }

        public void d() {
            if (this.g != null) {
                this.g.c(this.h);
                this.g = null;
                this.h = 0;
            }
        }

        @Override // android.support.v7.media.c.d
        public void a() {
            l.this.a(this);
        }

        @Override // android.support.v7.media.c.d
        public void b() {
            this.d = true;
            if (this.g != null) {
                this.g.d(this.h);
            }
        }

        @Override // android.support.v7.media.c.d
        public void c() {
            a(0);
        }

        @Override // android.support.v7.media.c.d
        public void a(int i) {
            this.d = false;
            if (this.g != null) {
                this.g.a(this.h, i);
            }
        }

        @Override // android.support.v7.media.c.d
        public void b(int i) {
            if (this.g != null) {
                this.g.b(this.h, i);
                return;
            }
            this.e = i;
            this.f = 0;
        }

        @Override // android.support.v7.media.c.d
        public void c(int i) {
            if (this.g != null) {
                this.g.c(this.h, i);
            } else {
                this.f += i;
            }
        }

        @Override // android.support.v7.media.c.d
        public boolean a(Intent intent, g.c cVar) {
            if (this.g != null) {
                return this.g.a(this.h, intent, cVar);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegisteredMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public final class a implements IBinder.DeathRecipient {
        private final Messenger b;
        private int g;
        private int h;
        private int e = 1;
        private int f = 1;
        private final SparseArray<g.c> i = new SparseArray<>();
        private final d c = new d(this);
        private final Messenger d = new Messenger(this.c);

        public a(Messenger messenger) {
            this.b = messenger;
        }

        public boolean a() {
            int i = this.e;
            this.e = i + 1;
            this.h = i;
            if (!a(1, this.h, 2, null, null)) {
                return false;
            }
            try {
                this.b.getBinder().linkToDeath(this, 0);
                return true;
            } catch (RemoteException e) {
                binderDied();
                return false;
            }
        }

        public void b() {
            a(2, 0, 0, null, null);
            this.c.a();
            this.b.getBinder().unlinkToDeath(this, 0);
            l.this.b.post(new Runnable() { // from class: android.support.v7.media.l.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.c();
                }
            });
        }

        void c() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.i.size()) {
                    this.i.valueAt(i2).a(null, null);
                    i = i2 + 1;
                } else {
                    this.i.clear();
                    return;
                }
            }
        }

        public boolean a(int i) {
            if (i == this.h) {
                this.h = 0;
                l.this.a(this, "Registration failed");
            }
            g.c cVar = this.i.get(i);
            if (cVar != null) {
                this.i.remove(i);
                cVar.a(null, null);
                return true;
            }
            return true;
        }

        public boolean b(int i) {
            return true;
        }

        public boolean a(int i, int i2, Bundle bundle) {
            if (this.g == 0 && i == this.h && i2 >= 1) {
                this.h = 0;
                this.g = i2;
                l.this.a(this, android.support.v7.media.d.a(bundle));
                l.this.a(this);
                return true;
            }
            return false;
        }

        public boolean a(Bundle bundle) {
            if (this.g != 0) {
                l.this.a(this, android.support.v7.media.d.a(bundle));
                return true;
            }
            return false;
        }

        public boolean a(int i, Bundle bundle) {
            g.c cVar = this.i.get(i);
            if (cVar != null) {
                this.i.remove(i);
                cVar.a(bundle);
                return true;
            }
            return false;
        }

        public boolean a(int i, String str, Bundle bundle) {
            g.c cVar = this.i.get(i);
            if (cVar != null) {
                this.i.remove(i);
                cVar.a(str, bundle);
                return true;
            }
            return false;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            l.this.b.post(new Runnable() { // from class: android.support.v7.media.l.a.2
                @Override // java.lang.Runnable
                public void run() {
                    l.this.b(a.this);
                }
            });
        }

        public int a(String str, String str2) {
            int i = this.f;
            this.f = i + 1;
            Bundle bundle = new Bundle();
            bundle.putString("routeId", str);
            bundle.putString("routeGroupId", str2);
            int i2 = this.e;
            this.e = i2 + 1;
            a(3, i2, i, null, bundle);
            return i;
        }

        public void c(int i) {
            int i2 = this.e;
            this.e = i2 + 1;
            a(4, i2, i, null, null);
        }

        public void d(int i) {
            int i2 = this.e;
            this.e = i2 + 1;
            a(5, i2, i, null, null);
        }

        public void a(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt("unselectReason", i2);
            int i3 = this.e;
            this.e = i3 + 1;
            a(6, i3, i, null, bundle);
        }

        public void b(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i2);
            int i3 = this.e;
            this.e = i3 + 1;
            a(7, i3, i, null, bundle);
        }

        public void c(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i2);
            int i3 = this.e;
            this.e = i3 + 1;
            a(8, i3, i, null, bundle);
        }

        public boolean a(int i, Intent intent, g.c cVar) {
            int i2 = this.e;
            this.e = i2 + 1;
            if (a(9, i2, i, intent, null)) {
                if (cVar != null) {
                    this.i.put(i2, cVar);
                }
                return true;
            }
            return false;
        }

        public void a(android.support.v7.media.b bVar) {
            int i = this.e;
            this.e = i + 1;
            a(10, i, 0, bVar != null ? bVar.d() : null, null);
        }

        private boolean a(int i, int i2, int i3, Object obj, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = i2;
            obtain.arg2 = i3;
            obtain.obj = obj;
            obtain.setData(bundle);
            obtain.replyTo = this.d;
            try {
                this.b.send(obtain);
                return true;
            } catch (DeadObjectException e) {
                return false;
            } catch (RemoteException e2) {
                if (i != 2) {
                    Log.e("MediaRouteProviderProxy", "Could not send message to service.", e2);
                }
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegisteredMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public final class c extends Handler {
        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RegisteredMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static final class d extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<a> f679a;

        public d(a aVar) {
            this.f679a = new WeakReference<>(aVar);
        }

        public void a() {
            this.f679a.clear();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = this.f679a.get();
            if (aVar != null && !a(aVar, message.what, message.arg1, message.arg2, message.obj, message.peekData()) && l.f673a) {
                Log.d("MediaRouteProviderProxy", "Unhandled message from server: " + message);
            }
        }

        private boolean a(a aVar, int i, int i2, int i3, Object obj, Bundle bundle) {
            switch (i) {
                case 0:
                    aVar.a(i2);
                    return true;
                case 1:
                    aVar.b(i2);
                    return true;
                case 2:
                    if (obj == null || (obj instanceof Bundle)) {
                        return aVar.a(i2, i3, (Bundle) obj);
                    }
                    break;
                case 3:
                    if (obj == null || (obj instanceof Bundle)) {
                        return aVar.a(i2, (Bundle) obj);
                    }
                    break;
                case 4:
                    if (obj == null || (obj instanceof Bundle)) {
                        return aVar.a(i2, bundle == null ? null : bundle.getString("error"), (Bundle) obj);
                    }
                    break;
                case 5:
                    if (obj == null || (obj instanceof Bundle)) {
                        return aVar.a((Bundle) obj);
                    }
                    break;
            }
            return false;
        }
    }
}
