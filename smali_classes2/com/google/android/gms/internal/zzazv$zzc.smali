.class abstract Lcom/google/android/gms/internal/zzazv$zzc;
.super Lcom/google/android/gms/internal/zzazs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzazs",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$zzf;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzbDr:Lcom/google/android/gms/internal/zzazt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzazs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzazv$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzazv$zzc$1;-><init>(Lcom/google/android/gms/internal/zzazv$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazv$zzc;->zzbDr:Lcom/google/android/gms/internal/zzazt;

    return-void
.end method


# virtual methods
.method protected zzbF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$zzf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzazv$zzj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzazv$zzj;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazv$zzc;->zzbF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/safetynet/SafetyNetApi$zzf;

    move-result-object v0

    return-object v0
.end method
