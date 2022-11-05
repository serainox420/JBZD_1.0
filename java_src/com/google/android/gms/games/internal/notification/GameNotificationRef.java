package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzaa;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes2.dex */
public final class GameNotificationRef extends zzc implements GameNotification {
    /* JADX INFO: Access modifiers changed from: package-private */
    public GameNotificationRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public long getId() {
        return getLong(AnalyticsSQLiteHelper.GENERAL_ID);
    }

    public String getText() {
        return getString(CommonConstants.RESPONSE_TEXT);
    }

    public String getTitle() {
        return getString("title");
    }

    public int getType() {
        return getInteger("type");
    }

    public String toString() {
        return zzaa.zzv(this).zzg("Id", Long.valueOf(getId())).zzg("NotificationId", zzFW()).zzg("Type", Integer.valueOf(getType())).zzg("Title", getTitle()).zzg("Ticker", zzFX()).zzg("Text", getText()).zzg("CoalescedText", zzFY()).zzg("isAcknowledged", Boolean.valueOf(zzFZ())).zzg("isSilent", Boolean.valueOf(zzGa())).zzg("isQuiet", Boolean.valueOf(zzGb())).toString();
    }

    public String zzFW() {
        return getString("notification_id");
    }

    public String zzFX() {
        return getString("ticker");
    }

    public String zzFY() {
        return getString("coalesced_text");
    }

    public boolean zzFZ() {
        return getInteger("acknowledged") > 0;
    }

    public boolean zzGa() {
        return getInteger("alert_level") == 0;
    }

    public boolean zzGb() {
        return getInteger("alert_level") == 2;
    }
}
