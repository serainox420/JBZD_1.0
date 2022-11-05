package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: MediaSessionCompatApi18.java */
@TargetApi(18)
/* loaded from: classes.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f396a = true;

    /* compiled from: MediaSessionCompatApi18.java */
    /* loaded from: classes.dex */
    interface a {
        void b(long j);
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static void a(Context context, PendingIntent pendingIntent, ComponentName componentName) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (f396a) {
            try {
                audioManager.registerMediaButtonEventReceiver(pendingIntent);
            } catch (NullPointerException e) {
                Log.w("MediaSessionCompatApi18", "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                f396a = false;
            }
        }
        if (!f396a) {
            audioManager.registerMediaButtonEventReceiver(componentName);
        }
    }

    public static void b(Context context, PendingIntent pendingIntent, ComponentName componentName) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (f396a) {
            audioManager.unregisterMediaButtonEventReceiver(pendingIntent);
        } else {
            audioManager.unregisterMediaButtonEventReceiver(componentName);
        }
    }

    public static void a(Object obj, int i, long j, float f, long j2) {
        long j3 = 0;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (i == 3 && j > 0) {
            if (j2 > 0) {
                j3 = elapsedRealtime - j2;
                if (f > BitmapDescriptorFactory.HUE_RED && f != 1.0f) {
                    j3 = ((float) j3) * f;
                }
            }
            j += j3;
        }
        ((RemoteControlClient) obj).setPlaybackState(d.a(i), j, f);
    }

    public static void a(Object obj, long j) {
        ((RemoteControlClient) obj).setTransportControlFlags(a(j));
    }

    public static void a(Object obj, Object obj2) {
        ((RemoteControlClient) obj).setPlaybackPositionUpdateListener((RemoteControlClient.OnPlaybackPositionUpdateListener) obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(long j) {
        int a2 = d.a(j);
        if ((256 & j) != 0) {
            return a2 | 256;
        }
        return a2;
    }

    /* compiled from: MediaSessionCompatApi18.java */
    /* loaded from: classes.dex */
    static class b<T extends a> implements RemoteControlClient.OnPlaybackPositionUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        protected final T f397a;

        public b(T t) {
            this.f397a = t;
        }

        @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
        public void onPlaybackPositionUpdate(long j) {
            this.f397a.b(j);
        }
    }
}
