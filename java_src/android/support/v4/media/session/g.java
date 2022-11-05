package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.session.f;
/* compiled from: MediaSessionCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class g {

    /* compiled from: MediaSessionCompatApi21.java */
    /* loaded from: classes.dex */
    interface a extends f.a {
        void a();

        void a(long j);

        void a(String str, Bundle bundle);

        void a(String str, Bundle bundle, ResultReceiver resultReceiver);

        boolean a(Intent intent);

        void b();

        void b(String str, Bundle bundle);

        void c();

        void c(String str, Bundle bundle);

        void d();

        void e();

        void f();

        void g();
    }

    public static Object a(Context context, String str) {
        return new MediaSession(context, str);
    }

    public static Object a(Object obj) {
        if (obj instanceof MediaSession.Token) {
            return obj;
        }
        throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static void a(Object obj, Object obj2, Handler handler) {
        ((MediaSession) obj).setCallback((MediaSession.Callback) obj2, handler);
    }

    public static void a(Object obj, int i) {
        ((MediaSession) obj).setFlags(i);
    }

    public static void b(Object obj, int i) {
        AudioAttributes.Builder builder = new AudioAttributes.Builder();
        builder.setLegacyStreamType(i);
        ((MediaSession) obj).setPlaybackToLocal(builder.build());
    }

    public static void a(Object obj, Object obj2) {
        ((MediaSession) obj).setPlaybackToRemote((VolumeProvider) obj2);
    }

    public static void a(Object obj, boolean z) {
        ((MediaSession) obj).setActive(z);
    }

    public static boolean b(Object obj) {
        return ((MediaSession) obj).isActive();
    }

    public static void c(Object obj) {
        ((MediaSession) obj).release();
    }

    public static Parcelable d(Object obj) {
        return ((MediaSession) obj).getSessionToken();
    }

    public static void b(Object obj, Object obj2) {
        ((MediaSession) obj).setPlaybackState((PlaybackState) obj2);
    }

    public static void c(Object obj, Object obj2) {
        ((MediaSession) obj).setMetadata((MediaMetadata) obj2);
    }

    public static void a(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setSessionActivity(pendingIntent);
    }

    public static void b(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setMediaButtonReceiver(pendingIntent);
    }

    /* compiled from: MediaSessionCompatApi21.java */
    /* loaded from: classes.dex */
    static class b<T extends a> extends MediaSession.Callback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f399a;

        public b(T t) {
            this.f399a = t;
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f399a.a(str, bundle, resultReceiver);
        }

        @Override // android.media.session.MediaSession.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            return this.f399a.a(intent) || super.onMediaButtonEvent(intent);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlay() {
            this.f399a.a();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            this.f399a.a(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            this.f399a.b(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToQueueItem(long j) {
            this.f399a.a(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPause() {
            this.f399a.b();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToNext() {
            this.f399a.c();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToPrevious() {
            this.f399a.d();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onFastForward() {
            this.f399a.e();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onRewind() {
            this.f399a.f();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onStop() {
            this.f399a.g();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSeekTo(long j) {
            this.f399a.b(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSetRating(Rating rating) {
            this.f399a.a(rating);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCustomAction(String str, Bundle bundle) {
            this.f399a.c(str, bundle);
        }
    }

    /* compiled from: MediaSessionCompatApi21.java */
    /* loaded from: classes.dex */
    static class c {
        public static Object a(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        public static long b(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }
}
