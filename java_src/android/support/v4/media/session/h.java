package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.g;
/* compiled from: MediaSessionCompatApi23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class h {

    /* compiled from: MediaSessionCompatApi23.java */
    /* loaded from: classes.dex */
    public interface a extends g.a {
        void a(Uri uri, Bundle bundle);
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    /* compiled from: MediaSessionCompatApi23.java */
    /* loaded from: classes.dex */
    static class b<T extends a> extends g.b<T> {
        public b(T t) {
            super(t);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            ((a) this.f399a).a(uri, bundle);
        }
    }
}
