.class Lcom/google/android/gms/ads/internal/overlay/zzd$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNa:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field final synthetic zzNd:I

.field final synthetic zzNe:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$5;->zzNa:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$5;->zzNd:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$5;->zzNe:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$5;->zzNa:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Lcom/google/android/gms/ads/internal/overlay/zzi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$5;->zzNa:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Lcom/google/android/gms/ads/internal/overlay/zzi;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$5;->zzNd:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$5;->zzNe:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzg(II)V

    :cond_0
    return-void
.end method
