package com.mdotm.android.vast;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class VolumnContentObserver extends ContentObserver {
    private Context context;
    private Handler mHandler;
    private ArrayList<String> muteUrl;
    private int previousVolume;
    private LinearAdTrackingEvents trackingEvents;
    private ArrayList<String> unMuteUrl;

    public VolumnContentObserver(Context context, Handler handler, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        super(handler);
        this.context = context;
        this.mHandler = handler;
        this.previousVolume = ((AudioManager) this.context.getSystemService("audio")).getStreamVolume(3);
        this.muteUrl = arrayList;
        this.unMuteUrl = arrayList2;
        if (this.previousVolume == 0) {
            MdotMLogger.i(this, "valumn Mute impression when video started:: ");
        }
        MdotMLogger.i(this, "Volumn listener");
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return super.deliverSelfNotifications();
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        int streamVolume = ((AudioManager) this.context.getSystemService("audio")).getStreamVolume(3);
        if (streamVolume == 0 && this.previousVolume != 0) {
            MdotMLogger.i(this, "valumn Mute  impression :: ");
        } else if (streamVolume != 0 && this.previousVolume == 0) {
            MdotMLogger.i(this, "valumn unMute impression :: ");
        }
        this.previousVolume = streamVolume;
    }

    private void sendImpression(final ArrayList<String> arrayList) {
        this.mHandler.post(new Runnable() { // from class: com.mdotm.android.vast.VolumnContentObserver.1
            @Override // java.lang.Runnable
            public void run() {
                if (arrayList != null) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < arrayList.size()) {
                            MdotMUtils.getUtilsInstance().reportImpression((String) arrayList.get(i2), VolumnContentObserver.this.context);
                            i = i2 + 1;
                        } else {
                            return;
                        }
                    }
                }
            }
        });
    }
}
