package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.nearby.connection.zzg;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class zzaxk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair<zzaxi, Pair<ParcelFileDescriptor, ParcelFileDescriptor>> zza(com.google.android.gms.nearby.connection.zzg zzgVar) throws IOException {
        switch (zzgVar.getType()) {
            case 1:
                return Pair.create(new zzaxi(zzgVar.getId(), zzgVar.getType(), zzgVar.zzNV(), null, null, -1L, null), null);
            case 2:
                return Pair.create(new zzaxi(zzgVar.getId(), zzgVar.getType(), null, zzgVar.zzNW().zzNZ(), zzgVar.zzNW().zzNY() == null ? null : zzgVar.zzNW().zzNY().getAbsolutePath(), zzgVar.zzNW().getSize(), null), null);
            case 3:
                try {
                    ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                    ParcelFileDescriptor[] createPipe2 = ParcelFileDescriptor.createPipe();
                    return Pair.create(new zzaxi(zzgVar.getId(), zzgVar.getType(), null, createPipe[0], null, -1L, createPipe2[0]), Pair.create(createPipe[1], createPipe2[1]));
                } catch (IOException e) {
                    Log.e("NearbyConnections", String.format("Unable to create PFD pipe for streaming payload %d from client to service.", Long.valueOf(zzgVar.getId())), e);
                    throw e;
                }
            default:
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException(String.format("Outgoing Payload %d has unknown type %d", Long.valueOf(zzgVar.getId()), Integer.valueOf(zzgVar.getType())));
                Log.wtf("NearbyConnections", "Unknown payload type!", illegalArgumentException);
                throw illegalArgumentException;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.gms.nearby.connection.zzg zza(zzaxi zzaxiVar) {
        long id = zzaxiVar.getId();
        switch (zzaxiVar.getType()) {
            case 1:
                return com.google.android.gms.nearby.connection.zzg.zzb(zzaxiVar.getBytes(), id);
            case 2:
                String zzOt = zzaxiVar.zzOt();
                if (zzOt != null) {
                    try {
                        return com.google.android.gms.nearby.connection.zzg.zza(zzg.zza.zza(new File(zzOt), zzaxiVar.zzOu()), id);
                    } catch (FileNotFoundException e) {
                        String valueOf = String.valueOf(zzOt);
                        Log.w("NearbyConnections", valueOf.length() != 0 ? "Failed to create Payload from ParcelablePayload: Java file not found at ".concat(valueOf) : new String("Failed to create Payload from ParcelablePayload: Java file not found at "), e);
                    }
                }
                return com.google.android.gms.nearby.connection.zzg.zza(zzg.zza.zzb(zzaxiVar.zzOs()), id);
            case 3:
                return com.google.android.gms.nearby.connection.zzg.zza(zzg.zzb.zzc(zzaxiVar.zzOs()), id);
            default:
                Log.w("NearbyConnections", String.format("Incoming ParcelablePayload %d has unknown type %d", Long.valueOf(zzaxiVar.getId()), Integer.valueOf(zzaxiVar.getType())));
                return null;
        }
    }
}
