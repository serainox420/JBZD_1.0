package com.pubmatic.sdk.banner.mraid;

import com.pubmatic.sdk.common.PMLogger;
import java.util.Formatter;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3.dex */
public class ExpandProperties {
    private int width = 0;
    private int height = 0;
    private boolean useCustomClose = false;

    public static ExpandProperties propertiesFromArgs(Map<String, String> map) {
        ExpandProperties expandProperties = new ExpandProperties();
        try {
            expandProperties.setWidth(Integer.parseInt(map.get("width")));
            expandProperties.setHeight(Integer.parseInt(map.get("height")));
            expandProperties.setUseCustomClose("true".equals(map.get("useCustomClose")));
        } catch (Exception e) {
            PMLogger.logEvent("Error setting MRAID expand properties", PMLogger.LogLevel.Error);
        }
        return expandProperties;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public boolean useCustomClose() {
        return this.useCustomClose;
    }

    public void setUseCustomClose(boolean z) {
        this.useCustomClose = z;
    }

    public String toString() {
        String str = Consts.False;
        if (this.useCustomClose) {
            str = "true";
        }
        Formatter formatter = new Formatter(Locale.US);
        formatter.format("{width:%d,height:%d,useCustomClose:%s}", Integer.valueOf(this.width), Integer.valueOf(this.height), str);
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
