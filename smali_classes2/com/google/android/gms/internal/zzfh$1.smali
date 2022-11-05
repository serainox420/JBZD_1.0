.class Lcom/google/android/gms/internal/zzfh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfh;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzfi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAB:Lcom/google/android/gms/internal/zzfh;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfh;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh$1;->zzAB:Lcom/google/android/gms/internal/zzfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh$1;->zztf:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh$1;->zzAB:Lcom/google/android/gms/internal/zzfh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$1;->zztf:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfh;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-void
.end method
