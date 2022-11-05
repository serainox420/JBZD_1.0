package com.crashlytics.android.beta;

import android.content.Context;
import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.k;
import io.fabric.sdk.android.services.settings.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface UpdatesController {
    void initialize(Context context, Beta beta, IdManager idManager, f fVar, BuildProperties buildProperties, c cVar, k kVar, io.fabric.sdk.android.services.network.c cVar2);

    boolean isActivityLifecycleTriggered();
}
