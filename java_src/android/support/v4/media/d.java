package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.MediaMetadata;
import android.os.Parcel;
/* compiled from: MediaMetadataCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class d {
    public static void a(Object obj, Parcel parcel, int i) {
        ((MediaMetadata) obj).writeToParcel(parcel, i);
    }

    public static Object a(Parcel parcel) {
        return MediaMetadata.CREATOR.createFromParcel(parcel);
    }
}
