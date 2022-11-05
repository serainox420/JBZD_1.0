package com.google.android.gms.awareness.fence;

import java.util.Set;
/* loaded from: classes2.dex */
public interface FenceStateMap {
    Set<String> getFenceKeys();

    FenceState getFenceState(String str);
}
