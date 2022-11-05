package android.support.v7.media;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v7.media.c;
import android.support.v7.media.d;
import android.support.v7.media.f;
import android.support.v7.media.g;
import android.util.Log;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class MediaRouteProviderService extends Service {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f638a = Log.isLoggable("MediaRouteProviderSrv", 3);
    android.support.v7.media.c c;
    private android.support.v7.media.b h;
    private final ArrayList<a> d = new ArrayList<>();
    private final d e = new d(this);
    private final Messenger f = new Messenger(this.e);
    final b b = new b();
    private final c g = new c();

    boolean a(Messenger messenger, int i, int i2) {
        if (i2 >= 1 && b(messenger) < 0) {
            a aVar = new a(messenger, i2);
            if (aVar.a()) {
                this.d.add(aVar);
                if (f638a) {
                    Log.d("MediaRouteProviderSrv", aVar + ": Registered, version=" + i2);
                }
                if (i == 0) {
                    return true;
                }
                a(messenger, 2, i, 1, a(this.c.f(), aVar), null);
                return true;
            }
        }
        return false;
    }

    boolean a(Messenger messenger, int i) {
        int b2 = b(messenger);
        if (b2 >= 0) {
            a remove = this.d.remove(b2);
            if (f638a) {
                Log.d("MediaRouteProviderSrv", remove + ": Unregistered");
            }
            remove.b();
            c(messenger, i);
            return true;
        }
        return false;
    }

    void a(Messenger messenger) {
        int b2 = b(messenger);
        if (b2 >= 0) {
            a remove = this.d.remove(b2);
            if (f638a) {
                Log.d("MediaRouteProviderSrv", remove + ": Binder died");
            }
            remove.b();
        }
    }

    boolean a(Messenger messenger, int i, int i2, String str, String str2) {
        a d2 = d(messenger);
        if (d2 == null || !d2.a(str, str2, i2)) {
            return false;
        }
        if (f638a) {
            Log.d("MediaRouteProviderSrv", d2 + ": Route controller created, controllerId=" + i2 + ", routeId=" + str + ", routeGroupId=" + str2);
        }
        c(messenger, i);
        return true;
    }

    boolean b(Messenger messenger, int i, int i2) {
        a d2 = d(messenger);
        if (d2 == null || !d2.a(i2)) {
            return false;
        }
        if (f638a) {
            Log.d("MediaRouteProviderSrv", d2 + ": Route controller released, controllerId=" + i2);
        }
        c(messenger, i);
        return true;
    }

    boolean c(Messenger messenger, int i, int i2) {
        c.d b2;
        a d2 = d(messenger);
        if (d2 == null || (b2 = d2.b(i2)) == null) {
            return false;
        }
        b2.b();
        if (f638a) {
            Log.d("MediaRouteProviderSrv", d2 + ": Route selected, controllerId=" + i2);
        }
        c(messenger, i);
        return true;
    }

    boolean a(Messenger messenger, int i, int i2, int i3) {
        c.d b2;
        a d2 = d(messenger);
        if (d2 == null || (b2 = d2.b(i2)) == null) {
            return false;
        }
        b2.a(i3);
        if (f638a) {
            Log.d("MediaRouteProviderSrv", d2 + ": Route unselected, controllerId=" + i2);
        }
        c(messenger, i);
        return true;
    }

    boolean b(Messenger messenger, int i, int i2, int i3) {
        c.d b2;
        a d2 = d(messenger);
        if (d2 == null || (b2 = d2.b(i2)) == null) {
            return false;
        }
        b2.b(i3);
        if (f638a) {
            Log.d("MediaRouteProviderSrv", d2 + ": Route volume changed, controllerId=" + i2 + ", volume=" + i3);
        }
        c(messenger, i);
        return true;
    }

    boolean c(Messenger messenger, int i, int i2, int i3) {
        c.d b2;
        a d2 = d(messenger);
        if (d2 == null || (b2 = d2.b(i2)) == null) {
            return false;
        }
        b2.c(i3);
        if (f638a) {
            Log.d("MediaRouteProviderSrv", d2 + ": Route volume updated, controllerId=" + i2 + ", delta=" + i3);
        }
        c(messenger, i);
        return true;
    }

    boolean a(final Messenger messenger, final int i, final int i2, final Intent intent) {
        c.d b2;
        final a d2 = d(messenger);
        if (d2 != null && (b2 = d2.b(i2)) != null) {
            g.c cVar = null;
            if (i != 0) {
                cVar = new g.c() { // from class: android.support.v7.media.MediaRouteProviderService.1
                    @Override // android.support.v7.media.g.c
                    public void a(Bundle bundle) {
                        if (MediaRouteProviderService.f638a) {
                            Log.d("MediaRouteProviderSrv", d2 + ": Route control request succeeded, controllerId=" + i2 + ", intent=" + intent + ", data=" + bundle);
                        }
                        if (MediaRouteProviderService.this.b(messenger) >= 0) {
                            MediaRouteProviderService.a(messenger, 3, i, 0, bundle, null);
                        }
                    }

                    @Override // android.support.v7.media.g.c
                    public void a(String str, Bundle bundle) {
                        if (MediaRouteProviderService.f638a) {
                            Log.d("MediaRouteProviderSrv", d2 + ": Route control request failed, controllerId=" + i2 + ", intent=" + intent + ", error=" + str + ", data=" + bundle);
                        }
                        if (MediaRouteProviderService.this.b(messenger) >= 0) {
                            if (str != null) {
                                Bundle bundle2 = new Bundle();
                                bundle2.putString("error", str);
                                MediaRouteProviderService.a(messenger, 4, i, 0, bundle, bundle2);
                                return;
                            }
                            MediaRouteProviderService.a(messenger, 4, i, 0, bundle, null);
                        }
                    }
                };
            }
            if (b2.a(intent, cVar)) {
                if (f638a) {
                    Log.d("MediaRouteProviderSrv", d2 + ": Route control request delivered, controllerId=" + i2 + ", intent=" + intent);
                }
                return true;
            }
        }
        return false;
    }

    boolean a(Messenger messenger, int i, android.support.v7.media.b bVar) {
        a d2 = d(messenger);
        if (d2 != null) {
            boolean a2 = d2.a(bVar);
            if (f638a) {
                Log.d("MediaRouteProviderSrv", d2 + ": Set discovery request, request=" + bVar + ", actuallyChanged=" + a2 + ", compositeDiscoveryRequest=" + this.h);
            }
            c(messenger, i);
            return true;
        }
        return false;
    }

    void a(android.support.v7.media.d dVar) {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.d.get(i);
            a(aVar.f640a, 5, 0, 0, a(dVar, aVar), null);
            if (f638a) {
                Log.d("MediaRouteProviderSrv", aVar + ": Sent descriptor change event, descriptor=" + dVar);
            }
        }
    }

    private Bundle a(android.support.v7.media.d dVar, a aVar) {
        if (dVar == null) {
            return null;
        }
        List<android.support.v7.media.a> a2 = dVar.a();
        for (int size = a2.size() - 1; size >= 0; size--) {
            if (aVar.b < a2.get(size).u() || aVar.b > a2.get(size).v()) {
                a2.remove(size);
            }
        }
        Bundle d2 = dVar.d();
        d2.remove("routes");
        return new d.a(android.support.v7.media.d.a(d2)).a(a2).a().d();
    }

    boolean a() {
        boolean z;
        f.a aVar;
        android.support.v7.media.b bVar;
        f.a aVar2 = null;
        int size = this.d.size();
        int i = 0;
        boolean z2 = false;
        android.support.v7.media.b bVar2 = null;
        while (i < size) {
            android.support.v7.media.b bVar3 = this.d.get(i).c;
            if (bVar3 == null || (bVar3.a().c() && !bVar3.b())) {
                z = z2;
                aVar = aVar2;
                bVar = bVar2;
            } else {
                z = bVar3.b() | z2;
                if (bVar2 == null) {
                    aVar = aVar2;
                    bVar = bVar3;
                } else {
                    aVar = aVar2 == null ? new f.a(bVar2.a()) : aVar2;
                    aVar.a(bVar3.a());
                    bVar = bVar2;
                }
            }
            i++;
            bVar2 = bVar;
            aVar2 = aVar;
            z2 = z;
        }
        if (aVar2 != null) {
            bVar2 = new android.support.v7.media.b(aVar2.a(), z2);
        }
        if (this.h == bVar2 || (this.h != null && this.h.equals(bVar2))) {
            return false;
        }
        this.h = bVar2;
        this.c.a(bVar2);
        return true;
    }

    private a d(Messenger messenger) {
        int b2 = b(messenger);
        if (b2 >= 0) {
            return this.d.get(b2);
        }
        return null;
    }

    int b(Messenger messenger) {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            if (this.d.get(i).a(messenger)) {
                return i;
            }
        }
        return -1;
    }

    static void b(Messenger messenger, int i) {
        if (i != 0) {
            a(messenger, 0, i, 0, null, null);
        }
    }

    private static void c(Messenger messenger, int i) {
        if (i != 0) {
            a(messenger, 1, i, 0, null, null);
        }
    }

    static void a(Messenger messenger, int i, int i2, int i3, Object obj, Bundle bundle) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        obtain.setData(bundle);
        try {
            messenger.send(obtain);
        } catch (DeadObjectException e) {
        } catch (RemoteException e2) {
            Log.e("MediaRouteProviderSrv", "Could not send message to " + c(messenger), e2);
        }
    }

    static String c(Messenger messenger) {
        return "Client connection " + messenger.getBinder().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    MediaRouteProviderService.this.a((Messenger) message.obj);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    private final class c extends c.a {
        c() {
        }

        @Override // android.support.v7.media.c.a
        public void a(android.support.v7.media.c cVar, android.support.v7.media.d dVar) {
            MediaRouteProviderService.this.a(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        public final Messenger f640a;
        public final int b;
        public android.support.v7.media.b c;
        private final SparseArray<c.d> e = new SparseArray<>();

        public a(Messenger messenger, int i) {
            this.f640a = messenger;
            this.b = i;
        }

        public boolean a() {
            try {
                this.f640a.getBinder().linkToDeath(this, 0);
                return true;
            } catch (RemoteException e) {
                binderDied();
                return false;
            }
        }

        public void b() {
            int size = this.e.size();
            for (int i = 0; i < size; i++) {
                this.e.valueAt(i).a();
            }
            this.e.clear();
            this.f640a.getBinder().unlinkToDeath(this, 0);
            a((android.support.v7.media.b) null);
        }

        public boolean a(Messenger messenger) {
            return this.f640a.getBinder() == messenger.getBinder();
        }

        public boolean a(String str, String str2, int i) {
            c.d a2;
            if (this.e.indexOfKey(i) < 0) {
                if (str2 == null) {
                    a2 = MediaRouteProviderService.this.c.a(str);
                } else {
                    a2 = MediaRouteProviderService.this.c.a(str, str2);
                }
                if (a2 != null) {
                    this.e.put(i, a2);
                    return true;
                }
            }
            return false;
        }

        public boolean a(int i) {
            c.d dVar = this.e.get(i);
            if (dVar != null) {
                this.e.remove(i);
                dVar.a();
                return true;
            }
            return false;
        }

        public c.d b(int i) {
            return this.e.get(i);
        }

        public boolean a(android.support.v7.media.b bVar) {
            if (this.c == bVar || (this.c != null && this.c.equals(bVar))) {
                return false;
            }
            this.c = bVar;
            return MediaRouteProviderService.this.a();
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaRouteProviderService.this.b.obtainMessage(1, this.f640a).sendToTarget();
        }

        public String toString() {
            return MediaRouteProviderService.c(this.f640a);
        }
    }

    /* loaded from: classes.dex */
    private static final class d extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<MediaRouteProviderService> f643a;

        public d(MediaRouteProviderService mediaRouteProviderService) {
            this.f643a = new WeakReference<>(mediaRouteProviderService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Messenger messenger = message.replyTo;
            if (e.a(messenger)) {
                int i = message.what;
                int i2 = message.arg1;
                int i3 = message.arg2;
                Object obj = message.obj;
                Bundle peekData = message.peekData();
                if (!a(i, messenger, i2, i3, obj, peekData)) {
                    if (MediaRouteProviderService.f638a) {
                        Log.d("MediaRouteProviderSrv", MediaRouteProviderService.c(messenger) + ": Message failed, what=" + i + ", requestId=" + i2 + ", arg=" + i3 + ", obj=" + obj + ", data=" + peekData);
                    }
                    MediaRouteProviderService.b(messenger, i2);
                }
            } else if (MediaRouteProviderService.f638a) {
                Log.d("MediaRouteProviderSrv", "Ignoring message without valid reply messenger.");
            }
        }

        private boolean a(int i, Messenger messenger, int i2, int i3, Object obj, Bundle bundle) {
            int i4 = 0;
            MediaRouteProviderService mediaRouteProviderService = this.f643a.get();
            if (mediaRouteProviderService != null) {
                switch (i) {
                    case 1:
                        return mediaRouteProviderService.a(messenger, i2, i3);
                    case 2:
                        return mediaRouteProviderService.a(messenger, i2);
                    case 3:
                        String string = bundle.getString("routeId");
                        String string2 = bundle.getString("routeGroupId");
                        if (string == null) {
                            return false;
                        }
                        return mediaRouteProviderService.a(messenger, i2, i3, string, string2);
                    case 4:
                        return mediaRouteProviderService.b(messenger, i2, i3);
                    case 5:
                        return mediaRouteProviderService.c(messenger, i2, i3);
                    case 6:
                        if (bundle != null) {
                            i4 = bundle.getInt("unselectReason", 0);
                        }
                        return mediaRouteProviderService.a(messenger, i2, i3, i4);
                    case 7:
                        int i5 = bundle.getInt("volume", -1);
                        if (i5 < 0) {
                            return false;
                        }
                        return mediaRouteProviderService.b(messenger, i2, i3, i5);
                    case 8:
                        int i6 = bundle.getInt("volume", 0);
                        if (i6 == 0) {
                            return false;
                        }
                        return mediaRouteProviderService.c(messenger, i2, i3, i6);
                    case 9:
                        if (!(obj instanceof Intent)) {
                            return false;
                        }
                        return mediaRouteProviderService.a(messenger, i2, i3, (Intent) obj);
                    case 10:
                        if (obj != null && !(obj instanceof Bundle)) {
                            return false;
                        }
                        android.support.v7.media.b a2 = android.support.v7.media.b.a((Bundle) obj);
                        if (a2 == null || !a2.c()) {
                            a2 = null;
                        }
                        return mediaRouteProviderService.a(messenger, i2, a2);
                    default:
                        return false;
                }
            }
            return false;
        }
    }
}
