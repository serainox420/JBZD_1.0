.class Lcom/google/android/gms/internal/zzbot$zzc$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbot$zzc;->zza(Lcom/google/android/gms/internal/zzbso;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

.field final synthetic zzccX:Lcom/google/android/gms/internal/zzbso;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbot$zzc;Lcom/google/android/gms/internal/zzbso;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccX:Lcom/google/android/gms/internal/zzbso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccX:Lcom/google/android/gms/internal/zzbso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbso;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccX:Lcom/google/android/gms/internal/zzbso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbso;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzb(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "WebSocket reached EOF."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zze(Lcom/google/android/gms/internal/zzbot;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzb(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "WebSocket error."

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbot$zzc$4;->zzccX:Lcom/google/android/gms/internal/zzbso;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zza(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
