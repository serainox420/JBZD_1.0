package io.realm.internal.android;

import android.os.Handler;
import android.os.Looper;
import io.realm.internal.Keep;
import io.realm.internal.RealmNotifier;
import io.realm.internal.SharedRealm;
@Keep
/* loaded from: classes3.dex */
public class AndroidRealmNotifier extends RealmNotifier {
    private Handler handler;

    public AndroidRealmNotifier(SharedRealm sharedRealm, io.realm.internal.a aVar) {
        super(sharedRealm);
        if (aVar.a()) {
            this.handler = new Handler(Looper.myLooper());
        } else {
            this.handler = null;
        }
    }

    @Override // io.realm.internal.RealmNotifier
    public boolean post(Runnable runnable) {
        return this.handler != null && this.handler.post(runnable);
    }
}
