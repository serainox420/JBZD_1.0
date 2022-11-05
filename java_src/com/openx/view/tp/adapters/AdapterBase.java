package com.openx.view.tp.adapters;

import android.content.Context;
import com.openx.core.network.BaseResponseHandler;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public abstract class AdapterBase implements BaseResponseHandler {
    protected Context context;
    protected SDKAdEventsListener listener;

    public AdapterBase(Context context, SDKAdEventsListener sDKAdEventsListener) {
        this.context = context;
        this.listener = sDKAdEventsListener;
    }

    public void loadAd(ChainItem chainItem) {
    }

    public void cleanUp() {
    }

    public void show() {
    }
}
