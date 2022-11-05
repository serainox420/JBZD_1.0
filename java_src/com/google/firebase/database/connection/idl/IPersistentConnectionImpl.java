package com.google.firebase.database.connection.idl;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.firebase_database.ModuleDescriptor;
import com.google.android.gms.internal.zzboi;
import com.google.android.gms.internal.zzbok;
import com.google.android.gms.internal.zzbol;
import com.google.android.gms.internal.zzboo;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzboq;
import com.google.android.gms.internal.zzbor;
import com.google.android.gms.internal.zzbos;
import com.google.android.gms.internal.zzbrl;
import com.google.firebase.database.connection.idl.e;
import com.google.firebase.database.connection.idl.f;
import com.google.firebase.database.connection.idl.h;
import com.google.firebase.database.connection.idl.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
@DynamiteApi
/* loaded from: classes2.dex */
public class IPersistentConnectionImpl extends h.a {

    /* renamed from: a  reason: collision with root package name */
    private zzbop f3551a;

    private static zzbok a(final e eVar) {
        return new zzbok() { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.6
            @Override // com.google.android.gms.internal.zzbok
            public void zza(boolean z, final zzbok.zza zzaVar) {
                try {
                    e.this.a(z, new f.a(this) { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.6.1
                        @Override // com.google.firebase.database.connection.idl.f
                        public void a(String str) throws RemoteException {
                            zzaVar.zziL(str);
                        }

                        @Override // com.google.firebase.database.connection.idl.f
                        public void b(String str) throws RemoteException {
                            zzaVar.onError(str);
                        }
                    });
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }
        };
    }

    private static zzbop.zza a(final i iVar) {
        return new zzbop.zza() { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.4
            @Override // com.google.android.gms.internal.zzbop.zza
            public void onDisconnect() {
                try {
                    i.this.b();
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.android.gms.internal.zzbop.zza
            public void zzXz() {
                try {
                    i.this.a();
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.android.gms.internal.zzbop.zza
            public void zza(List<String> list, Object obj, boolean z, Long l) {
                try {
                    i.this.a(list, zzd.zzA(obj), z, IPersistentConnectionImpl.b(l));
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.android.gms.internal.zzbop.zza
            public void zza(List<String> list, List<zzbor> list2, Long l) {
                ArrayList arrayList = new ArrayList(list2.size());
                ArrayList arrayList2 = new ArrayList(list2.size());
                for (zzbor zzborVar : list2) {
                    arrayList.add(zzn.a(zzborVar));
                    arrayList2.add(zzborVar.zzXY());
                }
                try {
                    i.this.a(list, arrayList, zzd.zzA(arrayList2), IPersistentConnectionImpl.b(l));
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.android.gms.internal.zzbop.zza
            public void zzax(Map<String, Object> map) {
                try {
                    i.this.a(zzd.zzA(map));
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.android.gms.internal.zzbop.zza
            public void zzbc(boolean z) {
                try {
                    i.this.a(z);
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }
        };
    }

    private static zzbos a(final j jVar) {
        return new zzbos() { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.2
            @Override // com.google.android.gms.internal.zzbos
            public void zzar(String str, String str2) {
                try {
                    j.this.a(str, str2);
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }
        };
    }

    private static e a(final zzbok zzbokVar) {
        return new e.a() { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.5
            @Override // com.google.firebase.database.connection.idl.e
            public void a(boolean z, final f fVar) throws RemoteException {
                zzbok.this.zza(z, new zzbok.zza(this) { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.5.1
                    @Override // com.google.android.gms.internal.zzbok.zza
                    public void onError(String str) {
                        try {
                            fVar.b(str);
                        } catch (RemoteException e) {
                            throw new RuntimeException(e);
                        }
                    }

                    @Override // com.google.android.gms.internal.zzbok.zza
                    public void zziL(String str) {
                        try {
                            fVar.a(str);
                        } catch (RemoteException e) {
                            throw new RuntimeException(e);
                        }
                    }
                });
            }
        };
    }

    private static i a(final zzbop.zza zzaVar) {
        return new i.a() { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.3
            @Override // com.google.firebase.database.connection.idl.i
            public void a() {
                zzbop.zza.this.zzXz();
            }

            @Override // com.google.firebase.database.connection.idl.i
            public void a(IObjectWrapper iObjectWrapper) {
                zzbop.zza.this.zzax((Map) zzd.zzF(iObjectWrapper));
            }

            @Override // com.google.firebase.database.connection.idl.i
            public void a(List<String> list, IObjectWrapper iObjectWrapper, boolean z, long j) {
                zzbop.zza.this.zza(list, zzd.zzF(iObjectWrapper), z, IPersistentConnectionImpl.b(j));
            }

            @Override // com.google.firebase.database.connection.idl.i
            public void a(List<String> list, List<zzn> list2, IObjectWrapper iObjectWrapper, long j) {
                List list3 = (List) zzd.zzF(iObjectWrapper);
                ArrayList arrayList = new ArrayList(list2.size());
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= list2.size()) {
                        zzbop.zza.this.zza(list, arrayList, IPersistentConnectionImpl.b(j));
                        return;
                    } else {
                        arrayList.add(zzn.a(list2.get(i2), list3.get(i2)));
                        i = i2 + 1;
                    }
                }
            }

            @Override // com.google.firebase.database.connection.idl.i
            public void a(boolean z) {
                zzbop.zza.this.zzbc(z);
            }

            @Override // com.google.firebase.database.connection.idl.i
            public void b() {
                zzbop.zza.this.onDisconnect();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long b(Long l) {
        if (l != null) {
            if (l.longValue() != -1) {
                return l.longValue();
            }
            throw new IllegalArgumentException("Tag parameter clashed with NO_TAG value");
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Long b(long j) {
        if (j == -1) {
            return null;
        }
        return Long.valueOf(j);
    }

    public static h loadDynamic(Context context, zzc zzcVar, zzbok zzbokVar, ScheduledExecutorService scheduledExecutorService, zzbop.zza zzaVar) {
        try {
            h asInterface = h.a.asInterface(DynamiteModule.zza(context, DynamiteModule.zzaRX, ModuleDescriptor.MODULE_ID).zzdT("com.google.firebase.database.connection.idl.IPersistentConnectionImpl"));
            asInterface.setup(zzcVar, a(zzbokVar), zzd.zzA(scheduledExecutorService), a(zzaVar));
            return asInterface;
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        } catch (DynamiteModule.zza e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void compareAndPut(List<String> list, IObjectWrapper iObjectWrapper, String str, j jVar) {
        this.f3551a.zza(list, zzd.zzF(iObjectWrapper), str, a(jVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void initialize() {
        this.f3551a.initialize();
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void interrupt(String str) {
        this.f3551a.interrupt(str);
    }

    @Override // com.google.firebase.database.connection.idl.h
    public boolean isInterrupted(String str) {
        return this.f3551a.isInterrupted(str);
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void listen(List<String> list, IObjectWrapper iObjectWrapper, final g gVar, long j, j jVar) {
        Long b = b(j);
        zzboo zzbooVar = new zzboo(this) { // from class: com.google.firebase.database.connection.idl.IPersistentConnectionImpl.1
            @Override // com.google.android.gms.internal.zzboo
            public String zzXw() {
                try {
                    return gVar.a();
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.android.gms.internal.zzboo
            public boolean zzXx() {
                try {
                    return gVar.b();
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.android.gms.internal.zzboo
            public zzboi zzXy() {
                try {
                    return zza.a(gVar.c());
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        this.f3551a.zza(list, (Map) zzd.zzF(iObjectWrapper), zzbooVar, b, a(jVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void merge(List<String> list, IObjectWrapper iObjectWrapper, j jVar) {
        this.f3551a.zza(list, (Map) zzd.zzF(iObjectWrapper), a(jVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void onDisconnectCancel(List<String> list, j jVar) {
        this.f3551a.zza(list, a(jVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void onDisconnectMerge(List<String> list, IObjectWrapper iObjectWrapper, j jVar) {
        this.f3551a.zzb(list, (Map) zzd.zzF(iObjectWrapper), a(jVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void onDisconnectPut(List<String> list, IObjectWrapper iObjectWrapper, j jVar) {
        this.f3551a.zzb(list, zzd.zzF(iObjectWrapper), a(jVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void purgeOutstandingWrites() {
        this.f3551a.purgeOutstandingWrites();
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void put(List<String> list, IObjectWrapper iObjectWrapper, j jVar) {
        this.f3551a.zza(list, zzd.zzF(iObjectWrapper), a(jVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void refreshAuthToken() {
        this.f3551a.refreshAuthToken();
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void refreshAuthToken2(String str) {
        this.f3551a.zziN(str);
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void resume(String str) {
        this.f3551a.resume(str);
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void setup(zzc zzcVar, e eVar, IObjectWrapper iObjectWrapper, i iVar) {
        this.f3551a = new zzboq(new zzbol(new zzbrl(zzcVar.a(), zzcVar.b()), a(eVar), (ScheduledExecutorService) zzd.zzF(iObjectWrapper), zzcVar.e, zzcVar.f, zzcVar.g), zzf.a(zzcVar.b), a(iVar));
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void shutdown() {
        this.f3551a.shutdown();
    }

    @Override // com.google.firebase.database.connection.idl.h
    public void unlisten(List<String> list, IObjectWrapper iObjectWrapper) {
        this.f3551a.zza(list, (Map) zzd.zzF(iObjectWrapper));
    }
}
