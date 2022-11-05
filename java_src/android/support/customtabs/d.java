package android.support.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.h;
/* compiled from: CustomTabsServiceConnection.java */
/* loaded from: classes.dex */
public abstract class d implements ServiceConnection {
    public abstract void onCustomTabsServiceConnected(ComponentName componentName, b bVar);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        onCustomTabsServiceConnected(componentName, new b(h.a.a(iBinder), componentName) { // from class: android.support.customtabs.d.1
        });
    }
}
