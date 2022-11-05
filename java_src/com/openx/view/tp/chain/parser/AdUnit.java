package com.openx.view.tp.chain.parser;

import com.openx.view.tp.chain.network.ChainLoadWrapper;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdUnit {
    public String auid;
    public ArrayList<ChainItem> chainItems;

    public AdUnit(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.auid = jSONObject.optString("auid");
        JSONArray jSONArray = jSONObject.getJSONArray("chain");
        if (jSONArray != null) {
            this.chainItems = new ArrayList<>();
            if (jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.chainItems.add(new ChainItem(jSONArray.get(i).toString()));
                }
                return;
            }
            ChainLoadWrapper.parseError = true;
            return;
        }
        ChainLoadWrapper.parseError = true;
    }
}
