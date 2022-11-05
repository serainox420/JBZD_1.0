package com.openx.common.deviceData.listeners;

import com.openx.common.deviceData.managers.OXMPreference;
/* loaded from: classes3.dex */
public interface PreferenceListener {
    OXMPreference loadAdTruthValue();

    void saveAdTruthValue(String str, boolean z);
}
