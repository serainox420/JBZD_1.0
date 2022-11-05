package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbtr {
    private boolean zzcmc;
    private long zzcmf;
    private int zzcml;
    private long zzcmo;
    private Map<String, zzbtl> zzcmp;

    public zzbtr() {
        this(-1L);
    }

    public zzbtr(int i, long j, Map<String, zzbtl> map, boolean z) {
        this(i, j, map, z, -1L);
    }

    public zzbtr(int i, long j, Map<String, zzbtl> map, boolean z, long j2) {
        this.zzcml = i;
        this.zzcmo = j;
        this.zzcmp = map == null ? new HashMap<>() : map;
        this.zzcmc = z;
        this.zzcmf = j2;
    }

    public zzbtr(long j) {
        this(0, j, null, false);
    }

    public int getLastFetchStatus() {
        return this.zzcml;
    }

    public boolean isDeveloperModeEnabled() {
        return this.zzcmc;
    }

    public void zza(String str, zzbtl zzbtlVar) {
        this.zzcmp.put(str, zzbtlVar);
    }

    public void zzaI(Map<String, zzbtl> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        this.zzcmp = map;
    }

    public void zzaV(long j) {
        this.zzcmo = j;
    }

    public void zzaW(long j) {
        this.zzcmf = j;
    }

    public Map<String, zzbtl> zzaci() {
        return this.zzcmp;
    }

    public long zzacj() {
        return this.zzcmo;
    }

    public long zzack() {
        return this.zzcmf;
    }

    public void zzbh(boolean z) {
        this.zzcmc = z;
    }

    public void zzjG(String str) {
        if (this.zzcmp.get(str) == null) {
            return;
        }
        this.zzcmp.remove(str);
    }

    public void zzqJ(int i) {
        this.zzcml = i;
    }
}
