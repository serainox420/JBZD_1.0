package com.openx.common.deviceData.managers;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.openx.common.deviceData.listeners.PreferenceListener;
import com.openx.core.sdk.OXMBaseManager;
/* loaded from: classes3.dex */
public class OXMPreferencesImpl extends OXMBaseManager implements PreferenceListener {
    private static final long AD_TRUTH_EXPIRY_PERIOD = 86400000;
    private static final String PREF_AD_TRUTH = "openx_adtruth";
    private static final String PREF_AD_TRUTH_TIMESTAMP = "openx_adtruth_timestamp";
    private SharedPreferences mPreferences;

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void init(Context context) {
        super.init(context);
        if (super.isInit()) {
            this.mPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        }
    }

    private SharedPreferences getPreferences() {
        return this.mPreferences;
    }

    @Override // com.openx.common.deviceData.listeners.PreferenceListener
    public OXMPreference loadAdTruthValue() {
        boolean z = true;
        SharedPreferences preferences = getPreferences();
        if (preferences != null) {
            String string = preferences.getString(PREF_AD_TRUTH, null);
            long j = preferences.getLong(PREF_AD_TRUTH_TIMESTAMP, 0L);
            if (!TextUtils.isEmpty(string) && System.currentTimeMillis() - j < AD_TRUTH_EXPIRY_PERIOD) {
                z = false;
            }
            return new OXMPreference(string, z);
        }
        return new OXMPreference(null, true);
    }

    @Override // com.openx.common.deviceData.listeners.PreferenceListener
    public void saveAdTruthValue(String str, boolean z) {
        SharedPreferences preferences;
        boolean z2 = false;
        if (!TextUtils.isEmpty(str)) {
            OXMPreference loadAdTruthValue = loadAdTruthValue();
            boolean isEmpty = TextUtils.isEmpty(loadAdTruthValue.getValue());
            boolean z3 = !isEmpty && loadAdTruthValue.getValue().equals(str);
            boolean z4 = isEmpty || loadAdTruthValue.isExpired();
            if (z) {
                if (isEmpty || (z4 && !z3)) {
                    z2 = true;
                }
            } else if (isEmpty || !z3) {
                z2 = true;
            }
            if (z2 && (preferences = getPreferences()) != null) {
                SharedPreferences.Editor edit = preferences.edit();
                edit.putString(PREF_AD_TRUTH, str);
                edit.putLong(PREF_AD_TRUTH_TIMESTAMP, System.currentTimeMillis());
                edit.commit();
            }
        }
    }
}
