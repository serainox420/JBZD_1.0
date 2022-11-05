package android.support.v4.media;

import android.app.Service;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.app.n;
import android.support.v4.f.i;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f332a = Log.isLoggable("MBServiceCompat", 3);
    b c;
    MediaSessionCompat.Token e;
    final android.support.v4.f.a<IBinder, b> b = new android.support.v4.f.a<>();
    final g d = new g();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface e {
        IBinder a();

        void a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;

        void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle) throws RemoteException;

        void b() throws RemoteException;
    }

    public abstract a a(String str, int i, Bundle bundle);

    public abstract void a(String str, c<List<MediaBrowserCompat.MediaItem>> cVar);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class g extends Handler {
        private final d b;

        g() {
            this.b = new d();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    this.b.a(data.getString("data_package_name"), data.getInt("data_calling_uid"), data.getBundle("data_root_hints"), new f(message.replyTo));
                    return;
                case 2:
                    this.b.a(new f(message.replyTo));
                    return;
                case 3:
                    this.b.a(data.getString("data_media_item_id"), n.a(data, "data_callback_token"), data.getBundle("data_options"), new f(message.replyTo));
                    return;
                case 4:
                    this.b.a(data.getString("data_media_item_id"), n.a(data, "data_callback_token"), new f(message.replyTo));
                    return;
                case 5:
                    this.b.a(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new f(message.replyTo));
                    return;
                case 6:
                    this.b.a(new f(message.replyTo), data.getBundle("data_root_hints"));
                    return;
                case 7:
                    this.b.b(new f(message.replyTo));
                    return;
                case 8:
                    this.b.a(data.getString("data_search_query"), data.getBundle("data_search_extras"), (ResultReceiver) data.getParcelable("data_result_receiver"), new f(message.replyTo));
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 1\n  Client version: " + message.arg1);
                    return;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            return super.sendMessageAtTime(message, j);
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        String f337a;
        Bundle b;
        e c;
        a d;
        HashMap<String, List<i<IBinder, Bundle>>> e = new HashMap<>();

        b() {
        }
    }

    /* loaded from: classes.dex */
    public static class c<T> {

        /* renamed from: a  reason: collision with root package name */
        private Object f338a;
        private boolean b;
        private boolean c;
        private int d;

        c(Object obj) {
            this.f338a = obj;
        }

        public void a(T t) {
            if (this.c) {
                throw new IllegalStateException("sendResult() called twice for: " + this.f338a);
            }
            this.c = true;
            a(t, this.d);
        }

        boolean a() {
            return this.b || this.c;
        }

        void a(int i) {
            this.d = i;
        }

        void a(T t, int i) {
        }
    }

    /* loaded from: classes.dex */
    private class d {
        d() {
        }

        public void a(final String str, final int i, final Bundle bundle, final e eVar) {
            if (!MediaBrowserServiceCompat.this.a(str, i)) {
                throw new IllegalArgumentException("Package/uid mismatch: uid=" + i + " package=" + str);
            }
            MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.1
                @Override // java.lang.Runnable
                public void run() {
                    IBinder a2 = eVar.a();
                    MediaBrowserServiceCompat.this.b.remove(a2);
                    b bVar = new b();
                    bVar.f337a = str;
                    bVar.b = bundle;
                    bVar.c = eVar;
                    bVar.d = MediaBrowserServiceCompat.this.a(str, i, bundle);
                    if (bVar.d == null) {
                        Log.i("MBServiceCompat", "No root for client " + str + " from service " + getClass().getName());
                        try {
                            eVar.b();
                            return;
                        } catch (RemoteException e) {
                            Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + str);
                            return;
                        }
                    }
                    try {
                        MediaBrowserServiceCompat.this.b.put(a2, bVar);
                        if (MediaBrowserServiceCompat.this.e != null) {
                            eVar.a(bVar.d.a(), MediaBrowserServiceCompat.this.e, bVar.d.b());
                        }
                    } catch (RemoteException e2) {
                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + str);
                        MediaBrowserServiceCompat.this.b.remove(a2);
                    }
                }
            });
        }

        public void a(final e eVar) {
            MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserServiceCompat.this.b.remove(eVar.a()) != null) {
                    }
                }
            });
        }

        public void a(final String str, final IBinder iBinder, final Bundle bundle, final e eVar) {
            MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.3
                @Override // java.lang.Runnable
                public void run() {
                    b bVar = MediaBrowserServiceCompat.this.b.get(eVar.a());
                    if (bVar == null) {
                        Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + str);
                    } else {
                        MediaBrowserServiceCompat.this.a(str, bVar, iBinder, bundle);
                    }
                }
            });
        }

        public void a(final String str, final IBinder iBinder, final e eVar) {
            MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.4
                @Override // java.lang.Runnable
                public void run() {
                    b bVar = MediaBrowserServiceCompat.this.b.get(eVar.a());
                    if (bVar == null) {
                        Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + str);
                    } else if (!MediaBrowserServiceCompat.this.a(str, bVar, iBinder)) {
                        Log.w("MBServiceCompat", "removeSubscription called for " + str + " which is not subscribed");
                    }
                }
            });
        }

        public void a(final String str, final ResultReceiver resultReceiver, final e eVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.5
                    @Override // java.lang.Runnable
                    public void run() {
                        b bVar = MediaBrowserServiceCompat.this.b.get(eVar.a());
                        if (bVar == null) {
                            Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + str);
                        } else {
                            MediaBrowserServiceCompat.this.a(str, bVar, resultReceiver);
                        }
                    }
                });
            }
        }

        public void a(final e eVar, final Bundle bundle) {
            MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.6
                @Override // java.lang.Runnable
                public void run() {
                    IBinder a2 = eVar.a();
                    MediaBrowserServiceCompat.this.b.remove(a2);
                    b bVar = new b();
                    bVar.c = eVar;
                    bVar.b = bundle;
                    MediaBrowserServiceCompat.this.b.put(a2, bVar);
                }
            });
        }

        public void b(final e eVar) {
            MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.7
                @Override // java.lang.Runnable
                public void run() {
                    MediaBrowserServiceCompat.this.b.remove(eVar.a());
                }
            });
        }

        public void a(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final e eVar) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.d.a(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.d.8
                    @Override // java.lang.Runnable
                    public void run() {
                        b bVar = MediaBrowserServiceCompat.this.b.get(eVar.a());
                        if (bVar == null) {
                            Log.w("MBServiceCompat", "search for callback that isn't registered query=" + str);
                        } else {
                            MediaBrowserServiceCompat.this.a(str, bundle, bVar, resultReceiver);
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes.dex */
    private class f implements e {

        /* renamed from: a  reason: collision with root package name */
        final Messenger f348a;

        f(Messenger messenger) {
            this.f348a = messenger;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.e
        public IBinder a() {
            return this.f348a.getBinder();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.e
        public void a(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt("extra_service_version", 1);
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putParcelable("data_media_session_token", token);
            bundle2.putBundle("data_root_hints", bundle);
            a(1, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.e
        public void b() throws RemoteException {
            a(2, null);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.e
        public void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putBundle("data_options", bundle);
            if (list != null) {
                bundle2.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            a(3, bundle2);
        }

        private void a(int i, Bundle bundle) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            this.f348a.send(obtain);
        }
    }

    public void a(String str, c<List<MediaBrowserCompat.MediaItem>> cVar, Bundle bundle) {
        cVar.a(1);
        a(str, cVar);
    }

    public void b(String str, c<MediaBrowserCompat.MediaItem> cVar) {
        cVar.a(2);
        cVar.a((c<MediaBrowserCompat.MediaItem>) null);
    }

    public void a(String str, Bundle bundle, c<List<MediaBrowserCompat.MediaItem>> cVar) {
        cVar.a(4);
        cVar.a((c<List<MediaBrowserCompat.MediaItem>>) null);
    }

    boolean a(String str, int i) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    void a(String str, b bVar, IBinder iBinder, Bundle bundle) {
        List<i<IBinder, Bundle>> list = bVar.e.get(str);
        ArrayList arrayList = list == null ? new ArrayList() : list;
        for (i<IBinder, Bundle> iVar : arrayList) {
            if (iBinder == iVar.f325a && android.support.v4.media.a.a(bundle, iVar.b)) {
                return;
            }
        }
        arrayList.add(new i<>(iBinder, bundle));
        bVar.e.put(str, arrayList);
        a(str, bVar, bundle);
    }

    boolean a(String str, b bVar, IBinder iBinder) {
        boolean z;
        if (iBinder == null) {
            return bVar.e.remove(str) != null;
        }
        List<i<IBinder, Bundle>> list = bVar.e.get(str);
        if (list != null) {
            Iterator<i<IBinder, Bundle>> it = list.iterator();
            z = false;
            while (it.hasNext()) {
                if (iBinder == it.next().f325a) {
                    it.remove();
                    z = true;
                }
            }
            if (list.size() == 0) {
                bVar.e.remove(str);
            }
        } else {
            z = false;
        }
        return z;
    }

    void a(final String str, final b bVar, final Bundle bundle) {
        c<List<MediaBrowserCompat.MediaItem>> cVar = new c<List<MediaBrowserCompat.MediaItem>>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // android.support.v4.media.MediaBrowserServiceCompat.c
            public void a(List<MediaBrowserCompat.MediaItem> list, int i) {
                if (MediaBrowserServiceCompat.this.b.get(bVar.c.a()) != bVar) {
                    if (MediaBrowserServiceCompat.f332a) {
                        Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + bVar.f337a + " id=" + str);
                        return;
                    }
                    return;
                }
                if ((i & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.a(list, bundle);
                }
                try {
                    bVar.c.a(str, list, bundle);
                } catch (RemoteException e2) {
                    Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + str + " package=" + bVar.f337a);
                }
            }
        };
        this.c = bVar;
        if (bundle == null) {
            a(str, cVar);
        } else {
            a(str, cVar, bundle);
        }
        this.c = null;
        if (!cVar.a()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + bVar.f337a + " id=" + str);
        }
    }

    List<MediaBrowserCompat.MediaItem> a(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i != -1 || i2 != -1) {
            int i3 = i2 * i;
            int i4 = i3 + i2;
            if (i < 0 || i2 < 1 || i3 >= list.size()) {
                return Collections.EMPTY_LIST;
            }
            if (i4 > list.size()) {
                i4 = list.size();
            }
            return list.subList(i3, i4);
        }
        return list;
    }

    void a(String str, b bVar, final ResultReceiver resultReceiver) {
        c<MediaBrowserCompat.MediaItem> cVar = new c<MediaBrowserCompat.MediaItem>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // android.support.v4.media.MediaBrowserServiceCompat.c
            public void a(MediaBrowserCompat.MediaItem mediaItem, int i) {
                if ((i & 2) != 0) {
                    resultReceiver.b(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("media_item", mediaItem);
                resultReceiver.b(0, bundle);
            }
        };
        this.c = bVar;
        b(str, cVar);
        this.c = null;
        if (!cVar.a()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
        }
    }

    void a(String str, Bundle bundle, b bVar, final ResultReceiver resultReceiver) {
        c<List<MediaBrowserCompat.MediaItem>> cVar = new c<List<MediaBrowserCompat.MediaItem>>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // android.support.v4.media.MediaBrowserServiceCompat.c
            public void a(List<MediaBrowserCompat.MediaItem> list, int i) {
                if ((i & 4) != 0 || list == null) {
                    resultReceiver.b(-1, null);
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
                resultReceiver.b(0, bundle2);
            }
        };
        this.c = bVar;
        a(str, bundle, cVar);
        this.c = null;
        if (!cVar.a()) {
            throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
        }
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f336a;
        private final Bundle b;

        public String a() {
            return this.f336a;
        }

        public Bundle b() {
            return this.b;
        }
    }
}
