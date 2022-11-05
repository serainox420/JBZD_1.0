package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.MediaDescription;
import android.net.Uri;
import android.support.v4.media.b;
/* compiled from: MediaDescriptionCompatApi23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class c extends b {
    public static Uri h(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }

    /* compiled from: MediaDescriptionCompatApi23.java */
    /* loaded from: classes.dex */
    static class a extends b.a {
        public static void b(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }
}
