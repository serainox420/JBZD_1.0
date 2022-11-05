package com.openx.view.tp.chain.parser;

import android.annotation.SuppressLint;
import com.facebook.internal.NativeProtocol;
import com.mopub.common.AdType;
import com.openx.model.Ad;
import com.openx.view.tp.chain.network.ChainLoadWrapper;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class ChainItem extends Ad {
    private static final long serialVersionUID = 1;
    public int height;
    public boolean isFallback;
    public String mediationUrl;
    public SDKParams sdkParams;
    public String transaction;
    public String transactionUrl;
    public String type;
    public int width;

    public ChainItem(String str, String str2) {
        this.mHTML = str;
    }

    public ChainItem(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject != null) {
            this.isFallback = jSONObject.optBoolean(NativeProtocol.WEB_DIALOG_IS_FALLBACK);
            this.mHTML = jSONObject.optString(AdType.HTML);
            this.transaction = jSONObject.optString("ts");
            this.type = jSONObject.optString("type");
            this.mediationUrl = jSONObject.optString("mediation_url");
            this.width = jSONObject.optInt("width");
            this.height = jSONObject.optInt("height");
            if (!jSONObject.optString("sdk_params").isEmpty()) {
                this.sdkParams = new SDKParams(jSONObject.getString("sdk_params"));
                return;
            }
            return;
        }
        ChainLoadWrapper.parseError = true;
    }
}
