.class Lcom/google/android/gms/internal/zzix$6;
.super Lcom/google/android/gms/internal/zznw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzix;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIN:Lcom/google/android/gms/internal/zzix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$6$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzix$6$4;-><init>(Lcom/google/android/gms/internal/zzix$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$6$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzix$6$7;-><init>(Lcom/google/android/gms/internal/zzix$6;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$6$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzix$6$6;-><init>(Lcom/google/android/gms/internal/zzix$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzix$6$1;-><init>(Lcom/google/android/gms/internal/zzix$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$6$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzix$6$2;-><init>(Lcom/google/android/gms/internal/zzix$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$6$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzix$6$3;-><init>(Lcom/google/android/gms/internal/zzix$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zznt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$6$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzix$6$5;-><init>(Lcom/google/android/gms/internal/zzix$6;Lcom/google/android/gms/internal/zznt;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
