package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.VolumeProvider;
/* compiled from: VolumeProviderCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class g {

    /* compiled from: VolumeProviderCompatApi21.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(int i);

        void b(int i);
    }

    public static Object a(int i, int i2, int i3, final a aVar) {
        return new VolumeProvider(i, i2, i3) { // from class: android.support.v4.media.g.1
            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(int i4) {
                aVar.a(i4);
            }

            @Override // android.media.VolumeProvider
            public void onAdjustVolume(int i4) {
                aVar.b(i4);
            }
        };
    }

    public static void a(Object obj, int i) {
        ((VolumeProvider) obj).setCurrentVolume(i);
    }
}
