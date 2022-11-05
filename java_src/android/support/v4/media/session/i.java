package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.h;
/* compiled from: MediaSessionCompatApi24.java */
@TargetApi(24)
/* loaded from: classes.dex */
class i {

    /* compiled from: MediaSessionCompatApi24.java */
    /* loaded from: classes.dex */
    public interface a extends h.a {
        void b(Uri uri, Bundle bundle);

        void d(String str, Bundle bundle);

        void e(String str, Bundle bundle);

        void h();
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    /* compiled from: MediaSessionCompatApi24.java */
    /* loaded from: classes.dex */
    static class b<T extends a> extends h.b<T> {
        public b(T t) {
            super(t);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepare() {
            ((a) this.f399a).h();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepareFromMediaId(String str, Bundle bundle) {
            ((a) this.f399a).d(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepareFromSearch(String str, Bundle bundle) {
            ((a) this.f399a).e(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepareFromUri(Uri uri, Bundle bundle) {
            ((a) this.f399a).b(uri, bundle);
        }
    }
}
