package com.google.android.gms.location.places;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> zzF(List<E> list) {
        return (list == null || list.isEmpty()) ? Collections.emptySet() : Collections.unmodifiableSet(new HashSet(list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> List<E> zzk(Collection<E> collection) {
        return (collection == null || collection.isEmpty()) ? Collections.emptyList() : new ArrayList(collection);
    }

    public abstract Set<String> getPlaceIds();

    public boolean isRestrictedToPlacesOpenNow() {
        return false;
    }
}
