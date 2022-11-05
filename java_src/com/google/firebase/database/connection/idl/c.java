package com.google.firebase.database.connection.idl;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzbol;
import com.google.android.gms.internal.zzboo;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzbos;
import com.google.firebase.database.connection.idl.g;
import com.google.firebase.database.connection.idl.j;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class c implements zzbop {

    /* renamed from: a  reason: collision with root package name */
    private final h f3560a;

    private c(h hVar) {
        this.f3560a = hVar;
    }

    public static c a(Context context, zzc zzcVar, zzbol zzbolVar, zzbop.zza zzaVar) {
        return new c(IPersistentConnectionImpl.loadDynamic(context, zzcVar, zzbolVar.zzXs(), zzbolVar.zzXt(), zzaVar));
    }

    private static j a(final zzbos zzbosVar) {
        return new j.a() { // from class: com.google.firebase.database.connection.idl.c.2
            @Override // com.google.firebase.database.connection.idl.j
            public void a(String str, String str2) throws RemoteException {
                zzbos.this.zzar(str, str2);
            }
        };
    }

    @Override // com.google.android.gms.internal.zzbop
    public void initialize() {
        try {
            this.f3560a.initialize();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void interrupt(String str) {
        try {
            this.f3560a.interrupt(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public boolean isInterrupted(String str) {
        try {
            return this.f3560a.isInterrupted(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void purgeOutstandingWrites() {
        try {
            this.f3560a.purgeOutstandingWrites();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void refreshAuthToken() {
        try {
            this.f3560a.refreshAuthToken();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void resume(String str) {
        try {
            this.f3560a.resume(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void shutdown() {
        try {
            this.f3560a.shutdown();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, zzbos zzbosVar) {
        try {
            this.f3560a.onDisconnectCancel(list, a(zzbosVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Object obj, zzbos zzbosVar) {
        try {
            this.f3560a.put(list, zzd.zzA(obj), a(zzbosVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Object obj, String str, zzbos zzbosVar) {
        try {
            this.f3560a.compareAndPut(list, zzd.zzA(obj), str, a(zzbosVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Map<String, Object> map) {
        try {
            this.f3560a.unlisten(list, zzd.zzA(map));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Map<String, Object> map, final zzboo zzbooVar, Long l, zzbos zzbosVar) {
        long longValue;
        g.a aVar = new g.a(this) { // from class: com.google.firebase.database.connection.idl.c.1
            @Override // com.google.firebase.database.connection.idl.g
            public String a() {
                return zzbooVar.zzXw();
            }

            @Override // com.google.firebase.database.connection.idl.g
            public boolean b() {
                return zzbooVar.zzXx();
            }

            @Override // com.google.firebase.database.connection.idl.g
            public zza c() {
                return zza.a(zzbooVar.zzXy());
            }
        };
        if (l != null) {
            try {
                longValue = l.longValue();
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        } else {
            longValue = -1;
        }
        this.f3560a.listen(list, zzd.zzA(map), aVar, longValue, a(zzbosVar));
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Map<String, Object> map, zzbos zzbosVar) {
        try {
            this.f3560a.merge(list, zzd.zzA(map), a(zzbosVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zzb(List<String> list, Object obj, zzbos zzbosVar) {
        try {
            this.f3560a.onDisconnectPut(list, zzd.zzA(obj), a(zzbosVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zzb(List<String> list, Map<String, Object> map, zzbos zzbosVar) {
        try {
            this.f3560a.onDisconnectMerge(list, zzd.zzA(map), a(zzbosVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zziN(String str) {
        try {
            this.f3560a.refreshAuthToken2(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
