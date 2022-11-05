package com.inmobi.commons.network.abstraction;

import com.inmobi.commons.network.Request;
import com.inmobi.commons.network.Response;
/* loaded from: classes2.dex */
public interface INetworkListener {
    void onRequestFailed(Request request, Response response);

    void onRequestSucceded(Request request, Response response);
}
