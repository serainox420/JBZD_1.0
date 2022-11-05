package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class EventEntity extends GamesAbstractSafeParcelable implements Event {
    public static final Parcelable.Creator<EventEntity> CREATOR = new EventEntityCreator();
    private final String mName;
    private final String zzaXJ;
    private final Uri zzaXy;
    private final PlayerEntity zzaYM;
    private final String zzaZp;
    private final String zzaZq;
    private final long zzadd;
    private final String zzade;
    private final boolean zzww;

    public EventEntity(Event event) {
        this.zzaZp = event.getEventId();
        this.mName = event.getName();
        this.zzade = event.getDescription();
        this.zzaXy = event.getIconImageUri();
        this.zzaXJ = event.getIconImageUrl();
        this.zzaYM = (PlayerEntity) event.getPlayer().mo520freeze();
        this.zzadd = event.getValue();
        this.zzaZq = event.getFormattedValue();
        this.zzww = event.isVisible();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventEntity(String str, String str2, String str3, Uri uri, String str4, Player player, long j, String str5, boolean z) {
        this.zzaZp = str;
        this.mName = str2;
        this.zzade = str3;
        this.zzaXy = uri;
        this.zzaXJ = str4;
        this.zzaYM = new PlayerEntity(player);
        this.zzadd = j;
        this.zzaZq = str5;
        this.zzww = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Event event) {
        return zzaa.hashCode(event.getEventId(), event.getName(), event.getDescription(), event.getIconImageUri(), event.getIconImageUrl(), event.getPlayer(), Long.valueOf(event.getValue()), event.getFormattedValue(), Boolean.valueOf(event.isVisible()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Event event, Object obj) {
        if (!(obj instanceof Event)) {
            return false;
        }
        if (event == obj) {
            return true;
        }
        Event event2 = (Event) obj;
        return zzaa.equal(event2.getEventId(), event.getEventId()) && zzaa.equal(event2.getName(), event.getName()) && zzaa.equal(event2.getDescription(), event.getDescription()) && zzaa.equal(event2.getIconImageUri(), event.getIconImageUri()) && zzaa.equal(event2.getIconImageUrl(), event.getIconImageUrl()) && zzaa.equal(event2.getPlayer(), event.getPlayer()) && zzaa.equal(Long.valueOf(event2.getValue()), Long.valueOf(event.getValue())) && zzaa.equal(event2.getFormattedValue(), event.getFormattedValue()) && zzaa.equal(Boolean.valueOf(event2.isVisible()), Boolean.valueOf(event.isVisible()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Event event) {
        return zzaa.zzv(event).zzg("Id", event.getEventId()).zzg("Name", event.getName()).zzg("Description", event.getDescription()).zzg("IconImageUri", event.getIconImageUri()).zzg("IconImageUrl", event.getIconImageUrl()).zzg("Player", event.getPlayer()).zzg("Value", Long.valueOf(event.getValue())).zzg("FormattedValue", event.getFormattedValue()).zzg("isVisible", Boolean.valueOf(event.isVisible())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Event mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.event.Event
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzade, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public String getEventId() {
        return this.zzaZp;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getFormattedValue() {
        return this.zzaZq;
    }

    @Override // com.google.android.gms.games.event.Event
    public void getFormattedValue(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzaZq, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public Uri getIconImageUri() {
        return this.zzaXy;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getIconImageUrl() {
        return this.zzaXJ;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.event.Event
    public void getName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.mName, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public Player getPlayer() {
        return this.zzaYM;
    }

    @Override // com.google.android.gms.games.event.Event
    public long getValue() {
        return this.zzadd;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.event.Event
    public boolean isVisible() {
        return this.zzww;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        EventEntityCreator.zza(this, parcel, i);
    }
}
