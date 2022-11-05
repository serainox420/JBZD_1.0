.class Lcom/google/android/gms/internal/zzqx$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqx;->zzhG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzZP:Lcom/google/android/gms/internal/zzqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx$2;->zzZP:Lcom/google/android/gms/internal/zzqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$2;->zzZP:Lcom/google/android/gms/internal/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlI()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$2;->zzZP:Lcom/google/android/gms/internal/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlt()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhG()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$2;->zzZP:Lcom/google/android/gms/internal/zzqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx;)Lcom/google/android/gms/internal/zzqx$zzc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$2;->zzZP:Lcom/google/android/gms/internal/zzqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx;)Lcom/google/android/gms/internal/zzqx$zzc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqx$zzc;->zzcf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$2;->zzZP:Lcom/google/android/gms/internal/zzqx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx;Lcom/google/android/gms/internal/zzqx$zzc;)Lcom/google/android/gms/internal/zzqx$zzc;

    :cond_1
    return-void
.end method
