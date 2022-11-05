package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.VastManager;
/* loaded from: classes.dex */
public class VastManagerFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static VastManagerFactory f4522a = new VastManagerFactory();

    public static VastManager create(Context context) {
        return f4522a.internalCreate(context, true);
    }

    public static VastManager create(Context context, boolean z) {
        return f4522a.internalCreate(context, z);
    }

    public VastManager internalCreate(Context context, boolean z) {
        return new VastManager(context, z);
    }

    @Deprecated
    public static void setInstance(VastManagerFactory vastManagerFactory) {
        f4522a = vastManagerFactory;
    }
}
