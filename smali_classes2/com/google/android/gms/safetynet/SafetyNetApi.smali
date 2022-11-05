.class public interface abstract Lcom/google/android/gms/safetynet/SafetyNetApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/safetynet/SafetyNetApi$zzd;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zzb;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zzc;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zzf;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zze;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zza;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;
    }
.end annotation


# virtual methods
.method public abstract attest(Lcom/google/android/gms/common/api/GoogleApiClient;[B)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[B)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract enableVerifyApps(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$zzf;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isVerifyAppsEnabled(Landroid/content/Context;)Z
.end method

.method public abstract listHarmfulApps(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$zzc;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract lookupUri(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[I)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lookupUri(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract lookupUriInLocalBlacklist(Ljava/lang/String;[I)Z
.end method

.method public abstract verifyWithRecaptcha(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$zzd;",
            ">;"
        }
    .end annotation
.end method
