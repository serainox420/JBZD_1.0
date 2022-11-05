.class Lcom/google/android/gms/internal/zzbot$zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbot$zzc;->zzYd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzccV:Lcom/google/android/gms/internal/zzbot$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbot$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbot$zzc$1;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$1;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zza(Lcom/google/android/gms/internal/zzbot;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$1;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbot;->zza(Lcom/google/android/gms/internal/zzbot;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$1;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzb(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$1;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzb(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "websocket opened"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$1;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzc(Lcom/google/android/gms/internal/zzbot;)V

    return-void
.end method
