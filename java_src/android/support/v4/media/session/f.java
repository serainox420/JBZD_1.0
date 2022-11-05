package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.os.Bundle;
import android.support.v4.media.session.e;
/* compiled from: MediaSessionCompatApi19.java */
@TargetApi(19)
/* loaded from: classes.dex */
class f {

    /* compiled from: MediaSessionCompatApi19.java */
    /* loaded from: classes.dex */
    interface a extends e.a {
        void a(Object obj);
    }

    public static void a(Object obj, long j) {
        ((RemoteControlClient) obj).setTransportControlFlags(a(j));
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static void a(Object obj, Bundle bundle, long j) {
        RemoteControlClient.MetadataEditor editMetadata = ((RemoteControlClient) obj).editMetadata(true);
        d.a(bundle, editMetadata);
        a(bundle, editMetadata);
        if ((128 & j) != 0) {
            editMetadata.addEditableKey(268435457);
        }
        editMetadata.apply();
    }

    public static void a(Object obj, Object obj2) {
        ((RemoteControlClient) obj).setMetadataUpdateListener((RemoteControlClient.OnMetadataUpdateListener) obj2);
    }

    static int a(long j) {
        int a2 = e.a(j);
        if ((128 & j) != 0) {
            return a2 | 512;
        }
        return a2;
    }

    static void a(Bundle bundle, RemoteControlClient.MetadataEditor metadataEditor) {
        if (bundle != null) {
            if (bundle.containsKey("android.media.metadata.YEAR")) {
                metadataEditor.putLong(8, bundle.getLong("android.media.metadata.YEAR"));
            }
            if (bundle.containsKey("android.media.metadata.RATING")) {
                metadataEditor.putObject(101, (Object) bundle.getParcelable("android.media.metadata.RATING"));
            }
            if (bundle.containsKey("android.media.metadata.USER_RATING")) {
                metadataEditor.putObject(268435457, (Object) bundle.getParcelable("android.media.metadata.USER_RATING"));
            }
        }
    }

    /* compiled from: MediaSessionCompatApi19.java */
    /* loaded from: classes.dex */
    static class b<T extends a> implements RemoteControlClient.OnMetadataUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        protected final T f398a;

        public b(T t) {
            this.f398a = t;
        }

        @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
        public void onMetadataUpdate(int i, Object obj) {
            if (i == 268435457 && (obj instanceof Rating)) {
                this.f398a.a(obj);
            }
        }
    }
}
