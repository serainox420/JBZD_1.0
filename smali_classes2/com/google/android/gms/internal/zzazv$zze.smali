.class abstract Lcom/google/android/gms/internal/zzazv$zze;
.super Lcom/google/android/gms/internal/zzazs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzazs",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzbDr:Lcom/google/android/gms/internal/zzazt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzazs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzazv$zze$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzazv$zze$1;-><init>(Lcom/google/android/gms/internal/zzazv$zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazv$zze;->zzbDr:Lcom/google/android/gms/internal/zzazt;

    return-void
.end method


# virtual methods
.method protected zzbH(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$zzd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzazv$zzh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzazv$zzh;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzg;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazv$zze;->zzbH(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$zzd;

    move-result-object v0

    return-object v0
.end method
