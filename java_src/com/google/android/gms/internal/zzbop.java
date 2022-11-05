package com.google.android.gms.internal;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface zzbop {

    /* loaded from: classes2.dex */
    public interface zza {
        void onDisconnect();

        void zzXz();

        void zza(List<String> list, Object obj, boolean z, Long l);

        void zza(List<String> list, List<zzbor> list2, Long l);

        void zzax(Map<String, Object> map);

        void zzbc(boolean z);
    }

    void initialize();

    void interrupt(String str);

    boolean isInterrupted(String str);

    void purgeOutstandingWrites();

    void refreshAuthToken();

    void resume(String str);

    void shutdown();

    void zza(List<String> list, zzbos zzbosVar);

    void zza(List<String> list, Object obj, zzbos zzbosVar);

    void zza(List<String> list, Object obj, String str, zzbos zzbosVar);

    void zza(List<String> list, Map<String, Object> map);

    void zza(List<String> list, Map<String, Object> map, zzboo zzbooVar, Long l, zzbos zzbosVar);

    void zza(List<String> list, Map<String, Object> map, zzbos zzbosVar);

    void zzb(List<String> list, Object obj, zzbos zzbosVar);

    void zzb(List<String> list, Map<String, Object> map, zzbos zzbosVar);

    void zziN(String str);
}
