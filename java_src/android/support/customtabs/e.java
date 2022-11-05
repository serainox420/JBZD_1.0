package android.support.customtabs;

import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;
/* compiled from: CustomTabsSession.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f15a = new Object();
    private final h b;
    private final g c;
    private final ComponentName d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(h hVar, g gVar, ComponentName componentName) {
        this.b = hVar;
        this.c = gVar;
        this.d = componentName;
    }

    public boolean a(Uri uri, Bundle bundle, List<Bundle> list) {
        try {
            return this.b.a(this.c, uri, bundle, list);
        } catch (RemoteException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder a() {
        return this.c.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentName b() {
        return this.d;
    }
}
