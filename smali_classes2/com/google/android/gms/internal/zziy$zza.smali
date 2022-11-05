.class Lcom/google/android/gms/internal/zziy$zza;
.super Lcom/google/android/gms/internal/zzep$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzJa:Lcom/google/android/gms/internal/zzep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzep;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzep$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zziy$zza;->zzJa:Lcom/google/android/gms/internal/zzep;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzjc;->zzgC()Lcom/google/android/gms/internal/zzjc;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDm:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjc;->zzgI()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjc;->zzgH()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjc;->zzgJ()I

    move-result v1

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    cmpg-float v1, v2, v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDk:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDl:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v1, :cond_1

    if-gez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdb()Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziz;->zzgv()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy$zza;->zzJa:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->onAdClosed()V

    return-void

    :cond_3
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zziy$zza$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zziy$zza$1;-><init>(Lcom/google/android/gms/internal/zziy$zza;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onAdFailedToLoad(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy$zza;->zzJa:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzep;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy$zza;->zzJa:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy$zza;->zzJa:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy$zza;->zzJa:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->onAdOpened()V

    return-void
.end method
