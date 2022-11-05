package com.openx.core.sdk;

import android.content.Context;
/* loaded from: classes3.dex */
public interface OXMManager {
    void dispose();

    Context getContext();

    void init(Context context);

    boolean isInit();
}
