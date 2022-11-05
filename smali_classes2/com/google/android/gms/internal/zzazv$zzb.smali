.class abstract Lcom/google/android/gms/internal/zzazv$zzb;
.super Lcom/google/android/gms/internal/zzazs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzazs",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzbDr:Lcom/google/android/gms/internal/zzazt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzazs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzazv$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzazv$zzb$1;-><init>(Lcom/google/android/gms/internal/zzazv$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazv$zzb;->zzbDr:Lcom/google/android/gms/internal/zzazt;

    return-void
.end method


# virtual methods
.method protected zzbE(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzazv$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzazv$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazv$zzb;->zzbE(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResult;

    move-result-object v0

    return-object v0
.end method
