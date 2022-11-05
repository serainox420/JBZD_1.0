package com.pubmatic.sdk.common;

import com.pubmatic.sdk.common.network.HttpRequest;
import com.pubmatic.sdk.common.network.HttpResponse;
/* loaded from: classes3.dex */
public interface RRFormatter {
    HttpRequest formatRequest(AdRequest adRequest);

    AdResponse formatResponse(HttpResponse httpResponse);
}
