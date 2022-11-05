package com.inmobi.commons.network.abstraction;

import com.inmobi.commons.network.Request;
/* loaded from: classes2.dex */
public interface INetworkServiceProvider {
    void executeTask(Request request, INetworkListener iNetworkListener);
}
