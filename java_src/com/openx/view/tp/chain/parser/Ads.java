package com.openx.view.tp.chain.parser;

import com.google.firebase.a.a;
import com.openx.view.tp.chain.network.ChainLoadWrapper;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Ads {
    public ArrayList<AdUnit> adUnits;
    public boolean isChain;
    public String medium;
    public String recordTemplate;

    public Ads(String str) throws JSONException {
        JSONObject optJSONObject = new JSONObject(str).optJSONObject("ads");
        this.isChain = optJSONObject.optBoolean("chain");
        this.medium = optJSONObject.optString(a.b.MEDIUM);
        this.recordTemplate = optJSONObject.optString("record_tmpl");
        JSONArray jSONArray = optJSONObject.getJSONArray("adunits");
        if (jSONArray != null) {
            this.adUnits = new ArrayList<>();
            int length = jSONArray.length();
            if (length > 0) {
                for (int i = 0; i < length; i++) {
                    this.adUnits.add(new AdUnit(jSONArray.get(i).toString()));
                }
                return;
            }
            ChainLoadWrapper.parseError = true;
            return;
        }
        ChainLoadWrapper.parseError = true;
    }
}
