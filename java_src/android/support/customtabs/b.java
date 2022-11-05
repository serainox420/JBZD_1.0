package android.support.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.RestrictTo;
import android.support.customtabs.g;
import android.text.TextUtils;
/* compiled from: CustomTabsClient.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final h f6a;
    private final ComponentName b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    public b(h hVar, ComponentName componentName) {
        this.f6a = hVar;
        this.b = componentName;
    }

    public static boolean a(Context context, String str, d dVar) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, dVar, 33);
    }

    public boolean a(long j) {
        try {
            return this.f6a.a(j);
        } catch (RemoteException e) {
            return false;
        }
    }

    public e a(final a aVar) {
        g.a aVar2 = new g.a() { // from class: android.support.customtabs.b.1
            private Handler c = new Handler(Looper.getMainLooper());

            @Override // android.support.customtabs.g
            public void a(final int i, final Bundle bundle) {
                if (aVar != null) {
                    this.c.post(new Runnable() { // from class: android.support.customtabs.b.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(i, bundle);
                        }
                    });
                }
            }

            @Override // android.support.customtabs.g
            public void a(final String str, final Bundle bundle) throws RemoteException {
                if (aVar != null) {
                    this.c.post(new Runnable() { // from class: android.support.customtabs.b.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(str, bundle);
                        }
                    });
                }
            }

            @Override // android.support.customtabs.g
            public void a(final Bundle bundle) throws RemoteException {
                if (aVar != null) {
                    this.c.post(new Runnable() { // from class: android.support.customtabs.b.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(bundle);
                        }
                    });
                }
            }

            @Override // android.support.customtabs.g
            public void b(final String str, final Bundle bundle) throws RemoteException {
                if (aVar != null) {
                    this.c.post(new Runnable() { // from class: android.support.customtabs.b.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.b(str, bundle);
                        }
                    });
                }
            }
        };
        try {
            if (this.f6a.a(aVar2)) {
                return new e(this.f6a, aVar2, this.b);
            }
            return null;
        } catch (RemoteException e) {
            return null;
        }
    }
}
