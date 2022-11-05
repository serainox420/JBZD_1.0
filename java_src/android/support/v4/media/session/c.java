package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import java.util.List;
/* compiled from: MediaControllerCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class c {

    /* compiled from: MediaControllerCompatApi21.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(int i, int i2, int i3, int i4, int i5);

        void a(Bundle bundle);

        void a(CharSequence charSequence);

        void a(Object obj);

        void a(String str, Bundle bundle);

        void a(List<?> list);

        void b(Object obj);
    }

    public static Object a(Context context, Object obj) {
        return new MediaController(context, (MediaSession.Token) obj);
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static void a(Object obj, Object obj2, Handler handler) {
        ((MediaController) obj).registerCallback((MediaController.Callback) obj2, handler);
    }

    public static void a(Object obj, Object obj2) {
        ((MediaController) obj).unregisterCallback((MediaController.Callback) obj2);
    }

    public static void a(Activity activity, Object obj) {
        activity.setMediaController((MediaController) obj);
    }

    public static Object a(Activity activity) {
        return activity.getMediaController();
    }

    public static Object a(Object obj) {
        return ((MediaController) obj).getSessionToken();
    }

    public static Object b(Object obj) {
        return ((MediaController) obj).getTransportControls();
    }

    public static Object c(Object obj) {
        return ((MediaController) obj).getPlaybackState();
    }

    public static Object d(Object obj) {
        return ((MediaController) obj).getMetadata();
    }

    public static PendingIntent e(Object obj) {
        return ((MediaController) obj).getSessionActivity();
    }

    public static void a(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }

    /* compiled from: MediaControllerCompatApi21.java */
    /* loaded from: classes.dex */
    public static class d {
        public static void a(Object obj) {
            ((MediaController.TransportControls) obj).play();
        }

        public static void b(Object obj) {
            ((MediaController.TransportControls) obj).pause();
        }

        public static void c(Object obj) {
            ((MediaController.TransportControls) obj).stop();
        }
    }

    /* compiled from: MediaControllerCompatApi21.java */
    /* renamed from: android.support.v4.media.session.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0026c {
        public static AudioAttributes a(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        public static int b(Object obj) {
            return a(a(obj));
        }

        private static int a(AudioAttributes audioAttributes) {
            if ((audioAttributes.getFlags() & 1) == 1) {
                return 7;
            }
            if ((audioAttributes.getFlags() & 4) == 4) {
                return 6;
            }
            switch (audioAttributes.getUsage()) {
                case 1:
                case 11:
                case 12:
                case 14:
                default:
                    return 3;
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                case 13:
                    return 1;
            }
        }
    }

    /* compiled from: MediaControllerCompatApi21.java */
    /* loaded from: classes.dex */
    static class b<T extends a> extends MediaController.Callback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f395a;

        public b(T t) {
            this.f395a = t;
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            this.f395a.a();
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
            this.f395a.a(str, bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f395a.a(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f395a.b(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f395a.a(list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            this.f395a.a(charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
            this.f395a.a(bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.f395a.a(playbackInfo.getPlaybackType(), C0026c.b(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }
    }
}
