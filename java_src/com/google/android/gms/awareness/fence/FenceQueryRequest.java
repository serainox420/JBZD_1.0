package com.google.android.gms.awareness.fence;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaer;
import java.util.Collection;
/* loaded from: classes2.dex */
public abstract class FenceQueryRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static FenceQueryRequest all() {
        return new zzaer();
    }

    public static FenceQueryRequest forFences(Collection<String> collection) {
        zzac.zzw(collection);
        for (String str : collection) {
            zzac.zzdr(str);
        }
        return new zzaer(collection);
    }

    public static FenceQueryRequest forFences(String... strArr) {
        zzac.zzw(strArr);
        for (String str : strArr) {
            zzac.zzdr(str);
        }
        return new zzaer(strArr);
    }
}
