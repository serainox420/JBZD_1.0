package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.app.SupportActivity;
import android.support.v4.app.n;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.support.v4.media.session.c;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public final class MediaControllerCompat {

    /* renamed from: a  reason: collision with root package name */
    private final c f358a;
    private final MediaSessionCompat.Token b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface c {
        h a();

        void a(a aVar);

        void a(a aVar, Handler handler);

        PlaybackStateCompat b();

        MediaMetadataCompat c();

        PendingIntent d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends SupportActivity.a {

        /* renamed from: a  reason: collision with root package name */
        private final MediaControllerCompat f370a;

        b(MediaControllerCompat mediaControllerCompat) {
            this.f370a = mediaControllerCompat;
        }

        MediaControllerCompat a() {
            return this.f370a;
        }
    }

    public static void a(Activity activity, MediaControllerCompat mediaControllerCompat) {
        if (activity instanceof SupportActivity) {
            ((SupportActivity) activity).putExtraData(new b(mediaControllerCompat));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Object obj = null;
            if (mediaControllerCompat != null) {
                obj = android.support.v4.media.session.c.a((Context) activity, mediaControllerCompat.e().a());
            }
            android.support.v4.media.session.c.a(activity, obj);
        }
    }

    public static MediaControllerCompat a(Activity activity) {
        Object a2;
        if (activity instanceof SupportActivity) {
            b bVar = (b) ((SupportActivity) activity).getExtraData(b.class);
            return bVar != null ? bVar.a() : null;
        } else if (Build.VERSION.SDK_INT < 21 || (a2 = android.support.v4.media.session.c.a(activity)) == null) {
            return null;
        } else {
            try {
                return new MediaControllerCompat(activity, MediaSessionCompat.Token.a(android.support.v4.media.session.c.a(a2)));
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in getMediaController.", e2);
                return null;
            }
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        if (mediaSessionCompat == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        this.b = mediaSessionCompat.c();
        if (Build.VERSION.SDK_INT >= 24) {
            this.f358a = new e(context, mediaSessionCompat);
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f358a = new d(context, mediaSessionCompat);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f358a = new MediaControllerImplApi21(context, mediaSessionCompat);
        } else {
            this.f358a = new f(this.b);
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) throws RemoteException {
        if (token == null) {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
        this.b = token;
        if (Build.VERSION.SDK_INT >= 24) {
            this.f358a = new e(context, token);
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f358a = new d(context, token);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f358a = new MediaControllerImplApi21(context, token);
        } else {
            this.f358a = new f(this.b);
        }
    }

    public h a() {
        return this.f358a.a();
    }

    public PlaybackStateCompat b() {
        return this.f358a.b();
    }

    public MediaMetadataCompat c() {
        return this.f358a.c();
    }

    public PendingIntent d() {
        return this.f358a.d();
    }

    public MediaSessionCompat.Token e() {
        return this.b;
    }

    public void a(a aVar) {
        a(aVar, (Handler) null);
    }

    public void a(a aVar, Handler handler) {
        if (aVar == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        if (handler == null) {
            handler = new Handler();
        }
        this.f358a.a(aVar, handler);
    }

    public void b(a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        this.f358a.a(aVar);
    }

    /* loaded from: classes.dex */
    public static abstract class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        HandlerC0021a f366a;
        boolean b;
        boolean c = false;
        private final Object d;

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.d = android.support.v4.media.session.c.a((c.a) new b());
            } else {
                this.d = new c();
            }
        }

        public void a() {
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void a(List<MediaSessionCompat.QueueItem> list) {
        }

        public void a(CharSequence charSequence) {
        }

        public void a(Bundle bundle) {
        }

        public void a(g gVar) {
        }

        public void a(int i) {
        }

        public void a(boolean z) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Handler handler) {
            this.f366a = new HandlerC0021a(handler.getLooper());
        }

        /* loaded from: classes.dex */
        private class b implements c.a {
            b() {
            }

            @Override // android.support.v4.media.session.c.a
            public void a() {
                a.this.a();
            }

            @Override // android.support.v4.media.session.c.a
            public void a(String str, Bundle bundle) {
                if (!a.this.b || Build.VERSION.SDK_INT >= 23) {
                    a.this.a(str, bundle);
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(Object obj) {
                if (!a.this.b) {
                    a.this.a(PlaybackStateCompat.a(obj));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void b(Object obj) {
                a.this.a(MediaMetadataCompat.a(obj));
            }

            @Override // android.support.v4.media.session.c.a
            public void a(List<?> list) {
                a.this.a(MediaSessionCompat.QueueItem.a(list));
            }

            @Override // android.support.v4.media.session.c.a
            public void a(CharSequence charSequence) {
                a.this.a(charSequence);
            }

            @Override // android.support.v4.media.session.c.a
            public void a(Bundle bundle) {
                a.this.a(bundle);
            }

            @Override // android.support.v4.media.session.c.a
            public void a(int i, int i2, int i3, int i4, int i5) {
                a.this.a(new g(i, i2, i3, i4, i5));
            }
        }

        /* loaded from: classes.dex */
        private class c extends a.AbstractBinderC0023a {
            c() {
            }

            @Override // android.support.v4.media.session.a
            public void a(String str, Bundle bundle) throws RemoteException {
                a.this.f366a.a(1, str, bundle);
            }

            @Override // android.support.v4.media.session.a
            public void a() throws RemoteException {
                a.this.f366a.a(8, null, null);
            }

            @Override // android.support.v4.media.session.a
            public void a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a.this.f366a.a(2, playbackStateCompat, null);
            }

            @Override // android.support.v4.media.session.a
            public void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                a.this.f366a.a(3, mediaMetadataCompat, null);
            }

            @Override // android.support.v4.media.session.a
            public void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                a.this.f366a.a(5, list, null);
            }

            @Override // android.support.v4.media.session.a
            public void a(CharSequence charSequence) throws RemoteException {
                a.this.f366a.a(6, charSequence, null);
            }

            @Override // android.support.v4.media.session.a
            public void a(int i) throws RemoteException {
                a.this.f366a.a(9, Integer.valueOf(i), null);
            }

            @Override // android.support.v4.media.session.a
            public void a(boolean z) throws RemoteException {
                a.this.f366a.a(10, Boolean.valueOf(z), null);
            }

            @Override // android.support.v4.media.session.a
            public void a(Bundle bundle) throws RemoteException {
                a.this.f366a.a(7, bundle, null);
            }

            @Override // android.support.v4.media.session.a
            public void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                a.this.f366a.a(4, parcelableVolumeInfo != null ? new g(parcelableVolumeInfo.f389a, parcelableVolumeInfo.b, parcelableVolumeInfo.c, parcelableVolumeInfo.d, parcelableVolumeInfo.e) : null, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class HandlerC0021a extends Handler {
            public HandlerC0021a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.c) {
                    switch (message.what) {
                        case 1:
                            a.this.a((String) message.obj, message.getData());
                            return;
                        case 2:
                            a.this.a((PlaybackStateCompat) message.obj);
                            return;
                        case 3:
                            a.this.a((MediaMetadataCompat) message.obj);
                            return;
                        case 4:
                            a.this.a((g) message.obj);
                            return;
                        case 5:
                            a.this.a((List) message.obj);
                            return;
                        case 6:
                            a.this.a((CharSequence) message.obj);
                            return;
                        case 7:
                            a.this.a((Bundle) message.obj);
                            return;
                        case 8:
                            a.this.a();
                            return;
                        case 9:
                            a.this.a(((Integer) message.obj).intValue());
                            return;
                        case 10:
                            a.this.a(((Boolean) message.obj).booleanValue());
                            return;
                        default:
                            return;
                    }
                }
            }

            public void a(int i, Object obj, Bundle bundle) {
                Message obtainMessage = obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class h {
        public abstract void a();

        public abstract void b();

        public abstract void c();

        h() {
        }
    }

    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final int f372a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;

        g(int i, int i2, int i3, int i4, int i5) {
            this.f372a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
        }
    }

    /* loaded from: classes.dex */
    static class f implements c {

        /* renamed from: a  reason: collision with root package name */
        private MediaSessionCompat.Token f371a;
        private android.support.v4.media.session.b b;
        private h c;

        public f(MediaSessionCompat.Token token) {
            this.f371a = token;
            this.b = b.a.a((IBinder) token.a());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public void a(a aVar, Handler handler) {
            if (aVar == null) {
                throw new IllegalArgumentException("callback may not be null.");
            }
            try {
                this.b.asBinder().linkToDeath(aVar, 0);
                this.b.a((android.support.v4.media.session.a) aVar.d);
                aVar.a(handler);
                aVar.c = true;
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                aVar.a();
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public void a(a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("callback may not be null.");
            }
            try {
                this.b.b((android.support.v4.media.session.a) aVar.d);
                this.b.asBinder().unlinkToDeath(aVar, 0);
                aVar.c = false;
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public h a() {
            if (this.c == null) {
                this.c = new l(this.b);
            }
            return this.c;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public PlaybackStateCompat b() {
            try {
                return this.b.h();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public MediaMetadataCompat c() {
            try {
                return this.b.g();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getMetadata.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public PendingIntent d() {
            try {
                return this.b.d();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getSessionActivity.", e);
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    static class l extends h {

        /* renamed from: a  reason: collision with root package name */
        private android.support.v4.media.session.b f374a;

        public l(android.support.v4.media.session.b bVar) {
            this.f374a = bVar;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.h
        public void a() {
            try {
                this.f374a.p();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in play.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.h
        public void b() {
            try {
                this.f374a.q();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in pause.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.h
        public void c() {
            try {
                this.f374a.r();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in stop.", e);
            }
        }
    }

    /* loaded from: classes.dex */
    static class MediaControllerImplApi21 implements c {

        /* renamed from: a  reason: collision with root package name */
        protected final Object f359a;
        private android.support.v4.media.session.b b;
        private HashMap<a, a> c = new HashMap<>();
        private List<a> d = new ArrayList();

        public MediaControllerImplApi21(Context context, MediaSessionCompat mediaSessionCompat) {
            this.f359a = android.support.v4.media.session.c.a(context, mediaSessionCompat.c().a());
            e();
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) throws RemoteException {
            this.f359a = android.support.v4.media.session.c.a(context, token.a());
            if (this.f359a == null) {
                throw new RemoteException();
            }
            e();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public final void a(a aVar, Handler handler) {
            android.support.v4.media.session.c.a(this.f359a, aVar.d, handler);
            if (this.b != null) {
                aVar.a(handler);
                a aVar2 = new a(aVar);
                this.c.put(aVar, aVar2);
                aVar.b = true;
                try {
                    this.b.a(aVar2);
                    return;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    return;
                }
            }
            aVar.a(handler);
            synchronized (this.d) {
                this.d.add(aVar);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public final void a(a aVar) {
            android.support.v4.media.session.c.a(this.f359a, aVar.d);
            if (this.b != null) {
                try {
                    a remove = this.c.remove(aVar);
                    if (remove != null) {
                        this.b.b(remove);
                        return;
                    }
                    return;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
                    return;
                }
            }
            synchronized (this.d) {
                this.d.remove(aVar);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public h a() {
            Object b = android.support.v4.media.session.c.b(this.f359a);
            if (b != null) {
                return new i(b);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public PlaybackStateCompat b() {
            if (this.b != null) {
                try {
                    return this.b.h();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
                }
            }
            Object c = android.support.v4.media.session.c.c(this.f359a);
            if (c != null) {
                return PlaybackStateCompat.a(c);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public MediaMetadataCompat c() {
            Object d = android.support.v4.media.session.c.d(this.f359a);
            if (d != null) {
                return MediaMetadataCompat.a(d);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.c
        public PendingIntent d() {
            return android.support.v4.media.session.c.e(this.f359a);
        }

        public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
            android.support.v4.media.session.c.a(this.f359a, str, bundle, resultReceiver);
        }

        private void e() {
            a("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this, new Handler()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            if (this.b != null) {
                synchronized (this.d) {
                    for (a aVar : this.d) {
                        a aVar2 = new a(aVar);
                        this.c.put(aVar, aVar2);
                        aVar.b = true;
                        try {
                            this.b.a(aVar2);
                        } catch (RemoteException e) {
                            Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                        }
                    }
                    this.d.clear();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: a  reason: collision with root package name */
            private WeakReference<MediaControllerImplApi21> f360a;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21, Handler handler) {
                super(handler);
                this.f360a = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f360a.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    mediaControllerImplApi21.b = b.a.a(n.a(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
                    mediaControllerImplApi21.f();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class a extends a.AbstractBinderC0023a {
            private a b;

            a(a aVar) {
                this.b = aVar;
            }

            @Override // android.support.v4.media.session.a
            public void a(final String str, final Bundle bundle) throws RemoteException {
                this.b.f366a.post(new Runnable() { // from class: android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(str, bundle);
                    }
                });
            }

            @Override // android.support.v4.media.session.a
            public void a() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void a(final PlaybackStateCompat playbackStateCompat) throws RemoteException {
                this.b.f366a.post(new Runnable() { // from class: android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(playbackStateCompat);
                    }
                });
            }

            @Override // android.support.v4.media.session.a
            public void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void a(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void a(final int i) throws RemoteException {
                this.b.f366a.post(new Runnable() { // from class: android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(i);
                    }
                });
            }

            @Override // android.support.v4.media.session.a
            public void a(final boolean z) throws RemoteException {
                this.b.f366a.post(new Runnable() { // from class: android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(z);
                    }
                });
            }

            @Override // android.support.v4.media.session.a
            public void a(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }
        }
    }

    /* loaded from: classes.dex */
    static class i extends h {

        /* renamed from: a  reason: collision with root package name */
        protected final Object f373a;

        public i(Object obj) {
            this.f373a = obj;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.h
        public void a() {
            c.d.a(this.f373a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.h
        public void b() {
            c.d.b(this.f373a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.h
        public void c() {
            c.d.c(this.f373a);
        }
    }

    /* loaded from: classes.dex */
    static class d extends MediaControllerImplApi21 {
        public d(Context context, MediaSessionCompat mediaSessionCompat) {
            super(context, mediaSessionCompat);
        }

        public d(Context context, MediaSessionCompat.Token token) throws RemoteException {
            super(context, token);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21, android.support.v4.media.session.MediaControllerCompat.c
        public h a() {
            Object b = android.support.v4.media.session.c.b(this.f359a);
            if (b != null) {
                return new j(b);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static class j extends i {
        public j(Object obj) {
            super(obj);
        }
    }

    /* loaded from: classes.dex */
    static class e extends d {
        public e(Context context, MediaSessionCompat mediaSessionCompat) {
            super(context, mediaSessionCompat);
        }

        public e(Context context, MediaSessionCompat.Token token) throws RemoteException {
            super(context, token);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.d, android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21, android.support.v4.media.session.MediaControllerCompat.c
        public h a() {
            Object b = android.support.v4.media.session.c.b(this.f359a);
            if (b != null) {
                return new k(b);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static class k extends j {
        public k(Object obj) {
            super(obj);
        }
    }
}
