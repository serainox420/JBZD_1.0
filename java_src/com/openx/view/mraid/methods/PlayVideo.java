package com.openx.view.mraid.methods;

import android.content.Context;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.BaseJSInterface;
import java.io.IOException;
/* loaded from: classes3.dex */
public class PlayVideo {
    BaseJSInterface jsi;
    WebViewBase webViewBase;

    public PlayVideo(Context context, BaseJSInterface baseJSInterface, WebViewBase webViewBase) {
        this.webViewBase = webViewBase;
        this.jsi = baseJSInterface;
    }

    public void playVideo(String str) {
        OXMManagersResolver.getInstance().setCurrentAd(this.webViewBase);
        if (str != null && !str.equals("")) {
            try {
                OXMManagersResolver.getInstance().getDeviceManager().playVideo(str);
            } catch (IOException e) {
                Utils.log(this, e.getMessage());
            }
        }
    }
}
