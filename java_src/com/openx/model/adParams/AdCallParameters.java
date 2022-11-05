package com.openx.model.adParams;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.openrtb.BidRequest;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.Hashtable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdCallParameters {
    private boolean mIsSSL;
    private Hashtable<String, String> mParameters = new Hashtable<>();
    private Hashtable<String, String> mCustomParams = new Hashtable<>();
    private Hashtable<String, String> mORTBParams = new Hashtable<>();

    /* loaded from: classes3.dex */
    public enum OXMConnectionType {
        OFFLINE,
        WIFI,
        CELL
    }

    /* loaded from: classes3.dex */
    public enum OXMEthnicity {
        AFRICAN_AMERICAN,
        ASIAN,
        HISPANIC,
        WHITE,
        OTHER
    }

    /* loaded from: classes3.dex */
    public enum OXMGender {
        MALE,
        FEMALE,
        OTHER
    }

    /* loaded from: classes3.dex */
    public enum OXMMaritalStatus {
        SINGLE,
        MARRIED,
        DIVORCED
    }

    public Hashtable<String, String> getParameters() {
        return this.mParameters;
    }

    public Hashtable<String, String> getCustomParameters() {
        return this.mCustomParams;
    }

    public boolean isSSL() {
        return this.mIsSSL;
    }

    public void setSSL(boolean z) {
        this.mIsSSL = z;
    }

    public void setUserAge(int i) {
        setParameter("age", String.valueOf(i));
    }

    public void setUserGender(OXMGender oXMGender) {
        setParameter("gen", String.valueOf(oXMGender));
    }

    public void setUserMaritalStatus(OXMMaritalStatus oXMMaritalStatus) {
        setParameter("mar", String.valueOf(oXMMaritalStatus));
    }

    public void setUserEthnicity(OXMEthnicity oXMEthnicity) {
        setParameter("eth", String.valueOf(oXMEthnicity));
    }

    public void setUserAnnualIncomeInUs(int i) {
        setParameter("inc", String.valueOf(i));
    }

    public void setAppStoreMarketUrl(String str) {
        setParameter("url", str);
    }

    public void setDma(String str) {
        setParameter("dma", str);
    }

    private void setPair(Hashtable<String, String> hashtable, String str, String str2) {
        if (str != null && !str.contentEquals("")) {
            if (str2 == null) {
                str2 = "";
            }
            if (hashtable.containsKey(str)) {
                hashtable.remove(str);
            }
            hashtable.put(str, str2);
        }
    }

    private void setPairs(Hashtable<String, String> hashtable, Hashtable<String, String> hashtable2, String str) {
        if (hashtable != null) {
            if (hashtable2 != null) {
                hashtable2.clear();
            }
            Enumeration<String> keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                String nextElement = keys.nextElement();
                setPair(hashtable2, (str == null || nextElement.indexOf(str) == 0) ? nextElement : str + nextElement, hashtable.get(nextElement));
            }
        }
    }

    public void setCustomParameters(Hashtable<String, String> hashtable) {
        setPairs(hashtable, getCustomParameters(), "c.");
    }

    public void setCustomParameter(String str, String str2) {
        if (str != null && !str.contentEquals("")) {
            if (str2 == null) {
                str2 = "";
            }
            setPair(getCustomParameters(), "c." + URLEncoder.encode(str).replace("+", "%20"), str2);
        }
    }

    public void setParameters(Hashtable<String, String> hashtable) {
        setPairs(hashtable, getParameters(), null);
    }

    public Hashtable<String, String> getOpenRTBParameters() {
        return this.mORTBParams;
    }

    public void setOpenRTBParameters(String str) {
        if (str != null && !str.equals("")) {
            setPair(getOpenRTBParameters(), "openrtb", str);
        }
    }

    public void setOpenRTBParameters(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.getString("openrtb") != null) {
                    setPair(getOpenRTBParameters(), "openrtb", jSONObject.getString("openrtb"));
                }
            } catch (JSONException e) {
                setPair(getOpenRTBParameters(), "openrtb", jSONObject.toString());
            }
        }
    }

    public void setOpenRTBParameters(BidRequest bidRequest) throws JSONException {
        if (bidRequest != null) {
            String jSONObject = bidRequest != null ? bidRequest.getJsonObject().toString() : null;
            OXLog.debug("AdCallParameters", "Final json is: " + jSONObject);
            setOpenRTBParameters(jSONObject);
        }
    }

    public void setParameter(String str, String str2) {
        setPair(getParameters(), str, str2);
    }

    public void setCoordinates(double d, double d2) {
        setParameter("lat", String.valueOf(d));
        setParameter(PhoenixConstants.LONGITUDE_PARAM, String.valueOf(d2));
    }

    public void setDeviceCarrier(String str) {
        setParameter("crr", str);
    }

    public void setCountry(String str) {
        setParameter("cnt", str);
    }

    public void setCity(String str) {
        setParameter("cty", str);
    }

    public void setState(String str) {
        setParameter("stt", str);
    }

    public void setZipCode(String str) {
        setParameter("zip", str);
    }

    public void setUserId(String str) {
        setParameter("xid", str);
    }

    public void setConnectionType(OXMConnectionType oXMConnectionType) {
        setParameter("net", String.valueOf(oXMConnectionType));
    }
}
