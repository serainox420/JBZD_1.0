package android.support.v4.os;

import android.annotation.TargetApi;
import android.os.Parcelable;
/* compiled from: ParcelableCompatHoneycombMR2.java */
@TargetApi(13)
/* loaded from: classes.dex */
class h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Parcelable.Creator<T> a(f<T> fVar) {
        return new g(fVar);
    }
}
