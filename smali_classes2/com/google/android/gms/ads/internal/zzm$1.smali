.class Lcom/google/android/gms/ads/internal/zzm$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqx$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzm;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsX:Lcom/google/android/gms/internal/zzpb;

.field final synthetic zztG:Lcom/google/android/gms/ads/internal/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/internal/zzpb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzsX:Lcom/google/android/gms/internal/zzpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzcf()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzsX:Lcom/google/android/gms/internal/zzpb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcy;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$1;->zzsX:Lcom/google/android/gms/internal/zzpb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzcy$zzb;)V

    return-void
.end method
