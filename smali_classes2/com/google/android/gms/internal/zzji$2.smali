.class Lcom/google/android/gms/internal/zzji$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji;->zzb(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqp$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzjf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJR:Lcom/google/android/gms/internal/zzji;

.field final synthetic zzJY:Lcom/google/android/gms/internal/zzji$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzji$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$2;->zzJR:Lcom/google/android/gms/internal/zzji;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzji$2;->zzJY:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjf;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$2;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji;->zzc(Lcom/google/android/gms/internal/zzji;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$2;->zzJR:Lcom/google/android/gms/internal/zzji;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzji;->zza(Lcom/google/android/gms/internal/zzji;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$2;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji;->zzg(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzji$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$2;->zzJY:Lcom/google/android/gms/internal/zzji$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzji$2;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzji;->zzg(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzji$zzd;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$2;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji;->zzg(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzji$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgR()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$2;->zzJR:Lcom/google/android/gms/internal/zzji;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzji$2;->zzJY:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzji;->zza(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzji$zzd;)Lcom/google/android/gms/internal/zzji$zzd;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzji$2;->zza(Lcom/google/android/gms/internal/zzjf;)V

    return-void
.end method
