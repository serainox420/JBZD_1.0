package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.i;
import java.util.Map;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SessionMetadataCollector {
    private final Context context;
    private final IdManager idManager;
    private final String versionCode;
    private final String versionName;

    public SessionMetadataCollector(Context context, IdManager idManager, String str, String str2) {
        this.context = context;
        this.idManager = idManager;
        this.versionCode = str;
        this.versionName = str2;
    }

    public SessionEventMetadata getMetadata() {
        Map<IdManager.DeviceIdentifierType, String> i = this.idManager.i();
        String m = i.m(this.context);
        String d = this.idManager.d();
        String g = this.idManager.g();
        return new SessionEventMetadata(this.idManager.c(), UUID.randomUUID().toString(), this.idManager.b(), i.get(IdManager.DeviceIdentifierType.ANDROID_ID), i.get(IdManager.DeviceIdentifierType.ANDROID_ADVERTISING_ID), this.idManager.l(), i.get(IdManager.DeviceIdentifierType.FONT_TOKEN), m, d, g, this.versionCode, this.versionName);
    }
}
