package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class zzbto {
    private List<byte[]> zzaIP;
    private long zzaxb;
    private Map<String, Map<String, byte[]>> zzcmj;

    public zzbto(Map<String, Map<String, byte[]>> map, long j, List<byte[]> list) {
        this.zzcmj = map;
        this.zzaxb = j;
        this.zzaIP = list;
    }

    public long getTimestamp() {
        return this.zzaxb;
    }

    public void setTimestamp(long j) {
        this.zzaxb = j;
    }

    public boolean zzaA(String str, String str2) {
        return zzacg() && zzjF(str2) && zzaB(str, str2) != null;
    }

    public byte[] zzaB(String str, String str2) {
        if (str == null || !zzjF(str2)) {
            return null;
        }
        return this.zzcmj.get(str2).get(str);
    }

    public Set<String> zzaC(String str, String str2) {
        TreeSet treeSet = new TreeSet();
        if (!zzjF(str2)) {
            return treeSet;
        }
        if (str == null || str.isEmpty()) {
            return this.zzcmj.get(str2).keySet();
        }
        for (String str3 : this.zzcmj.get(str2).keySet()) {
            if (str3.startsWith(str)) {
                treeSet.add(str3);
            }
        }
        return treeSet;
    }

    public Map<String, Map<String, byte[]>> zzacf() {
        return this.zzcmj;
    }

    public boolean zzacg() {
        return this.zzcmj != null && !this.zzcmj.isEmpty();
    }

    public void zzj(Map<String, byte[]> map, String str) {
        if (this.zzcmj == null) {
            this.zzcmj = new HashMap();
        }
        this.zzcmj.put(str, map);
    }

    public boolean zzjF(String str) {
        if (str == null) {
            return false;
        }
        return zzacg() && this.zzcmj.get(str) != null && !this.zzcmj.get(str).isEmpty();
    }

    public List<byte[]> zzzE() {
        return this.zzaIP;
    }
}
