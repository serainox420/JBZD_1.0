package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzboi {
    private final List<List<String>> zzcbp;
    private final List<String> zzcbq;

    public zzboi(List<List<String>> list, List<String> list2) {
        if (list.size() != list2.size() - 1) {
            throw new IllegalArgumentException("Number of posts need to be n-1 for n hashes in CompoundHash");
        }
        this.zzcbp = list;
        this.zzcbq = list2;
    }

    public List<List<String>> zzXp() {
        return Collections.unmodifiableList(this.zzcbp);
    }

    public List<String> zzXq() {
        return Collections.unmodifiableList(this.zzcbq);
    }
}
