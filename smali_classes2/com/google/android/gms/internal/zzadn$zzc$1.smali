.class Lcom/google/android/gms/internal/zzadn$zzc$1;
.super Lcom/google/android/gms/internal/zzadn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadn$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzadn$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadn$zzc$1;->zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzadn$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzadw;)V
    .locals 7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1966

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result v0

    const/16 v1, 0x196b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzc$1;->zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzadn$zzd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzadn;->zzdw(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzc(Lcom/google/android/gms/internal/zzadw;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getThrottleEndTimeMillis()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzb(Lcom/google/android/gms/internal/zzadw;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;JLjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzadn$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzc$1;->zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzadn$zzd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzadn;->zzdw(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzc(Lcom/google/android/gms/internal/zzadw;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzb(Lcom/google/android/gms/internal/zzadw;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzadn$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method
