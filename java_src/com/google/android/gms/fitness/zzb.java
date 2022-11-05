package com.google.android.gms.fitness;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzb {
    public static Scope zza(Scope scope) {
        return scope.equals(new Scope(Scopes.FITNESS_ACTIVITY_READ)) ? new Scope(Scopes.FITNESS_ACTIVITY_READ_WRITE) : scope.equals(new Scope(Scopes.FITNESS_LOCATION_READ)) ? new Scope(Scopes.FITNESS_LOCATION_READ_WRITE) : scope.equals(new Scope(Scopes.FITNESS_BODY_READ)) ? new Scope(Scopes.FITNESS_BODY_READ_WRITE) : scope.equals(new Scope(Scopes.FITNESS_NUTRITION_READ)) ? new Scope(Scopes.FITNESS_NUTRITION_READ_WRITE) : scope.equals(new Scope("https://www.googleapis.com/auth/fitness.blood_pressure.read")) ? new Scope("https://www.googleapis.com/auth/fitness.blood_pressure.write") : scope.equals(new Scope("https://www.googleapis.com/auth/fitness.blood_glucose.read")) ? new Scope("https://www.googleapis.com/auth/fitness.blood_glucose.write") : scope.equals(new Scope("https://www.googleapis.com/auth/fitness.oxygen_saturation.read")) ? new Scope("https://www.googleapis.com/auth/fitness.oxygen_saturation.write") : scope.equals(new Scope("https://www.googleapis.com/auth/fitness.body_temperature.read")) ? new Scope("https://www.googleapis.com/auth/fitness.body_temperature.write") : scope.equals(new Scope("https://www.googleapis.com/auth/fitness.reproductive_health.read")) ? new Scope("https://www.googleapis.com/auth/fitness.reproductive_health.write") : scope;
    }

    public static Set<Scope> zzj(Collection<Scope> collection) {
        HashSet hashSet = new HashSet(collection.size());
        for (Scope scope : collection) {
            Scope zza = zza(scope);
            if (zza.equals(scope) || !collection.contains(zza)) {
                hashSet.add(scope);
            }
        }
        return hashSet;
    }
}
