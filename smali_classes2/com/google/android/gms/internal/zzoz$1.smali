.class Lcom/google/android/gms/internal/zzoz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoz;->zzG(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzVZ:Lcom/google/android/gms/internal/zzqj;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoz;Landroid/content/Context;Lcom/google/android/gms/internal/zzqj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoz$1;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoz$1;->zzVZ:Lcom/google/android/gms/internal/zzqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoz$1;->zztf:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoz$1;->zzVZ:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoz$1;->zzVZ:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqj;->zze(Ljava/lang/Throwable;)V

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method
