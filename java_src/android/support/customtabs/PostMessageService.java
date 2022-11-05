package android.support.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.i;
/* loaded from: classes.dex */
public class PostMessageService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private i.a f4a = new i.a() { // from class: android.support.customtabs.PostMessageService.1
        @Override // android.support.customtabs.i
        public void a(g gVar, Bundle bundle) throws RemoteException {
            gVar.a(bundle);
        }

        @Override // android.support.customtabs.i
        public void a(g gVar, String str, Bundle bundle) throws RemoteException {
            gVar.b(str, bundle);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4a;
    }
}
