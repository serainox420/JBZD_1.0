.class public abstract Lcom/google/android/gms/internal/zzye$zzc;
.super Lcom/google/android/gms/internal/zzye$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzye$zzb",
        "<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzavm:Lcom/google/android/gms/internal/zzye;

.field private zzavu:Lcom/google/android/gms/cast/games/GameManagerClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzye;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye$zzc;->zzavm:Lcom/google/android/gms/internal/zzye;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzye$zzb;-><init>(Lcom/google/android/gms/internal/zzye;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzye$zzc;->zzavu:Lcom/google/android/gms/cast/games/GameManagerClient;

    new-instance v0, Lcom/google/android/gms/internal/zzye$zzc$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzye$zzc$1;-><init>(Lcom/google/android/gms/internal/zzye$zzc;Lcom/google/android/gms/internal/zzye;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzye$zzc;->zzapH:Lcom/google/android/gms/internal/zzzc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzye$zzc;)Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$zzc;->zzavu:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object v0
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzye$zzc;->zzt(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v0

    return-object v0
.end method

.method public zzt(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzye$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzye$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-object v0
.end method
