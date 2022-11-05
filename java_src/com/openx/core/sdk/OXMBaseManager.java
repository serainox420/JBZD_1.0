package com.openx.core.sdk;

import android.content.Context;
/* loaded from: classes3.dex */
public class OXMBaseManager implements OXMManager {
    private Context mContext;
    private boolean mIsInit;

    @Override // com.openx.core.sdk.OXMManager
    public boolean isInit() {
        return this.mIsInit;
    }

    @Override // com.openx.core.sdk.OXMManager
    public void init(Context context) {
        if (context != null) {
            this.mContext = context;
            this.mIsInit = true;
        }
    }

    @Override // com.openx.core.sdk.OXMManager
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.openx.core.sdk.OXMManager
    public void dispose() {
        this.mIsInit = false;
        this.mContext = null;
    }
}
