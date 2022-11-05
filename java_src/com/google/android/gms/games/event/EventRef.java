package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
/* loaded from: classes2.dex */
public final class EventRef extends zzc implements Event {
    /* JADX INFO: Access modifiers changed from: package-private */
    public EventRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return EventEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Event mo520freeze() {
        return new EventEntity(this);
    }

    @Override // com.google.android.gms.games.event.Event
    public String getDescription() {
        return getString("description");
    }

    @Override // com.google.android.gms.games.event.Event
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("description", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public String getEventId() {
        return getString("external_event_id");
    }

    @Override // com.google.android.gms.games.event.Event
    public String getFormattedValue() {
        return getString("formatted_value");
    }

    @Override // com.google.android.gms.games.event.Event
    public void getFormattedValue(CharArrayBuffer charArrayBuffer) {
        zza("formatted_value", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public Uri getIconImageUri() {
        return zzdg("icon_image_uri");
    }

    @Override // com.google.android.gms.games.event.Event
    public String getIconImageUrl() {
        return getString("icon_image_url");
    }

    @Override // com.google.android.gms.games.event.Event
    public String getName() {
        return getString("name");
    }

    @Override // com.google.android.gms.games.event.Event
    public void getName(CharArrayBuffer charArrayBuffer) {
        zza("name", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public Player getPlayer() {
        return new PlayerRef(this.zzaBi, this.zzaDL);
    }

    @Override // com.google.android.gms.games.event.Event
    public long getValue() {
        return getLong("value");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return EventEntity.zza(this);
    }

    @Override // com.google.android.gms.games.event.Event
    public boolean isVisible() {
        return getBoolean("visibility");
    }

    public String toString() {
        return EventEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((EventEntity) ((Event) mo520freeze())).writeToParcel(parcel, i);
    }
}
