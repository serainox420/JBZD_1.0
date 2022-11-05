.class Lcom/google/android/gms/internal/zzbot$zzc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbot$zzc;->onClose()V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbot$zzc$3;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$3;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzb(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$3;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzb(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$zzc$3;->zzccV:Lcom/google/android/gms/internal/zzbot$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbot$zzc;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zze(Lcom/google/android/gms/internal/zzbot;)V

    return-void
.end method
