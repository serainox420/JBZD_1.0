.class Lcom/google/android/gms/internal/zzbot$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbot;->zzYa()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzccT:Lcom/google/android/gms/internal/zzbot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbot;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbot$2;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$2;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzg(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbot$zzb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$2;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzg(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbot$zzb;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbot$zzb;->zziS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot$2;->zzccT:Lcom/google/android/gms/internal/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbot;->zzc(Lcom/google/android/gms/internal/zzbot;)V

    :cond_0
    return-void
.end method
