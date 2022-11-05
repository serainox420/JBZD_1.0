.class public Lcom/google/android/gms/internal/zzqv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzIs:Lcom/google/android/gms/internal/zzqw;

.field private zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private final zzZu:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzqw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzqv;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqv;->zzZu:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzZu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->pause()V

    :cond_0
    return-void
.end method

.method public zza(IIIIIZ)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlF()Lcom/google/android/gms/internal/zzgk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlE()Lcom/google/android/gms/internal/zzgj;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "vpr2"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->zzlF()Lcom/google/android/gms/internal/zzgk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v5

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqw;IZLcom/google/android/gms/internal/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzZu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzd(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzqx;->zzO(Z)V

    goto :goto_0
.end method

.method public zze(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzd(IIII)V

    :cond_0
    return-void
.end method

.method public zzlo()Lcom/google/android/gms/ads/internal/overlay/zzl;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-object v0
.end method
