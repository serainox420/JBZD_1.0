package com.millennialmedia.internal;

import android.text.TextUtils;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.MediatedAdAdapter;
import com.millennialmedia.internal.adcontrollers.AdController;
import com.millennialmedia.internal.utils.HttpUtils;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PlayList {
    public static final String VERSION = "1";

    /* renamed from: a  reason: collision with root package name */
    private static final String f4100a = PlayList.class.getSimpleName();
    public String handshakeConfig;
    public String placementId;
    public String placementName;
    public String playListVersion;
    public String responseId;
    public String siteId;
    private final List<PlayListItem> b = new ArrayList();
    private int c = 0;
    public boolean reportingEnabled = false;

    /* loaded from: classes3.dex */
    public static class PlayListItem {
        final String d;
        protected AdMetadata e;

        protected PlayListItem(String str) {
            this(str, false);
        }

        protected PlayListItem(String str, boolean z) {
            if (TextUtils.isEmpty(str)) {
                throw new InvalidParameterException("itemId is required");
            }
            this.d = str;
            this.e = new AdMetadata();
            this.e.put(AdMetadata.ENHANCED_AD_CONTROL_ENABLED, String.valueOf(z));
        }

        public boolean isEnhancedAdControlEnabled() {
            if (!this.e.containsKey(AdMetadata.ENHANCED_AD_CONTROL_ENABLED)) {
                return false;
            }
            return Boolean.parseBoolean(this.e.get(AdMetadata.ENHANCED_AD_CONTROL_ENABLED));
        }
    }

    /* loaded from: classes3.dex */
    public static class ClientMediationPlayListItem extends PlayListItem {

        /* renamed from: a  reason: collision with root package name */
        final String f4102a;
        final String b;
        final String c;

        public ClientMediationPlayListItem(String str, String str2, String str3, String str4) {
            super(str);
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                throw new InvalidParameterException("networkId, siteId and spaceId are required");
            }
            this.c = str2;
            this.f4102a = str3;
            this.b = str4;
        }
    }

    /* loaded from: classes3.dex */
    public static class ServerMediationPlayListItem extends PlayListItem {

        /* renamed from: a  reason: collision with root package name */
        final String f4104a;
        public String postBody;
        public String postContentType;
        public String validateRegex;

        public ServerMediationPlayListItem(String str, String str2) {
            this(str, str2, false);
        }

        public ServerMediationPlayListItem(String str, String str2, boolean z) {
            super(str, z);
            if (TextUtils.isEmpty(str2)) {
                throw new InvalidParameterException("url is required");
            }
            this.f4104a = str2;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExchangeMediationPlayListItem extends PlayListItem {

        /* renamed from: a  reason: collision with root package name */
        final String f4103a;
        public String postBody;
        public String postContentType;

        public ExchangeMediationPlayListItem(String str, String str2) {
            this(str, str2, false);
        }

        public ExchangeMediationPlayListItem(String str, String str2, boolean z) {
            super(str, z);
            if (TextUtils.isEmpty(str2)) {
                throw new InvalidParameterException("url is required");
            }
            this.f4103a = str2;
        }
    }

    /* loaded from: classes3.dex */
    public static class AdContentPlayListItem extends PlayListItem {

        /* renamed from: a  reason: collision with root package name */
        final String f4101a;

        public AdContentPlayListItem(String str, String str2, AdMetadata adMetadata) {
            this(str, str2, adMetadata, false);
        }

        public AdContentPlayListItem(String str, String str2, AdMetadata adMetadata, boolean z) {
            super(str, z);
            if (TextUtils.isEmpty(str2)) {
                throw new InvalidParameterException("value is required");
            }
            this.f4101a = str2;
            this.e.addAll(adMetadata);
        }
    }

    public void enableReporting() {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4100a, "Enabling reporting for placement id <" + this.placementId + "> and playlist <" + this + ">");
        }
        this.reportingEnabled = true;
    }

    public void addItem(PlayListItem playListItem) throws InvalidParameterException {
        if (playListItem != null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4100a, "Adding playlist item.\n\tPlaylist: " + this + "\n\tPlaylist item: " + playListItem + "\n\tPlaylist item ID: " + playListItem.d);
            }
            this.b.add(playListItem);
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4100a, "Unable to add null playlist item");
        }
    }

    public PlayListItem getItem(int i) {
        if (this.b.size() <= i) {
            return null;
        }
        return this.b.get(i);
    }

    public boolean hasNext() {
        return this.c < this.b.size();
    }

    public AdAdapter getNextAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter) {
        int i;
        HttpUtils.Response contentFromPostRequest;
        HttpUtils.Response contentFromPostRequest2;
        int i2 = -3;
        AdAdapter adAdapter = null;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4100a, "Attempting to get ad adapter for placement.\n\tPlacement: " + adPlacement + "\n\tPlacement ID: " + adPlacement.placementId);
        }
        synchronized (this) {
            if (this.c >= this.b.size()) {
                if (playListItemReporter != null) {
                    playListItemReporter.status = -3;
                }
            } else {
                List<PlayListItem> list = this.b;
                int i3 = this.c;
                this.c = i3 + 1;
                PlayListItem playListItem = list.get(i3);
                if (playListItemReporter != null) {
                    playListItemReporter.itemId = playListItem.d;
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4100a, "Processing playlist item ID: " + playListItem.d);
                }
                if (playListItem instanceof ClientMediationPlayListItem) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4100a, "Processing client mediation playlist item ID: " + playListItem.d);
                    }
                    ClientMediationPlayListItem clientMediationPlayListItem = (ClientMediationPlayListItem) playListItem;
                    AdAdapter mediatedAdapterInstance = AdAdapter.getMediatedAdapterInstance(clientMediationPlayListItem.c, adPlacement.getClass());
                    if (mediatedAdapterInstance == null) {
                        MMLog.e(f4100a, "Unable to find ad adapter for network ID: " + clientMediationPlayListItem.c);
                    } else if (!(mediatedAdapterInstance instanceof MediatedAdAdapter)) {
                        MMLog.e(f4100a, "Unable to use ad adapter <" + mediatedAdapterInstance + "> for <" + clientMediationPlayListItem.c + ">, does not implement mediated ad interface");
                        mediatedAdapterInstance = null;
                    } else {
                        ((MediatedAdAdapter) mediatedAdapterInstance).setMediationInfo(new MediatedAdAdapter.MediationInfo(clientMediationPlayListItem.f4102a, clientMediationPlayListItem.b));
                        mediatedAdapterInstance.requestTimeout = Handshake.getClientMediationTimeout();
                    }
                    i = -3;
                    adAdapter = mediatedAdapterInstance;
                } else if (playListItem instanceof ServerMediationPlayListItem) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4100a, "Processing server mediation playlist item ID: " + playListItem.d);
                    }
                    ServerMediationPlayListItem serverMediationPlayListItem = (ServerMediationPlayListItem) playListItem;
                    int serverToServerTimeout = Handshake.getServerToServerTimeout();
                    if (!TextUtils.isEmpty(serverMediationPlayListItem.postBody)) {
                        contentFromPostRequest2 = HttpUtils.getContentFromPostRequest(serverMediationPlayListItem.f4104a, serverMediationPlayListItem.postBody, serverMediationPlayListItem.postContentType, serverToServerTimeout);
                    } else {
                        contentFromPostRequest2 = HttpUtils.getContentFromPostRequest(serverMediationPlayListItem.f4104a, serverToServerTimeout);
                    }
                    if (TextUtils.isEmpty(contentFromPostRequest2.content)) {
                        MMLog.e(f4100a, "Unable to retrieve content for server mediation playlist item, placement ID <" + adPlacement.placementId + ">");
                        i = a(contentFromPostRequest2);
                    } else if (!TextUtils.isEmpty(serverMediationPlayListItem.validateRegex) && contentFromPostRequest2.content.matches("(?s)" + serverMediationPlayListItem.validateRegex)) {
                        MMLog.e(f4100a, "Unable to validate content for server mediation playlist item due to \"no ad\" response for placement ID <" + adPlacement.placementId + "> and content <" + contentFromPostRequest2.content + ">");
                        i = -1;
                    } else {
                        adAdapter = a(adPlacement, contentFromPostRequest2.content);
                        if (adAdapter == null) {
                            MMLog.e(f4100a, "Unable to find adapter for server mediation playlist item, placement ID <" + adPlacement.placementId + "> and content <" + contentFromPostRequest2.content + ">");
                            i = -3;
                        } else {
                            adAdapter.setAdMetadata(contentFromPostRequest2.adMetadata);
                            i = -3;
                        }
                    }
                } else if (playListItem instanceof ExchangeMediationPlayListItem) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4100a, "Processing exchange mediation playlist item ID: " + playListItem.d);
                    }
                    ExchangeMediationPlayListItem exchangeMediationPlayListItem = (ExchangeMediationPlayListItem) playListItem;
                    int exchangeTimeout = Handshake.getExchangeTimeout();
                    if (!TextUtils.isEmpty(exchangeMediationPlayListItem.postBody)) {
                        contentFromPostRequest = HttpUtils.getContentFromPostRequest(exchangeMediationPlayListItem.f4103a, exchangeMediationPlayListItem.postBody, exchangeMediationPlayListItem.postContentType, exchangeTimeout);
                    } else {
                        contentFromPostRequest = HttpUtils.getContentFromPostRequest(exchangeMediationPlayListItem.f4103a, exchangeTimeout);
                    }
                    if (TextUtils.isEmpty(contentFromPostRequest.content)) {
                        MMLog.e(f4100a, "Unable to retrieve content for exchange mediation playlist item, placement ID <" + adPlacement.placementId + ">");
                        i2 = a(contentFromPostRequest);
                    } else {
                        try {
                            JSONObject jSONObject = new JSONObject(contentFromPostRequest.content);
                            String string = jSONObject.getString(AdDatabaseHelper.TABLE_AD);
                            String optString = jSONObject.optString("ad_buyer", null);
                            String optString2 = jSONObject.optString("ad_pru", null);
                            adAdapter = a(adPlacement, string);
                            if (adAdapter != null) {
                                if (playListItemReporter != null) {
                                    playListItemReporter.buyer = optString;
                                    playListItemReporter.pru = optString2;
                                }
                                adAdapter.setAdMetadata(contentFromPostRequest.adMetadata);
                            } else {
                                MMLog.e(f4100a, "Unable to find adapter for exchange mediation playlist item, placement ID <" + adPlacement.placementId + "> and content <" + string + ">");
                            }
                        } catch (JSONException e) {
                            MMLog.e(f4100a, "Error occurred when trying to parse ad content from exchange response");
                        }
                    }
                    i = i2;
                } else {
                    if (playListItem instanceof AdContentPlayListItem) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(f4100a, "Processing ad content playlist item ID: " + playListItem.d);
                        }
                        AdContentPlayListItem adContentPlayListItem = (AdContentPlayListItem) playListItem;
                        adAdapter = a(adPlacement, adContentPlayListItem.f4101a);
                        if (adAdapter == null) {
                            MMLog.e(f4100a, "Unable to find adapter for ad content playlist item, placement ID <" + adPlacement.placementId + "> and content <" + adContentPlayListItem.f4101a + ">");
                            i = -3;
                        } else {
                            adAdapter.setAdMetadata(adContentPlayListItem.e);
                        }
                    }
                    i = -3;
                }
                if (adAdapter != null) {
                    i = 1;
                    if (playListItem != null) {
                        adAdapter.setAdMetadata(playListItem.e);
                    }
                }
                int i4 = i;
                if (playListItemReporter != null) {
                    playListItemReporter.status = i4;
                }
            }
        }
        return adAdapter;
    }

    private static AdAdapter a(AdPlacement adPlacement, String str) {
        AdAdapter adAdapter = null;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4100a, "Attempting to get ad adapter for ad placement ID: " + adPlacement.placementId);
        }
        if (str == null) {
            MMLog.e(f4100a, "Unable to find ad adapter, ad content is null");
        } else {
            Class<?> controllerClassForContent = AdController.getControllerClassForContent(str);
            if (controllerClassForContent == null) {
                MMLog.e(f4100a, "Unable to determine ad controller type for specified ad content <" + str + ">");
            } else {
                adAdapter = AdAdapter.getAdapterInstance(adPlacement.getClass(), controllerClassForContent);
                if (adAdapter != null) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4100a, "Found ad adapter <" + adAdapter + "> for placement ID <" + adPlacement.placementId + ">");
                    }
                    adAdapter.setContent(str);
                }
            }
        }
        return adAdapter;
    }

    private int a(HttpUtils.Response response) {
        switch (response.code) {
            case AdTrackerConstants.NETWORK_TIMEOUT /* 408 */:
            case 504:
                return -2;
            default:
                return -1;
        }
    }
}
