package com.google.android.gms.nearby.messages.internal;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzs {
    public static <T extends ReflectedParcelable> List<T> zzc(Intent intent, String str) {
        Bundle bundleExtra = intent.getBundleExtra(str);
        return bundleExtra == null ? Collections.emptyList() : bundleExtra.getParcelableArrayList(str);
    }
}
