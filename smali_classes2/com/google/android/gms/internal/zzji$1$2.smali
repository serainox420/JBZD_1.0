.class Lcom/google/android/gms/internal/zzji$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJS:Lcom/google/android/gms/internal/zzjf;

.field final synthetic zzJT:Lcom/google/android/gms/internal/zzji$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$1;Lcom/google/android/gms/internal/zzjf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJS:Lcom/google/android/gms/internal/zzjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji;->zzc(Lcom/google/android/gms/internal/zzji;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzji;->zza(Lcom/google/android/gms/internal/zzji;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji;->zzd(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJS:Lcom/google/android/gms/internal/zzjf;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzpt;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJS:Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzji$zzd;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzji$1$2;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzji;->zza(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzji$zzd;)Lcom/google/android/gms/internal/zzji$zzd;

    const-string v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
