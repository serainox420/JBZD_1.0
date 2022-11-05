package com.facebook.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Map;
/* loaded from: classes.dex */
public class al {
    public static float a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            int streamVolume = audioManager.getStreamVolume(3);
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (streamMaxVolume > 0) {
                return (streamVolume * 1.0f) / streamMaxVolume;
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    public static void a(Map<String, String> map, boolean z, boolean z2) {
        map.put(AudienceNetworkActivity.AUTOPLAY, z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put("inline", z2 ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }
}
