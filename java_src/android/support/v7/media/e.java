package android.support.v7.media;

import android.os.Messenger;
/* compiled from: MediaRouteProviderProtocol.java */
/* loaded from: classes.dex */
abstract class e {
    public static boolean a(Messenger messenger) {
        if (messenger != null) {
            try {
                return messenger.getBinder() != null;
            } catch (NullPointerException e) {
                return false;
            }
        }
        return false;
    }
}
