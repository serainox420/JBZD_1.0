package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.internal.zzasm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class GeofencingEvent {
    private final int zzPY;
    private final int zzbjL;
    private final List<Geofence> zzbjM;
    private final Location zzbjN;

    private GeofencingEvent(int i, int i2, List<Geofence> list, Location location) {
        this.zzPY = i;
        this.zzbjL = i2;
        this.zzbjM = list;
        this.zzbjN = location;
    }

    public static GeofencingEvent fromIntent(Intent intent) {
        if (intent == null) {
            return null;
        }
        return new GeofencingEvent(intent.getIntExtra("gms_error_code", -1), zzx(intent), zzy(intent), (Location) intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
    }

    private static int zzx(Intent intent) {
        int intExtra = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
        if (intExtra == -1) {
            return -1;
        }
        if (intExtra != 1 && intExtra != 2 && intExtra != 4) {
            return -1;
        }
        return intExtra;
    }

    private static List<Geofence> zzy(Intent intent) {
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (arrayList == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(zzasm.zzw((byte[]) it.next()));
        }
        return arrayList2;
    }

    public int getErrorCode() {
        return this.zzPY;
    }

    public int getGeofenceTransition() {
        return this.zzbjL;
    }

    public List<Geofence> getTriggeringGeofences() {
        return this.zzbjM;
    }

    public Location getTriggeringLocation() {
        return this.zzbjN;
    }

    public boolean hasError() {
        return this.zzPY != -1;
    }
}
