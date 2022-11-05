package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.app.n;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.f;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.media.session.b;
import android.support.v4.media.session.f;
import android.support.v4.media.session.g;
import android.support.v4.media.session.h;
import android.support.v4.media.session.i;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class MediaSessionCompat {

    /* renamed from: a  reason: collision with root package name */
    static int f375a;
    private final b b;
    private final MediaControllerCompat c;
    private final ArrayList<e> d = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        void a(int i);

        void a(PendingIntent pendingIntent);

        void a(MediaMetadataCompat mediaMetadataCompat);

        void a(android.support.v4.media.f fVar);

        void a(a aVar, Handler handler);

        void a(PlaybackStateCompat playbackStateCompat);

        void a(boolean z);

        boolean a();

        void b();

        void b(int i);

        void b(PendingIntent pendingIntent);

        Token c();

        Object d();
    }

    /* loaded from: classes.dex */
    public interface e {
        void a();
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        if (componentName == null && (componentName = MediaButtonReceiver.a(context)) == null) {
            Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
        }
        if (componentName != null && pendingIntent == null) {
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setComponent(componentName);
            pendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.b = new c(context, str);
            this.b.b(pendingIntent);
            a(new a() { // from class: android.support.v4.media.session.MediaSessionCompat.1
            });
        } else {
            this.b = new d(context, str, componentName, pendingIntent);
        }
        this.c = new MediaControllerCompat(context, this);
        if (f375a == 0) {
            f375a = (int) TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics());
        }
    }

    public void a(a aVar) {
        a(aVar, null);
    }

    public void a(a aVar, Handler handler) {
        b bVar = this.b;
        if (handler == null) {
            handler = new Handler();
        }
        bVar.a(aVar, handler);
    }

    public void a(PendingIntent pendingIntent) {
        this.b.a(pendingIntent);
    }

    public void a(int i) {
        this.b.a(i);
    }

    public void b(int i) {
        this.b.b(i);
    }

    public void a(android.support.v4.media.f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("volumeProvider may not be null!");
        }
        this.b.a(fVar);
    }

    public void a(boolean z) {
        this.b.a(z);
        Iterator<e> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public boolean a() {
        return this.b.a();
    }

    public void b() {
        this.b.b();
    }

    public Token c() {
        return this.b.c();
    }

    public MediaControllerCompat d() {
        return this.c;
    }

    public void a(PlaybackStateCompat playbackStateCompat) {
        this.b.a(playbackStateCompat);
    }

    public void a(MediaMetadataCompat mediaMetadataCompat) {
        this.b.a(mediaMetadataCompat);
    }

    public Object e() {
        return this.b.d();
    }

    public void a(e eVar) {
        if (eVar == null) {
            throw new IllegalArgumentException("Listener may not be null");
        }
        this.d.add(eVar);
    }

    public void b(e eVar) {
        if (eVar == null) {
            throw new IllegalArgumentException("Listener may not be null");
        }
        this.d.remove(eVar);
    }

    /* loaded from: classes.dex */
    public static abstract class a {
        final Object mCallbackObj;
        WeakReference<b> mSessionImpl;

        public a() {
            if (Build.VERSION.SDK_INT >= 24) {
                this.mCallbackObj = i.a(new c());
            } else if (Build.VERSION.SDK_INT >= 23) {
                this.mCallbackObj = h.a(new b());
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.mCallbackObj = g.a((g.a) new C0022a());
            } else {
                this.mCallbackObj = null;
            }
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public boolean onMediaButtonEvent(Intent intent) {
            return false;
        }

        public void onPrepare() {
        }

        public void onPrepareFromMediaId(String str, Bundle bundle) {
        }

        public void onPrepareFromSearch(String str, Bundle bundle) {
        }

        public void onPrepareFromUri(Uri uri, Bundle bundle) {
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
        }

        public void onSkipToQueueItem(long j) {
        }

        public void onPause() {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onFastForward() {
        }

        public void onRewind() {
        }

        public void onStop() {
        }

        public void onSeekTo(long j) {
        }

        public void onSetRating(RatingCompat ratingCompat) {
        }

        public void onSetRepeatMode(int i) {
        }

        public void onSetShuffleModeEnabled(boolean z) {
        }

        public void onCustomAction(String str, Bundle bundle) {
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onRemoveQueueItemAt(int i) {
        }

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private class C0022a implements g.a {
            C0022a() {
            }

            @Override // android.support.v4.media.session.g.a
            public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                    c cVar = (c) a.this.mSessionImpl.get();
                    if (cVar != null) {
                        Bundle bundle2 = new Bundle();
                        n.a(bundle2, "android.support.v4.media.session.EXTRA_BINDER", cVar.e());
                        resultReceiver.send(0, bundle2);
                    }
                } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                    bundle.setClassLoader(MediaDescriptionCompat.class.getClassLoader());
                    a.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                    bundle.setClassLoader(MediaDescriptionCompat.class.getClassLoader());
                    a.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                    bundle.setClassLoader(MediaDescriptionCompat.class.getClassLoader());
                    a.this.onRemoveQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                    a.this.onRemoveQueueItemAt(bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                } else {
                    a.this.onCommand(str, bundle, resultReceiver);
                }
            }

            @Override // android.support.v4.media.session.g.a
            public boolean a(Intent intent) {
                return a.this.onMediaButtonEvent(intent);
            }

            @Override // android.support.v4.media.session.g.a
            public void a() {
                a.this.onPlay();
            }

            @Override // android.support.v4.media.session.g.a
            public void a(String str, Bundle bundle) {
                a.this.onPlayFromMediaId(str, bundle);
            }

            @Override // android.support.v4.media.session.g.a
            public void b(String str, Bundle bundle) {
                a.this.onPlayFromSearch(str, bundle);
            }

            @Override // android.support.v4.media.session.g.a
            public void a(long j) {
                a.this.onSkipToQueueItem(j);
            }

            @Override // android.support.v4.media.session.g.a
            public void b() {
                a.this.onPause();
            }

            @Override // android.support.v4.media.session.g.a
            public void c() {
                a.this.onSkipToNext();
            }

            @Override // android.support.v4.media.session.g.a
            public void d() {
                a.this.onSkipToPrevious();
            }

            @Override // android.support.v4.media.session.g.a
            public void e() {
                a.this.onFastForward();
            }

            @Override // android.support.v4.media.session.g.a
            public void f() {
                a.this.onRewind();
            }

            @Override // android.support.v4.media.session.g.a
            public void g() {
                a.this.onStop();
            }

            @Override // android.support.v4.media.session.e.a
            public void b(long j) {
                a.this.onSeekTo(j);
            }

            @Override // android.support.v4.media.session.f.a
            public void a(Object obj) {
                a.this.onSetRating(RatingCompat.a(obj));
            }

            @Override // android.support.v4.media.session.g.a
            public void c(String str, Bundle bundle) {
                if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                    a.this.onPlayFromUri((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), (Bundle) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                    a.this.onPrepare();
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                    a.this.onPrepareFromMediaId(bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"), bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                    a.this.onPrepareFromSearch(bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY"), bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                    Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                    a.this.onPrepareFromUri((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                    a.this.onSetRepeatMode(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED")) {
                    a.this.onSetShuffleModeEnabled(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"));
                } else {
                    a.this.onCustomAction(str, bundle);
                }
            }
        }

        /* loaded from: classes.dex */
        private class b extends C0022a implements h.a {
            b() {
                super();
            }

            @Override // android.support.v4.media.session.h.a
            public void a(Uri uri, Bundle bundle) {
                a.this.onPlayFromUri(uri, bundle);
            }
        }

        /* loaded from: classes.dex */
        private class c extends b implements i.a {
            c() {
                super();
            }

            @Override // android.support.v4.media.session.i.a
            public void h() {
                a.this.onPrepare();
            }

            @Override // android.support.v4.media.session.i.a
            public void d(String str, Bundle bundle) {
                a.this.onPrepareFromMediaId(str, bundle);
            }

            @Override // android.support.v4.media.session.i.a
            public void e(String str, Bundle bundle) {
                a.this.onPrepareFromSearch(str, bundle);
            }

            @Override // android.support.v4.media.session.i.a
            public void b(Uri uri, Bundle bundle) {
                a.this.onPrepareFromUri(uri, bundle);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: android.support.v4.media.session.MediaSessionCompat.Token.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Token createFromParcel(Parcel parcel) {
                Object readStrongBinder;
                if (Build.VERSION.SDK_INT >= 21) {
                    readStrongBinder = parcel.readParcelable(null);
                } else {
                    readStrongBinder = parcel.readStrongBinder();
                }
                return new Token(readStrongBinder);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Token[] newArray(int i) {
                return new Token[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final Object f379a;

        Token(Object obj) {
            this.f379a = obj;
        }

        public static Token a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new Token(g.a(obj));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f379a, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f379a);
            }
        }

        public int hashCode() {
            if (this.f379a == null) {
                return 0;
            }
            return this.f379a.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            if (this.f379a == null) {
                return token.f379a == null;
            } else if (token.f379a != null) {
                return this.f379a.equals(token.f379a);
            } else {
                return false;
            }
        }

        public Object a() {
            return this.f379a;
        }
    }

    /* loaded from: classes.dex */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: android.support.v4.media.session.MediaSessionCompat.QueueItem.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final MediaDescriptionCompat f377a;
        private final long b;
        private Object c;

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (j == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.f377a = mediaDescriptionCompat;
            this.b = j;
            this.c = obj;
        }

        QueueItem(Parcel parcel) {
            this.f377a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.b = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f377a.writeToParcel(parcel, i);
            parcel.writeLong(this.b);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public static QueueItem a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.a(g.c.a(obj)), g.c.b(obj));
        }

        public static List<QueueItem> a(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
            return arrayList;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f377a + ", Id=" + this.b + " }";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() { // from class: android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private ResultReceiver f378a;

        ResultReceiverWrapper(Parcel parcel) {
            this.f378a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f378a.writeToParcel(parcel, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d implements b {
        private c A;

        /* renamed from: a  reason: collision with root package name */
        final String f383a;
        final String b;
        final AudioManager c;
        volatile a g;
        int h;
        MediaMetadataCompat i;
        PlaybackStateCompat j;
        PendingIntent k;
        List<QueueItem> l;
        CharSequence m;
        int n;
        int o;
        boolean p;
        Bundle q;
        int r;
        int s;
        android.support.v4.media.f t;
        private final Context u;
        private final ComponentName v;
        private final PendingIntent w;
        private final Object x;
        private final b y;
        private final Token z;
        final Object d = new Object();
        final RemoteCallbackList<android.support.v4.media.session.a> e = new RemoteCallbackList<>();
        boolean f = false;
        private boolean B = false;
        private boolean C = false;
        private boolean D = false;
        private f.a E = new f.a() { // from class: android.support.v4.media.session.MediaSessionCompat.d.1
            @Override // android.support.v4.media.f.a
            public void a(android.support.v4.media.f fVar) {
                if (d.this.t == fVar) {
                    d.this.a(new ParcelableVolumeInfo(d.this.r, d.this.s, fVar.b(), fVar.c(), fVar.a()));
                }
            }
        };

        public d(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            if (componentName == null) {
                throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
            }
            this.u = context;
            this.f383a = context.getPackageName();
            this.c = (AudioManager) context.getSystemService("audio");
            this.b = str;
            this.v = componentName;
            this.w = pendingIntent;
            this.y = new b();
            this.z = new Token(this.y);
            this.n = 0;
            this.r = 1;
            this.s = 3;
            if (Build.VERSION.SDK_INT >= 14) {
                this.x = android.support.v4.media.session.d.a(pendingIntent);
            } else {
                this.x = null;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(a aVar, Handler handler) {
            this.g = aVar;
            if (aVar == null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    android.support.v4.media.session.e.a(this.x, (Object) null);
                }
                if (Build.VERSION.SDK_INT >= 19) {
                    f.a(this.x, (Object) null);
                    return;
                }
                return;
            }
            if (handler == null) {
                handler = new Handler();
            }
            synchronized (this.d) {
                this.A = new c(handler.getLooper());
            }
            f.a aVar2 = new f.a() { // from class: android.support.v4.media.session.MediaSessionCompat.d.2
                @Override // android.support.v4.media.session.f.a
                public void a(Object obj) {
                    d.this.a(19, RatingCompat.a(obj));
                }

                @Override // android.support.v4.media.session.e.a
                public void b(long j) {
                    d.this.a(18, Long.valueOf(j));
                }
            };
            if (Build.VERSION.SDK_INT >= 18) {
                android.support.v4.media.session.e.a(this.x, android.support.v4.media.session.e.a(aVar2));
            }
            if (Build.VERSION.SDK_INT >= 19) {
                f.a(this.x, f.a(aVar2));
            }
        }

        void c(int i) {
            a(i, (Object) null);
        }

        void a(int i, int i2) {
            a(i, (Object) null, i2);
        }

        void a(int i, Object obj) {
            a(i, obj, (Bundle) null);
        }

        void a(int i, Object obj, int i2) {
            synchronized (this.d) {
                if (this.A != null) {
                    this.A.a(i, obj, i2);
                }
            }
        }

        void a(int i, Object obj, Bundle bundle) {
            synchronized (this.d) {
                if (this.A != null) {
                    this.A.a(i, obj, bundle);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(int i) {
            synchronized (this.d) {
                this.h = i;
            }
            f();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void b(int i) {
            if (this.t != null) {
                this.t.a((f.a) null);
            }
            this.r = 1;
            a(new ParcelableVolumeInfo(this.r, this.s, 2, this.c.getStreamMaxVolume(this.s), this.c.getStreamVolume(this.s)));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(android.support.v4.media.f fVar) {
            if (fVar == null) {
                throw new IllegalArgumentException("volumeProvider may not be null");
            }
            if (this.t != null) {
                this.t.a((f.a) null);
            }
            this.r = 2;
            this.t = fVar;
            a(new ParcelableVolumeInfo(this.r, this.s, this.t.b(), this.t.c(), this.t.a()));
            fVar.a(this.E);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(boolean z) {
            if (z != this.B) {
                this.B = z;
                if (f()) {
                    a(this.i);
                    a(this.j);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public boolean a() {
            return this.B;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void b() {
            this.B = false;
            this.f = true;
            f();
            g();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public Token c() {
            return this.z;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.d) {
                this.j = playbackStateCompat;
            }
            b(playbackStateCompat);
            if (this.B) {
                if (playbackStateCompat == null) {
                    if (Build.VERSION.SDK_INT >= 14) {
                        android.support.v4.media.session.d.a(this.x, 0);
                        android.support.v4.media.session.d.a(this.x, 0L);
                        return;
                    }
                    return;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    android.support.v4.media.session.e.a(this.x, playbackStateCompat.a(), playbackStateCompat.b(), playbackStateCompat.c(), playbackStateCompat.e());
                } else if (Build.VERSION.SDK_INT >= 14) {
                    android.support.v4.media.session.d.a(this.x, playbackStateCompat.a());
                }
                if (Build.VERSION.SDK_INT >= 19) {
                    f.a(this.x, playbackStateCompat.d());
                } else if (Build.VERSION.SDK_INT >= 18) {
                    android.support.v4.media.session.e.a(this.x, playbackStateCompat.d());
                } else if (Build.VERSION.SDK_INT >= 14) {
                    android.support.v4.media.session.d.a(this.x, playbackStateCompat.d());
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(MediaMetadataCompat mediaMetadataCompat) {
            Bundle bundle = null;
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new MediaMetadataCompat.a(mediaMetadataCompat, MediaSessionCompat.f375a).a();
            }
            synchronized (this.d) {
                this.i = mediaMetadataCompat;
            }
            b(mediaMetadataCompat);
            if (this.B) {
                if (Build.VERSION.SDK_INT >= 19) {
                    Object obj = this.x;
                    if (mediaMetadataCompat != null) {
                        bundle = mediaMetadataCompat.b();
                    }
                    f.a(obj, bundle, this.j == null ? 0L : this.j.d());
                } else if (Build.VERSION.SDK_INT >= 14) {
                    Object obj2 = this.x;
                    if (mediaMetadataCompat != null) {
                        bundle = mediaMetadataCompat.b();
                    }
                    android.support.v4.media.session.d.a(obj2, bundle);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(PendingIntent pendingIntent) {
            synchronized (this.d) {
                this.k = pendingIntent;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void b(PendingIntent pendingIntent) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public Object d() {
            return this.x;
        }

        private boolean f() {
            if (this.B) {
                if (!this.D && (this.h & 1) != 0) {
                    if (Build.VERSION.SDK_INT >= 18) {
                        android.support.v4.media.session.e.a(this.u, this.w, this.v);
                    } else {
                        ((AudioManager) this.u.getSystemService("audio")).registerMediaButtonEventReceiver(this.v);
                    }
                    this.D = true;
                } else if (this.D && (this.h & 1) == 0) {
                    if (Build.VERSION.SDK_INT >= 18) {
                        android.support.v4.media.session.e.b(this.u, this.w, this.v);
                    } else {
                        ((AudioManager) this.u.getSystemService("audio")).unregisterMediaButtonEventReceiver(this.v);
                    }
                    this.D = false;
                }
                if (Build.VERSION.SDK_INT >= 14) {
                    if (!this.C && (this.h & 2) != 0) {
                        android.support.v4.media.session.d.a(this.u, this.x);
                        this.C = true;
                        return true;
                    } else if (this.C && (this.h & 2) == 0) {
                        android.support.v4.media.session.d.a(this.x, 0);
                        android.support.v4.media.session.d.b(this.u, this.x);
                        this.C = false;
                        return false;
                    }
                }
            } else {
                if (this.D) {
                    if (Build.VERSION.SDK_INT >= 18) {
                        android.support.v4.media.session.e.b(this.u, this.w, this.v);
                    } else {
                        ((AudioManager) this.u.getSystemService("audio")).unregisterMediaButtonEventReceiver(this.v);
                    }
                    this.D = false;
                }
                if (this.C) {
                    android.support.v4.media.session.d.a(this.x, 0);
                    android.support.v4.media.session.d.b(this.u, this.x);
                    this.C = false;
                }
            }
            return false;
        }

        void b(int i, int i2) {
            if (this.r == 2) {
                if (this.t != null) {
                    this.t.c(i);
                    return;
                }
                return;
            }
            this.c.adjustStreamVolume(this.s, i, i2);
        }

        void c(int i, int i2) {
            if (this.r == 2) {
                if (this.t != null) {
                    this.t.b(i);
                    return;
                }
                return;
            }
            this.c.setStreamVolume(this.s, i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        PlaybackStateCompat e() {
            PlaybackStateCompat playbackStateCompat;
            PlaybackStateCompat playbackStateCompat2;
            long j = -1;
            synchronized (this.d) {
                playbackStateCompat = this.j;
                if (this.i != null && this.i.a("android.media.metadata.DURATION")) {
                    j = this.i.d("android.media.metadata.DURATION");
                }
            }
            if (playbackStateCompat != null && (playbackStateCompat.a() == 3 || playbackStateCompat.a() == 4 || playbackStateCompat.a() == 5)) {
                long e = playbackStateCompat.e();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (e > 0) {
                    long c2 = (playbackStateCompat.c() * ((float) (elapsedRealtime - e))) + playbackStateCompat.b();
                    if (j < 0 || c2 <= j) {
                        j = c2 < 0 ? 0L : c2;
                    }
                    PlaybackStateCompat.a aVar = new PlaybackStateCompat.a(playbackStateCompat);
                    aVar.a(playbackStateCompat.a(), j, playbackStateCompat.c(), elapsedRealtime);
                    playbackStateCompat2 = aVar.a();
                    return playbackStateCompat2 != null ? playbackStateCompat : playbackStateCompat2;
                }
            }
            playbackStateCompat2 = null;
            if (playbackStateCompat2 != null) {
            }
        }

        void a(ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int beginBroadcast = this.e.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.e.getBroadcastItem(beginBroadcast).a(parcelableVolumeInfo);
                } catch (RemoteException e) {
                }
            }
            this.e.finishBroadcast();
        }

        private void g() {
            for (int beginBroadcast = this.e.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.e.getBroadcastItem(beginBroadcast).a();
                } catch (RemoteException e) {
                }
            }
            this.e.finishBroadcast();
            this.e.kill();
        }

        private void b(PlaybackStateCompat playbackStateCompat) {
            for (int beginBroadcast = this.e.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.e.getBroadcastItem(beginBroadcast).a(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.e.finishBroadcast();
        }

        private void b(MediaMetadataCompat mediaMetadataCompat) {
            for (int beginBroadcast = this.e.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.e.getBroadcastItem(beginBroadcast).a(mediaMetadataCompat);
                } catch (RemoteException e) {
                }
            }
            this.e.finishBroadcast();
        }

        /* loaded from: classes.dex */
        class b extends b.a {
            b() {
            }

            @Override // android.support.v4.media.session.b
            public void a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                d.this.a(1, new a(str, bundle, resultReceiverWrapper.f378a));
            }

            @Override // android.support.v4.media.session.b
            public boolean a(KeyEvent keyEvent) {
                boolean z = (d.this.h & 1) != 0;
                if (z) {
                    d.this.a(21, keyEvent);
                }
                return z;
            }

            @Override // android.support.v4.media.session.b
            public void a(android.support.v4.media.session.a aVar) {
                if (d.this.f) {
                    try {
                        aVar.a();
                        return;
                    } catch (Exception e) {
                        return;
                    }
                }
                d.this.e.register(aVar);
            }

            @Override // android.support.v4.media.session.b
            public void b(android.support.v4.media.session.a aVar) {
                d.this.e.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public String b() {
                return d.this.f383a;
            }

            @Override // android.support.v4.media.session.b
            public String c() {
                return d.this.b;
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent d() {
                PendingIntent pendingIntent;
                synchronized (d.this.d) {
                    pendingIntent = d.this.k;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.b
            public long e() {
                long j;
                synchronized (d.this.d) {
                    j = d.this.h;
                }
                return j;
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo f() {
                int i;
                int i2;
                int streamMaxVolume;
                int streamVolume;
                int i3 = 2;
                synchronized (d.this.d) {
                    i = d.this.r;
                    i2 = d.this.s;
                    android.support.v4.media.f fVar = d.this.t;
                    if (i == 2) {
                        i3 = fVar.b();
                        streamMaxVolume = fVar.c();
                        streamVolume = fVar.a();
                    } else {
                        streamMaxVolume = d.this.c.getStreamMaxVolume(i2);
                        streamVolume = d.this.c.getStreamVolume(i2);
                    }
                }
                return new ParcelableVolumeInfo(i, i2, i3, streamMaxVolume, streamVolume);
            }

            @Override // android.support.v4.media.session.b
            public void a(int i, int i2, String str) {
                d.this.b(i, i2);
            }

            @Override // android.support.v4.media.session.b
            public void b(int i, int i2, String str) {
                d.this.c(i, i2);
            }

            @Override // android.support.v4.media.session.b
            public void o() throws RemoteException {
                d.this.c(3);
            }

            @Override // android.support.v4.media.session.b
            public void a(String str, Bundle bundle) throws RemoteException {
                d.this.a(4, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void b(String str, Bundle bundle) throws RemoteException {
                d.this.a(5, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void a(Uri uri, Bundle bundle) throws RemoteException {
                d.this.a(6, uri, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void p() throws RemoteException {
                d.this.c(7);
            }

            @Override // android.support.v4.media.session.b
            public void c(String str, Bundle bundle) throws RemoteException {
                d.this.a(8, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void d(String str, Bundle bundle) throws RemoteException {
                d.this.a(9, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void b(Uri uri, Bundle bundle) throws RemoteException {
                d.this.a(10, uri, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void a(long j) {
                d.this.a(11, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.b
            public void q() throws RemoteException {
                d.this.c(12);
            }

            @Override // android.support.v4.media.session.b
            public void r() throws RemoteException {
                d.this.c(13);
            }

            @Override // android.support.v4.media.session.b
            public void s() throws RemoteException {
                d.this.c(14);
            }

            @Override // android.support.v4.media.session.b
            public void t() throws RemoteException {
                d.this.c(15);
            }

            @Override // android.support.v4.media.session.b
            public void u() throws RemoteException {
                d.this.c(16);
            }

            @Override // android.support.v4.media.session.b
            public void v() throws RemoteException {
                d.this.c(17);
            }

            @Override // android.support.v4.media.session.b
            public void b(long j) throws RemoteException {
                d.this.a(18, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.b
            public void a(RatingCompat ratingCompat) throws RemoteException {
                d.this.a(19, ratingCompat);
            }

            @Override // android.support.v4.media.session.b
            public void b(int i) throws RemoteException {
                d.this.a(23, i);
            }

            @Override // android.support.v4.media.session.b
            public void a(boolean z) throws RemoteException {
                d.this.a(24, Boolean.valueOf(z));
            }

            @Override // android.support.v4.media.session.b
            public void e(String str, Bundle bundle) throws RemoteException {
                d.this.a(20, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat g() {
                return d.this.i;
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat h() {
                return d.this.e();
            }

            @Override // android.support.v4.media.session.b
            public List<QueueItem> i() {
                List<QueueItem> list;
                synchronized (d.this.d) {
                    list = d.this.l;
                }
                return list;
            }

            @Override // android.support.v4.media.session.b
            public void a(MediaDescriptionCompat mediaDescriptionCompat) {
                d.this.a(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public void a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                d.this.a(26, mediaDescriptionCompat, i);
            }

            @Override // android.support.v4.media.session.b
            public void b(MediaDescriptionCompat mediaDescriptionCompat) {
                d.this.a(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public void a(int i) {
                d.this.a(28, i);
            }

            @Override // android.support.v4.media.session.b
            public CharSequence j() {
                return d.this.m;
            }

            @Override // android.support.v4.media.session.b
            public Bundle k() {
                Bundle bundle;
                synchronized (d.this.d) {
                    bundle = d.this.q;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.b
            public int l() {
                return d.this.n;
            }

            @Override // android.support.v4.media.session.b
            public int m() {
                return d.this.o;
            }

            @Override // android.support.v4.media.session.b
            public boolean n() {
                return d.this.p;
            }

            @Override // android.support.v4.media.session.b
            public boolean a() {
                return (d.this.h & 2) != 0;
            }
        }

        /* loaded from: classes.dex */
        private static final class a {

            /* renamed from: a  reason: collision with root package name */
            public final String f386a;
            public final Bundle b;
            public final ResultReceiver c;

            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f386a = str;
                this.b = bundle;
                this.c = resultReceiver;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class c extends Handler {
            public c(Looper looper) {
                super(looper);
            }

            public void a(int i, Object obj, Bundle bundle) {
                Message obtainMessage = obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }

            public void a(int i, Object obj, int i2) {
                obtainMessage(i, i2, 0, obj).sendToTarget();
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                a aVar = d.this.g;
                if (aVar != null) {
                    switch (message.what) {
                        case 1:
                            a aVar2 = (a) message.obj;
                            aVar.onCommand(aVar2.f386a, aVar2.b, aVar2.c);
                            return;
                        case 2:
                            d.this.b(message.arg1, 0);
                            return;
                        case 3:
                            aVar.onPrepare();
                            return;
                        case 4:
                            aVar.onPrepareFromMediaId((String) message.obj, message.getData());
                            return;
                        case 5:
                            aVar.onPrepareFromSearch((String) message.obj, message.getData());
                            return;
                        case 6:
                            aVar.onPrepareFromUri((Uri) message.obj, message.getData());
                            return;
                        case 7:
                            aVar.onPlay();
                            return;
                        case 8:
                            aVar.onPlayFromMediaId((String) message.obj, message.getData());
                            return;
                        case 9:
                            aVar.onPlayFromSearch((String) message.obj, message.getData());
                            return;
                        case 10:
                            aVar.onPlayFromUri((Uri) message.obj, message.getData());
                            return;
                        case 11:
                            aVar.onSkipToQueueItem(((Long) message.obj).longValue());
                            return;
                        case 12:
                            aVar.onPause();
                            return;
                        case 13:
                            aVar.onStop();
                            return;
                        case 14:
                            aVar.onSkipToNext();
                            return;
                        case 15:
                            aVar.onSkipToPrevious();
                            return;
                        case 16:
                            aVar.onFastForward();
                            return;
                        case 17:
                            aVar.onRewind();
                            return;
                        case 18:
                            aVar.onSeekTo(((Long) message.obj).longValue());
                            return;
                        case 19:
                            aVar.onSetRating((RatingCompat) message.obj);
                            return;
                        case 20:
                            aVar.onCustomAction((String) message.obj, message.getData());
                            return;
                        case 21:
                            KeyEvent keyEvent = (KeyEvent) message.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!aVar.onMediaButtonEvent(intent)) {
                                a(keyEvent, aVar);
                                return;
                            }
                            return;
                        case 22:
                            d.this.c(message.arg1, 0);
                            return;
                        case 23:
                            aVar.onSetRepeatMode(message.arg1);
                            return;
                        case 24:
                            aVar.onSetShuffleModeEnabled(((Boolean) message.obj).booleanValue());
                            return;
                        case 25:
                            aVar.onAddQueueItem((MediaDescriptionCompat) message.obj);
                            return;
                        case 26:
                            aVar.onAddQueueItem((MediaDescriptionCompat) message.obj, message.arg1);
                            return;
                        case 27:
                            aVar.onRemoveQueueItem((MediaDescriptionCompat) message.obj);
                            return;
                        case 28:
                            aVar.onRemoveQueueItemAt(message.arg1);
                            return;
                        default:
                            return;
                    }
                }
            }

            private void a(KeyEvent keyEvent, a aVar) {
                if (keyEvent != null && keyEvent.getAction() == 0) {
                    long d = d.this.j == null ? 0L : d.this.j.d();
                    switch (keyEvent.getKeyCode()) {
                        case 79:
                        case 85:
                            boolean z = d.this.j != null && d.this.j.a() == 3;
                            boolean z2 = (516 & d) != 0;
                            boolean z3 = (d & 514) != 0;
                            if (z && z3) {
                                aVar.onPause();
                                return;
                            } else if (!z && z2) {
                                aVar.onPlay();
                                return;
                            } else {
                                return;
                            }
                        case 86:
                            if ((d & 1) != 0) {
                                aVar.onStop();
                                return;
                            }
                            return;
                        case 87:
                            if ((d & 32) != 0) {
                                aVar.onSkipToNext();
                                return;
                            }
                            return;
                        case 88:
                            if ((d & 16) != 0) {
                                aVar.onSkipToPrevious();
                                return;
                            }
                            return;
                        case 89:
                            if ((d & 8) != 0) {
                                aVar.onRewind();
                                return;
                            }
                            return;
                        case 90:
                            if ((d & 64) != 0) {
                                aVar.onFastForward();
                                return;
                            }
                            return;
                        case 126:
                            if ((d & 4) != 0) {
                                aVar.onPlay();
                                return;
                            }
                            return;
                        case 127:
                            if ((d & 2) != 0) {
                                aVar.onPause();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    static class c implements b {

        /* renamed from: a  reason: collision with root package name */
        int f381a;
        int b;
        boolean c;
        private final Object d;
        private final Token e;
        private a g;
        private PlaybackStateCompat i;
        private boolean f = false;
        private final RemoteCallbackList<android.support.v4.media.session.a> h = new RemoteCallbackList<>();

        public c(Context context, String str) {
            this.d = g.a(context, str);
            this.e = new Token(g.d(this.d));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(a aVar, Handler handler) {
            g.a(this.d, aVar == null ? null : aVar.mCallbackObj, handler);
            if (aVar != null) {
                aVar.mSessionImpl = new WeakReference<>(this);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(int i) {
            g.a(this.d, i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void b(int i) {
            g.b(this.d, i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(android.support.v4.media.f fVar) {
            g.a(this.d, fVar.d());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(boolean z) {
            g.a(this.d, z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public boolean a() {
            return g.b(this.d);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void b() {
            this.f = true;
            g.c(this.d);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public Token c() {
            return this.e;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(PlaybackStateCompat playbackStateCompat) {
            this.i = playbackStateCompat;
            for (int beginBroadcast = this.h.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.h.getBroadcastItem(beginBroadcast).a(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.h.finishBroadcast();
            g.b(this.d, playbackStateCompat == null ? null : playbackStateCompat.f());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(MediaMetadataCompat mediaMetadataCompat) {
            g.c(this.d, mediaMetadataCompat == null ? null : mediaMetadataCompat.c());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void a(PendingIntent pendingIntent) {
            g.a(this.d, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public void b(PendingIntent pendingIntent) {
            g.b(this.d, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.b
        public Object d() {
            return null;
        }

        a e() {
            if (this.g == null) {
                this.g = new a();
            }
            return this.g;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends b.a {
            a() {
            }

            @Override // android.support.v4.media.session.b
            public void a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean a(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(android.support.v4.media.session.a aVar) {
                if (!c.this.f) {
                    c.this.h.register(aVar);
                }
            }

            @Override // android.support.v4.media.session.b
            public void b(android.support.v4.media.session.a aVar) {
                c.this.h.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public String b() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public String c() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent d() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public long e() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo f() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void b(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void o() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void b(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void p() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void c(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void d(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void b(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void q() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void r() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void s() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void t() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void u() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void v() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void b(long j) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(RatingCompat ratingCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void b(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(boolean z) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void e(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat g() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat h() {
                return c.this.i;
            }

            @Override // android.support.v4.media.session.b
            public List<QueueItem> i() {
                return null;
            }

            @Override // android.support.v4.media.session.b
            public void a(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void b(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public CharSequence j() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public Bundle k() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public int l() {
                return c.this.f381a;
            }

            @Override // android.support.v4.media.session.b
            public int m() {
                return c.this.b;
            }

            @Override // android.support.v4.media.session.b
            public boolean n() {
                return c.this.c;
            }

            @Override // android.support.v4.media.session.b
            public boolean a() {
                throw new AssertionError();
            }
        }
    }
}
