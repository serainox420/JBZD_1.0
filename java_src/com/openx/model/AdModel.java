package com.openx.model;

import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.common.deviceData.listeners.NetworkListener;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.GenerateURLListener;
import com.openx.core.network.GetNetworkTask;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.DeviceIsOffline;
import com.openx.errors.PermissionDeniedForApplication;
import com.openx.errors.UnknownError;
import com.openx.model.adParams.AdCallParameters;
import com.openx.model.adParams.URLGenerator;
import com.openx.model.network.AdLoadHelper;
import com.openx.model.network.AdModelLoadedListener;
import com.openx.view.tp.chain.parser.ChainItem;
import java.io.Serializable;
/* loaded from: classes3.dex */
public class AdModel implements Serializable {
    private static final long serialVersionUID = 1;
    private String availableTPJars;
    private ChainItem chainItem;
    private transient AdCallParameters mAdCallParams;
    private String mAuid;
    private String mDomain;
    private boolean mIsGroupIds;
    private transient AdModelLoadedListener mModelEventsListener;
    private String nativeAppendedParams = "";
    private int ssmHeight;
    private int ssmWidth;
    private URLGenerator urlGenerator;

    public void processData() {
        NetworkListener networkManager = OXMManagersResolver.getInstance().getNetworkManager();
        if (OXMManagersResolver.getInstance().getDeviceManager().isPermissionGranted("android.permission.INTERNET")) {
            processDataRequest(networkManager);
            return;
        }
        PermissionDeniedForApplication permissionDeniedForApplication = new PermissionDeniedForApplication("android.permission.INTERNET");
        if (getAdModelCallbackListener() != null) {
            getAdModelCallbackListener().adModelLoadAdFail(permissionDeniedForApplication);
        }
    }

    private void processDataRequest(NetworkListener networkListener) {
        String url;
        if (networkListener.getConnectionType() != AdCallParameters.OXMConnectionType.OFFLINE) {
            if (getChainItem() != null && getChainItem().type.equals("apihtml")) {
                url = getAdDomain();
            } else {
                this.urlGenerator = new URLGenerator(new GenerateURLCallback(), getAdModelCallbackListener());
                url = this.urlGenerator.getURL(this.urlGenerator.setURLParams(getAdCallParams()), this.urlGenerator.getAdCallParams().getParameters());
            }
            if (url != null && !url.equals("")) {
                new AdLoadHelper(url, getAdModelCallbackListener(), getChainItem()).sendAdRequest();
                return;
            }
            getAdModelCallbackListener().adModelLoadAdFail(new UnknownError("URL was not created"));
            return;
        }
        DeviceIsOffline deviceIsOffline = new DeviceIsOffline();
        if (getAdModelCallbackListener() != null) {
            getAdModelCallbackListener().adModelLoadAdFail(deviceIsOffline);
        }
    }

    public void setNativeAppendedParams(String str) {
        this.nativeAppendedParams = str;
    }

    public void trackAdModelEvents(String str, String str2) {
        GetNetworkTask getNetworkTask = new GetNetworkTask(null);
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.url = str2;
        getUrlParams.userAgent = OXSettings.userAgent;
        getNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    private AdModelLoadedListener getAdModelCallbackListener() {
        return this.mModelEventsListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAdDomain() {
        return this.mDomain;
    }

    public void setAdModelCallbackListener(AdModelLoadedListener adModelLoadedListener) {
        this.mModelEventsListener = adModelLoadedListener;
    }

    public void setAdCallParams(AdCallParameters adCallParameters) {
        this.mAdCallParams = adCallParameters;
    }

    public void setChainItem(ChainItem chainItem) {
        this.chainItem = chainItem;
    }

    public ChainItem getChainItem() {
        return this.chainItem;
    }

    public void setSSMAdWidth(int i) {
        this.ssmWidth = i;
    }

    public int getSSMAdWidth() {
        return this.ssmWidth;
    }

    public void setSSMAdHeight(int i) {
        this.ssmHeight = i;
    }

    public int getSSMAdHeight() {
        return this.ssmHeight;
    }

    public void setIsGroupIds(boolean z) {
        this.mIsGroupIds = z;
    }

    public void setAdUnitID(String str) {
        this.mAuid = str;
    }

    public String getAdUnitID() {
        return this.mAuid;
    }

    public boolean isGroupIds() {
        return this.mIsGroupIds;
    }

    public void setAdDomain(String str) {
        this.mDomain = str;
    }

    public AdCallParameters getAdCallParams() {
        return this.mAdCallParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class GenerateURLCallback implements GenerateURLListener {
        private GenerateURLCallback() {
        }

        @Override // com.openx.core.network.GenerateURLListener
        public String customURLParams(String str, AdCallParameters adCallParameters, AdTruthListener adTruthListener) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(adCallParameters.isSSL() ? "https://" : "http://");
            if (AdModel.this.getAdDomain() != null && AdModel.this.getAdUnitID() != null && !AdModel.this.getAdDomain().equals("")) {
                sb.append(AdModel.this.getAdDomain());
                adTruthListener.setDomain(sb.toString());
                sb.append("/ma/1.0/arj?");
                if (!AdModel.this.isGroupIds()) {
                    sb.append("auid=" + AdModel.this.getAdUnitID());
                } else {
                    sb.append("pgid=" + AdModel.this.getAdUnitID());
                }
                return sb.toString();
            }
            return null;
        }
    }

    public void setAvailableTpList(String str) {
        this.availableTPJars = str;
    }
}
