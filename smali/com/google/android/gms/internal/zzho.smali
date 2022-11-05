.class public Lcom/google/android/gms/internal/zzho;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzAl:Lcom/google/android/gms/ads/VideoController;

.field private final zzHw:Lcom/google/android/gms/internal/zzhn;

.field private final zzHx:Lcom/google/android/gms/ads/formats/MediaView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhn;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzAl:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzhn;->zzfW()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzho;->zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/formats/MediaView;

    move-result-object v0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzhn;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzHx:Lcom/google/android/gms/ads/formats/MediaView;

    return-void

    :catch_0
    move-exception v0

    :goto_2
    const-string v2, "Unable to inflate MediaView."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Unable to render video in MediaView."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAvailableAssetNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->getAvailableAssetNames()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get available asset names."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->getCustomTemplateId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get custom template id."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhn;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzhf;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzhg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzhg;-><init>(Lcom/google/android/gms/internal/zzhf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhn;->zzY(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get string."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->zzbF()Lcom/google/android/gms/internal/zzfa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzAl:Lcom/google/android/gms/ads/VideoController;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzfa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzAl:Lcom/google/android/gms/ads/VideoController;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getVideoMediaView()Lcom/google/android/gms/ads/formats/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHx:Lcom/google/android/gms/ads/formats/MediaView;

    return-object v0
.end method

.method public performClick(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhn;->performClick(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to perform click."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordImpression()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->recordImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/formats/MediaView;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/formats/MediaView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
