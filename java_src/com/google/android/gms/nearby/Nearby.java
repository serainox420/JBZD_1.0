package com.google.android.gms.nearby;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.zzaux;
import com.google.android.gms.internal.zzavb;
import com.google.android.gms.internal.zzawc;
import com.google.android.gms.nearby.connection.Connections;
import com.google.android.gms.nearby.messages.Messages;
import com.google.android.gms.nearby.messages.MessagesOptions;
import com.google.android.gms.nearby.messages.internal.zzy;
import com.google.android.gms.nearby.messages.internal.zzz;
import com.google.android.gms.nearby.messages.zzc;
/* loaded from: classes2.dex */
public final class Nearby {
    public static final Api<Api.ApiOptions.NoOptions> CONNECTIONS_API = new Api<>("Nearby.CONNECTIONS_API", zzawc.zzaie, zzawc.zzaid);
    public static final Connections Connections = new zzawc();
    public static final Api<MessagesOptions> MESSAGES_API = new Api<>("Nearby.MESSAGES_API", zzy.zzaie, zzy.zzaid);
    public static final Messages Messages = zzy.zzbAT;
    public static final zzc zzbxK = new zzz();
    public static final Api<Api.ApiOptions.NoOptions> zzbxL = new Api<>("Nearby.BOOTSTRAP_API", zzavb.zzaie, zzavb.zzaid);
    public static final zzaux zzbxM = new zzavb();

    private Nearby() {
    }
}
