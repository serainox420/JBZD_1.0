.class Lcom/google/android/gms/ads/internal/overlay/zze$zzd;
.super Lcom/google/android/gms/internal/zzpj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzNz:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;->zzNz:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/overlay/zze$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzco()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdh()Lcom/google/android/gms/internal/zzpx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;->zzNz:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzn;->zztP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpx;->zza(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;->zzNz:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Lcom/google/android/gms/ads/internal/overlay/zze;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;->zzNz:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzn;->zztN:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;->zzNz:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    iget v4, v4, Lcom/google/android/gms/ads/internal/zzn;->zztO:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzpp;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zze$zzd$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze$zzd$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze$zzd;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
