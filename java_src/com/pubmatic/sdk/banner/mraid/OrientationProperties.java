package com.pubmatic.sdk.banner.mraid;

import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Formatter;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3.dex */
public class OrientationProperties {
    private boolean allowOrientationChange = true;
    private Consts.ForceOrientation forceOrientation = Consts.ForceOrientation.None;

    public static OrientationProperties propertiesFromArgs(Map<String, String> map) {
        OrientationProperties orientationProperties = new OrientationProperties();
        try {
            orientationProperties.setAllowOrientationChange(!Consts.False.equals(map.get(Consts.OrientationPpropertiesAllowOrientationChange)));
            String str = map.get(Consts.OrientationPpropertiesForceOrientation);
            if ("none".equals(str)) {
                orientationProperties.setForceOrientation(Consts.ForceOrientation.None);
            } else if ("portrait".equals(str)) {
                orientationProperties.setForceOrientation(Consts.ForceOrientation.Portrait);
            } else if ("landscape".equals(str)) {
                orientationProperties.setForceOrientation(Consts.ForceOrientation.Landscape);
            }
        } catch (Exception e) {
        }
        return orientationProperties;
    }

    public boolean getAllowOrientationChange() {
        return this.allowOrientationChange;
    }

    public void setAllowOrientationChange(boolean z) {
        this.allowOrientationChange = z;
    }

    public Consts.ForceOrientation getForceOrientation() {
        return this.forceOrientation;
    }

    public void setForceOrientation(Consts.ForceOrientation forceOrientation) {
        this.forceOrientation = forceOrientation;
    }

    public String toString() {
        String str = Consts.False;
        if (this.allowOrientationChange) {
            str = "true";
        }
        String str2 = "none";
        switch (this.forceOrientation) {
            case None:
                str2 = "none";
                break;
            case Portrait:
                str2 = "portrait";
                break;
            case Landscape:
                str2 = "landscape";
                break;
        }
        Formatter formatter = new Formatter(Locale.US);
        formatter.format("{allowOrientationChange:%s,forceOrientation:'%s'}", str, str2);
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
