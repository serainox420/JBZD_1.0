.class public Lcom/google/android/gms/internal/zzhm;
.super Lcom/google/android/gms/ads/formats/NativeContentAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzAl:Lcom/google/android/gms/ads/VideoController;

.field private final zzHs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzHu:Lcom/google/android/gms/internal/zzhl;

.field private final zzHv:Lcom/google/android/gms/internal/zzhg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhl;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeContentAd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHs:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzAl:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzhm;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzhf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhm;->zzHs:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/zzhg;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzhg;-><init>(Lcom/google/android/gms/internal/zzhf;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->zzfV()Lcom/google/android/gms/internal/zzhf;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzhg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzhg;-><init>(Lcom/google/android/gms/internal/zzhf;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHv:Lcom/google/android/gms/internal/zzhg;

    return-void

    :catch_1
    move-exception v0

    const-string v2, "Failed to get icon."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdvertiser()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->getAdvertiser()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get attribution."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->getBody()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get body."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallToAction()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->getCallToAction()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get call to action."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get extras"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeadline()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->getHeadline()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get headline."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHs:Ljava/util/List;

    return-object v0
.end method

.method public getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHv:Lcom/google/android/gms/internal/zzhg;

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->zzbF()Lcom/google/android/gms/internal/zzfa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzAl:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzhl;->zzbF()Lcom/google/android/gms/internal/zzfa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzfa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzAl:Lcom/google/android/gms/ads/VideoController;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected synthetic zzbu()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhm;->zzfR()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzhf;
    .locals 1

    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhf$zza;->zzB(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzfR()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm;->zzHu:Lcom/google/android/gms/internal/zzhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhl;->zzfR()Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to retrieve native ad engine."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
