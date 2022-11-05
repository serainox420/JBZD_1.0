package com.openx.view.tp.chain.network;

import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.PostNetworkTask;
import com.openx.core.network.ResponseHandler;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.ServerWrongResponse;
import com.openx.errors.UnknownError;
import com.openx.view.tp.chain.parser.ChainResponse;
/* loaded from: classes3.dex */
public class ChainLoadWrapper {
    public static boolean parseError = false;
    private SDKChainLoadListener chainLoadListener;
    private transient ChainResponse mAdGroup;
    private boolean mIsLoaded;
    private String url;

    public ChainLoadWrapper(String str, SDKChainLoadListener sDKChainLoadListener) {
        this.url = str;
        this.chainLoadListener = sDKChainLoadListener;
    }

    private void setChainResponse(ChainResponse chainResponse) {
        this.mAdGroup = chainResponse;
    }

    private ChainResponse getChainResponse() {
        return this.mAdGroup;
    }

    public boolean isLoaded() {
        return this.mIsLoaded;
    }

    private void setIsLoaded(boolean z) {
        this.mIsLoaded = z;
    }

    public void sendChainLoadRequest() {
        PostNetworkTask postNetworkTask = new PostNetworkTask(new ChainRequestListener());
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

    /* loaded from: classes3.dex */
    private class ChainRequestListener implements ResponseHandler {
        private ChainRequestListener() {
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processResponse(BaseNetworkTask.GetUrlResult getUrlResult) {
            ChainLoadWrapper.this.constructChainResponse(getUrlResult.response);
            ChainLoadWrapper.this.loadChainCallback(getUrlResult.response);
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processError(String str) {
            UnknownError unknownError = new UnknownError(str);
            if (ChainLoadWrapper.this.chainLoadListener != null) {
                ChainLoadWrapper.this.chainLoadListener.onSDKChainLoadFail(unknownError);
            }
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processError(String str, Throwable th) {
            UnknownError unknownError = new UnknownError(str);
            if (ChainLoadWrapper.this.chainLoadListener != null) {
                ChainLoadWrapper.this.chainLoadListener.onSDKChainLoadFail(unknownError);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadChainCallback(String str) {
        if (!isLoaded()) {
            setIsLoaded(true);
            if (this.chainLoadListener != null) {
                if (str.equals("") || parseError) {
                    this.chainLoadListener.onSDKChainLoadFail(new ServerWrongResponse());
                } else {
                    this.chainLoadListener.onSDKChainLoadSuccess(getChainResponse());
                }
                parseError = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void constructChainResponse(String str) {
        setChainResponse(new ChainResponse(str));
    }
}
