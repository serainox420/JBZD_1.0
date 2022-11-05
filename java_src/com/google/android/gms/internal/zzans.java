package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzans {
    public static <T> boolean zza(List<T> list, List<T> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (T t : list) {
            if (!list2.contains(t)) {
                return false;
            }
        }
        return true;
    }
}
