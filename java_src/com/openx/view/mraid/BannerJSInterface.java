package com.openx.view.mraid;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.openx.common.utils.helpers.Utils;
import com.openx.view.WebViewBase;
/* loaded from: classes.dex */
public class BannerJSInterface extends BaseJSInterface {
    Context context;

    public BannerJSInterface(Context context, WebViewBase webViewBase) {
        super(context, webViewBase);
        this.context = context;
    }

    @Override // com.openx.view.mraid.BaseJSInterface, com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public String getPlacementType() {
        Utils.log(this, "[][][][][][] getPlacement inline");
        return "inline";
    }
}
