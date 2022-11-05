package com.openx.view.tp.chain.parser;

import com.openx.model.AdGroup;
import com.openx.view.tp.chain.network.ChainLoadWrapper;
import java.util.Iterator;
import org.json.JSONException;
/* loaded from: classes3.dex */
public class ChainResponse extends AdGroup {
    public Ads ads;

    public ChainResponse(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    this.ads = new Ads(str);
                    if (this.ads != null && this.ads.adUnits != null && this.ads.adUnits.size() > 0) {
                        Iterator<ChainItem> it = this.ads.adUnits.get(0).chainItems.iterator();
                        while (it.hasNext()) {
                            ChainItem next = it.next();
                            next.transactionUrl = this.ads.recordTemplate.replace("{medium}", this.ads.medium);
                            next.transactionUrl = next.transactionUrl.replace("{txn_state}", next.transaction);
                            getAds().add(next);
                        }
                        return;
                    }
                    ChainLoadWrapper.parseError = true;
                }
            } catch (JSONException e) {
                ChainLoadWrapper.parseError = true;
            }
        }
    }
}
