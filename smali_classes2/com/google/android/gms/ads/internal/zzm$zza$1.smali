.class Lcom/google/android/gms/ads/internal/zzm$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzm$zza;->zzco()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zztI:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic zztJ:Lcom/google/android/gms/ads/internal/zzm$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzm$zza;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$zza$1;->zztJ:Lcom/google/android/gms/ads/internal/zzm$zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzm$zza$1;->zztI:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcK()Lcom/google/android/gms/ads/internal/overlay/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$zza$1;->zztJ:Lcom/google/android/gms/ads/internal/zzm$zza;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$zza$1;->zztI:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
