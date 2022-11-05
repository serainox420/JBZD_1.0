.class Lcom/google/android/gms/internal/zzafq$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/fence/FenceQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzafq;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzaev;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaKm:Lcom/google/android/gms/internal/zzaev;

.field final synthetic zzanl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafq;Lcom/google/android/gms/internal/zzaev;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafq$5;->zzaKm:Lcom/google/android/gms/internal/zzaev;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafq$5;->zzanl:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFenceStateMap()Lcom/google/android/gms/awareness/fence/FenceStateMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq$5;->zzaKm:Lcom/google/android/gms/internal/zzaev;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq$5;->zzanl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
