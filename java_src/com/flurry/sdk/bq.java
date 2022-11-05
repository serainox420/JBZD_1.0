package com.flurry.sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class bq implements br {

    /* renamed from: a  reason: collision with root package name */
    private final List<br> f2491a;

    public bq() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bp());
        arrayList.add(new bu());
        arrayList.add(new bn());
        arrayList.add(new bt());
        this.f2491a = Collections.unmodifiableList(arrayList);
    }

    @Override // com.flurry.sdk.br
    public final boolean a(Context context, bv bvVar) {
        if (context == null || bvVar == null) {
            return false;
        }
        boolean z = true;
        Iterator<br> it = this.f2491a.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = !it.next().a(context, bvVar) ? false : z2;
            } else {
                return z2;
            }
        }
    }
}
