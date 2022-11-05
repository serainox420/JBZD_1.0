.class Lcom/google/android/gms/internal/zzqx$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private zzZQ:Lcom/google/android/gms/internal/zzqw;

.field private zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/ads/internal/overlay/zzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx$zzd;->zzZQ:Lcom/google/android/gms/internal/zzqw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqx$zzd;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public zzbN()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zzd;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzbN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zzd;->zzZQ:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlp()V

    return-void
.end method

.method public zzbO()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zzd;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzbO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zzd;->zzZQ:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzhK()V

    return-void
.end method
