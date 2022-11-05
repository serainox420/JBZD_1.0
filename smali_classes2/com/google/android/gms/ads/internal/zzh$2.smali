.class Lcom/google/android/gms/ads/internal/zzh$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzta:Lcom/google/android/gms/internal/zzji;

.field final synthetic zztb:Lcom/google/android/gms/internal/zzid;

.field final synthetic zztc:Ljava/lang/String;

.field final synthetic zztd:Ljava/lang/String;

.field final synthetic zzte:Z

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzh;Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzid;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzh$2;->zzta:Lcom/google/android/gms/internal/zzji;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzh$2;->zztb:Lcom/google/android/gms/internal/zzid;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzh$2;->zztc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzh$2;->zztd:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/zzh$2;->zzte:Z

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzh$2;->zztf:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzh$2;->zzta:Lcom/google/android/gms/internal/zzji;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji;->zzgO()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzh$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzh$2$1;-><init>(Lcom/google/android/gms/ads/internal/zzh$2;)V

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    return-void
.end method
