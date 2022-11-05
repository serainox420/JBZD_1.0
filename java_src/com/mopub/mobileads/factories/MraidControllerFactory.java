package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.VisibleForTesting;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
/* loaded from: classes3.dex */
public class MraidControllerFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static MraidControllerFactory f4521a = new MraidControllerFactory();

    @VisibleForTesting
    public static void setInstance(MraidControllerFactory mraidControllerFactory) {
        f4521a = mraidControllerFactory;
    }

    public static MraidController create(Context context, AdReport adReport, PlacementType placementType) {
        return f4521a.a(context, adReport, placementType);
    }

    protected MraidController a(Context context, AdReport adReport, PlacementType placementType) {
        return new MraidController(context, adReport, placementType);
    }
}
