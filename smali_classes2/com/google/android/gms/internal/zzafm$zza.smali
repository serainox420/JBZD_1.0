.class public abstract Lcom/google/android/gms/internal/zzafm$zza;
.super Lcom/google/android/gms/internal/zzaad$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzafm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaad$zza",
        "<",
        "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
        "Lcom/google/android/gms/internal/zzafn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaef;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzaad$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/awareness/fence/FenceQueryResult;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/fence/FenceQueryResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzafm$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzafm$zza$1;-><init>(Lcom/google/android/gms/internal/zzafm$zza;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzafm$zza;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/fence/FenceQueryResult;

    move-result-object v0

    return-object v0
.end method
