package io.realm.internal;

import android.content.Context;
import io.realm.exceptions.RealmException;
import io.realm.p;
/* compiled from: ObjectServerFacade.java */
/* loaded from: classes3.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final h f5797a = new h();
    private static h b;

    static {
        b = null;
        try {
            b = (h) Class.forName("io.realm.internal.objectserver.SyncObjectServerFacade").newInstance();
        } catch (ClassNotFoundException e) {
        } catch (IllegalAccessException e2) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e3);
        }
    }

    public void a(Context context) {
    }

    public void a(p pVar, long j) {
    }

    public void a(p pVar) {
    }

    public void b(p pVar) {
    }

    public String[] c(p pVar) {
        return new String[2];
    }

    public static h a(boolean z) {
        return z ? b : f5797a;
    }

    public static h a() {
        return b != null ? b : f5797a;
    }
}
