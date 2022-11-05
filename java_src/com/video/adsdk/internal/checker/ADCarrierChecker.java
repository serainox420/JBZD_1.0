package com.video.adsdk.internal.checker;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.video.adsdk.interfaces.checker.CarrierChecker;
/* loaded from: classes3.dex */
public class ADCarrierChecker implements CarrierChecker {
    private String carrierName = "";
    private Context context;

    public ADCarrierChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        try {
            this.carrierName = ((TelephonyManager) this.context.getSystemService("phone")).getNetworkOperatorName();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.video.adsdk.interfaces.checker.CarrierChecker
    public String getCarrierName() {
        return this.carrierName;
    }
}
