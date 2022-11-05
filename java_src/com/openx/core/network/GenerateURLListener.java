package com.openx.core.network;

import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.model.adParams.AdCallParameters;
/* loaded from: classes3.dex */
public interface GenerateURLListener {
    String customURLParams(String str, AdCallParameters adCallParameters, AdTruthListener adTruthListener);
}
