package com.openx.model.network;

import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.PostNetworkTask;
import com.openx.core.network.ResponseHandler;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.ServerWrongResponse;
import com.openx.errors.UnknownError;
import com.openx.model.Ad;
import com.openx.model.AdCreative;
import com.openx.model.AdGroup;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdLoadHelper {
    private final String TAG = "AdLoadHelper";
    private ChainItem adLoadHelperChainItem;
    private AdModelLoadedListener adModelListener;
    private transient AdGroup mAdGroup;
    private boolean mIsLoaded;
    private String url;

    public boolean isLoaded() {
        return this.mIsLoaded;
    }

    public AdLoadHelper(String str, AdModelLoadedListener adModelLoadedListener, ChainItem chainItem) {
        this.url = str;
        this.adModelListener = adModelLoadedListener;
        this.adLoadHelperChainItem = chainItem;
    }

    public void sendAdRequest() {
        PostNetworkTask postNetworkTask = new PostNetworkTask(new processAdDataListener());
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        if (this.url != null) {
            String[] split = this.url.split("\\?");
            if (split.length >= 2) {
                getUrlParams.url = split[0];
                getUrlParams.queryParams = split[1];
            }
        }
        getUrlParams.userAgent = OXSettings.userAgent;
        postNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class processAdDataListener implements ResponseHandler {
        private processAdDataListener() {
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processError(String str, Throwable th) {
            UnknownError unknownError = new UnknownError(str);
            if (AdLoadHelper.this.adModelListener != null) {
                AdLoadHelper.this.adModelListener.adModelLoadAdFail(unknownError);
            }
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processResponse(BaseNetworkTask.GetUrlResult getUrlResult) {
            AdLoadHelper.this.constructAdGroup(getUrlResult.response);
            AdLoadHelper.this.loadAdCallback(getUrlResult.response);
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processError(String str) {
            UnknownError unknownError = new UnknownError(str);
            if (AdLoadHelper.this.adModelListener != null) {
                AdLoadHelper.this.adModelListener.adModelLoadAdFail(unknownError);
            }
        }
    }

    private void setIsLoaded(boolean z) {
        this.mIsLoaded = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdCallback(String str) {
        if (!isLoaded()) {
            setIsLoaded(true);
            if (this.adModelListener != null) {
                OXLog.debug("AdLoadHelper", "Ad Load request got result: " + str + " AdGroupHasParseError: " + this.mAdGroup.hasParseError());
                if (str.equals("") || this.mAdGroup.hasParseError()) {
                    this.adModelListener.adModelLoadAdFail(new ServerWrongResponse());
                    return;
                }
                OXLog.debug("AdLoadHelper", "adModelLoadAdSuccess");
                this.adModelListener.adModelLoadAdSuccess(this.mAdGroup);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void constructAdGroup(String str) {
        OXLog.debug("AdLoadHelper", "Constructing adGroup from result: " + str.toString());
        if (this.adLoadHelperChainItem != null && this.adLoadHelperChainItem.type.equals("apihtml")) {
            AdGroup adGroup = new AdGroup();
            Ad ad = new Ad();
            ad.setHTML(str);
            AdCreative adCreative = new AdCreative();
            adCreative.setWidth(this.adLoadHelperChainItem.width);
            adCreative.setHeight(this.adLoadHelperChainItem.height);
            adGroup.getAds().add(ad);
            adGroup.getAds().get(0).getCreatives().add(adCreative);
            this.mAdGroup = adGroup;
            return;
        }
        AdGroup adGroup2 = new AdGroup();
        adGroup2.parse(str);
        this.mAdGroup = adGroup2;
    }
}
