package com.openx.view.mraid.methods;

import android.content.Context;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.sdk.calendar.OXMCalendarEvent;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.BaseJSInterface;
import com.openx.view.mraid.JSInterface;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class CalendarEvent {
    WebViewBase adBaseView;
    BaseJSInterface jsi;

    public CalendarEvent(Context context, BaseJSInterface baseJSInterface, WebViewBase webViewBase) {
        this.adBaseView = webViewBase;
        this.jsi = baseJSInterface;
    }

    public void createCalendarEvent(String str) {
        if (str != null && !str.equals("")) {
            try {
                OXMManagersResolver.getInstance().getDeviceManager().createCalendarEvent(new OXMCalendarEvent(new JSONObject(str)));
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
                this.jsi.onError(Utils.getMRAIDErrMessage("create_calendar_event"), JSInterface.ACTION_CREATE_CALENDAR_EVENT);
            }
        }
    }
}
