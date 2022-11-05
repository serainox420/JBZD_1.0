package android.support.customtabs;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
/* compiled from: CustomTabsSessionToken.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final g f16a;
    private final a b = new a() { // from class: android.support.customtabs.f.1
        @Override // android.support.customtabs.a
        public void a(int i, Bundle bundle) {
            try {
                f.this.f16a.a(i, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // android.support.customtabs.a
        public void a(String str, Bundle bundle) {
            try {
                f.this.f16a.a(str, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // android.support.customtabs.a
        public void a(Bundle bundle) {
            try {
                f.this.f16a.a(bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // android.support.customtabs.a
        public void b(String str, Bundle bundle) {
            try {
                f.this.f16a.b(str, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(g gVar) {
        this.f16a = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder a() {
        return this.f16a.asBinder();
    }

    public int hashCode() {
        return a().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        return ((f) obj).a().equals(this.f16a.asBinder());
    }
}
