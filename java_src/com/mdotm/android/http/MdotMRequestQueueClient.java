package com.mdotm.android.http;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.mdotm.android.listener.MdotMNetworkListener;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.utils.MdotMLogger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class MdotMRequestQueueClient {
    private static Handler handler;
    private static MdotMRequestQueueClient instance = null;
    private boolean applicationHasFocus;
    MdotMNetworkManager mAdManager;
    Context mContext;
    private Map<Long, MdotMNetworkListener> mapNetworkListenerQueue = new HashMap();
    private Map<Long, MdotMAdRequest> mapRequestQueue = new HashMap();
    private List<Long> listRequestId = new ArrayList();
    private List<Long> listActiveRequest = new ArrayList();

    public static MdotMRequestQueueClient getInstance(Context context) {
        if (instance == null) {
            instance = new MdotMRequestQueueClient(context);
        }
        return instance;
    }

    private MdotMRequestQueueClient(Context context) {
        this.mContext = context;
        if (handler == null) {
            MdotMLogger.e(this, "Creating new handler");
            handler = new Handler() { // from class: com.mdotm.android.http.MdotMRequestQueueClient.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    try {
                        MdotMLogger.d(this, "Handling the message");
                        if (message != null) {
                            MdotMLogger.d(this, " message id " + message.obj);
                            if (MdotMRequestQueueClient.this.listActiveRequest.contains(message.obj)) {
                                MdotMLogger.d(this, "contains requested id ");
                                MdotMRequestQueueClient.this.listActiveRequest.remove(message.obj);
                                MdotMRequestQueueClient.this.mapRequestQueue.remove(message.obj);
                                MdotMRequestQueueClient.this.mapNetworkListenerQueue.remove(message.obj);
                                MdotMRequestQueueClient.this.listRequestId.remove(message.obj);
                                if (MdotMRequestQueueClient.this.listRequestId.size() <= 0) {
                                    if (MdotMRequestQueueClient.this.listActiveRequest.size() == 0) {
                                        MdotMRequestQueueClient.this.listActiveRequest.clear();
                                        MdotMRequestQueueClient.this.mapRequestQueue.clear();
                                        MdotMRequestQueueClient.this.mapNetworkListenerQueue.clear();
                                        MdotMRequestQueueClient.this.listRequestId.clear();
                                    }
                                } else if (MdotMRequestQueueClient.this.isApplicationHasFocus()) {
                                    Long l = (Long) MdotMRequestQueueClient.this.listRequestId.get(0);
                                    MdotMLogger.d(this, "mapRequestQueue size > 0");
                                    MdotMRequestQueueClient.this.sendNextRequest((MdotMAdRequest) MdotMRequestQueueClient.this.mapRequestQueue.get(l), (MdotMNetworkListener) MdotMRequestQueueClient.this.mapNetworkListenerQueue.get(l), l.longValue());
                                } else {
                                    for (int i = 0; i < MdotMRequestQueueClient.this.listRequestId.size(); i++) {
                                        Long l2 = (Long) MdotMRequestQueueClient.this.listRequestId.get(i);
                                        MdotMAdRequest mdotMAdRequest = (MdotMAdRequest) MdotMRequestQueueClient.this.mapRequestQueue.get(l2);
                                        MdotMRequestQueueClient.this.mapRequestQueue.remove(l2);
                                        MdotMRequestQueueClient.this.mapNetworkListenerQueue.remove(l2);
                                        MdotMRequestQueueClient.this.listRequestId.remove(l2);
                                    }
                                    if (MdotMRequestQueueClient.this.listRequestId.size() > 0) {
                                        MdotMLogger.i(this, "still has some interstitial requests so processing");
                                        Long l3 = (Long) MdotMRequestQueueClient.this.listRequestId.get(0);
                                        MdotMRequestQueueClient.this.sendNextRequest((MdotMAdRequest) MdotMRequestQueueClient.this.mapRequestQueue.get(l3), (MdotMNetworkListener) MdotMRequestQueueClient.this.mapNetworkListenerQueue.get(l3), l3.longValue());
                                    }
                                }
                            }
                        }
                        super.handleMessage(message);
                    } catch (Exception e) {
                        try {
                            MdotMRequestQueueClient.this.listActiveRequest.clear();
                            MdotMRequestQueueClient.this.mapRequestQueue.clear();
                            MdotMRequestQueueClient.this.mapNetworkListenerQueue.clear();
                            MdotMRequestQueueClient.this.listRequestId.clear();
                        } catch (Exception e2) {
                        }
                    }
                }
            };
        }
    }

    protected void sendNextRequest(MdotMAdRequest mdotMAdRequest, MdotMNetworkListener mdotMNetworkListener, long j) {
        MdotMLogger.d(this, "** sending req for  " + j);
        this.mAdManager = MdotMNetworkManager.getInstance(this.mContext, handler);
        this.mAdManager.setAdNetworkListener(mdotMNetworkListener);
        this.mAdManager.sendRequest(mdotMAdRequest, j);
        this.listActiveRequest.add(Long.valueOf(j));
    }

    public void addRequest(MdotMAdRequest mdotMAdRequest, MdotMNetworkListener mdotMNetworkListener) {
        long generateId = generateId();
        MdotMLogger.d(this, "** added to queue " + generateId);
        this.listRequestId.add(Long.valueOf(generateId));
        this.mapNetworkListenerQueue.put(Long.valueOf(generateId), mdotMNetworkListener);
        this.mapRequestQueue.put(Long.valueOf(generateId), mdotMAdRequest);
        if (this.listActiveRequest.size() == 0) {
            sendNextRequest(mdotMAdRequest, mdotMNetworkListener, generateId);
        }
    }

    private long generateId() {
        return System.currentTimeMillis();
    }

    public boolean isApplicationHasFocus() {
        return this.applicationHasFocus;
    }

    public void setApplicationHasFocus(boolean z) {
        this.applicationHasFocus = z;
    }
}
