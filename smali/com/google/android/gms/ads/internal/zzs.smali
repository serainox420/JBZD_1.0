.class public Lcom/google/android/gms/ads/internal/zzs;
.super Lcom/google/android/gms/ads/internal/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private zzug:Lcom/google/android/gms/internal/zzqw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzke;)Lcom/google/android/gms/internal/zzgv;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzgv;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->zzfQ()Lcom/google/android/gms/internal/zzhf;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->zzfQ()Lcom/google/android/gms/internal/zzhf;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getStarRating()D

    move-result-wide v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzke;->zzbF()Lcom/google/android/gms/internal/zzfa;

    move-result-object v12

    move-object v13, v10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/zzgv;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V

    return-object v0

    :cond_0
    move-object v4, v10

    goto :goto_0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzkf;)Lcom/google/android/gms/internal/zzgw;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzgw;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->zzfV()Lcom/google/android/gms/internal/zzhf;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->zzfV()Lcom/google/android/gms/internal/zzhf;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->zzbF()Lcom/google/android/gms/internal/zzfa;

    move-result-object v9

    move-object v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzgw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V

    return-object v0

    :cond_0
    move-object v4, v7

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/internal/zzgv;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzs$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzs$2;-><init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzgv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzgw;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzs$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzs$3;-><init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzgw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzpb;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzs$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzs$4;-><init>(Lcom/google/android/gms/ads/internal/zzs;Ljava/lang/String;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvl:Ljava/lang/String;

    return-object v0
.end method

.method public pause()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Landroid/support/v4/f/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvE:Landroid/support/v4/f/k;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgp;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgy;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqw;->zzb(Lcom/google/android/gms/internal/zzgy;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzha;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzWa:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkx()Lcom/google/android/gms/internal/zzcs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzha;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzle;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V
    .locals 10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzs$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzs$1;-><init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzpb$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvO:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcL()Lcom/google/android/gms/internal/zzlq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvm:Lcom/google/android/gms/internal/zzaw;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzs;->zzsz:Lcom/google/android/gms/internal/zzka;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzlq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzx;->zzvq:Lcom/google/android/gms/internal/zzpq;

    const-string v1, "AdRenderer: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvq:Lcom/google/android/gms/internal/zzpq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzgl;)Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEm:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEn:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzlw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvm:Lcom/google/android/gms/internal/zzaw;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzlw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlw;->zziT()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlw;->zziU()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzgl;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Initializing javascript failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzpb;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzsr:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzcy()Z

    move-result v0

    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzs;->zzb(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzx;->zzdq()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzpb;->zzSn:Z

    if-eqz v1, :cond_5

    :try_start_0
    iget-object v1, p2, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzkb;->zzhc()Lcom/google/android/gms/internal/zzke;

    move-result-object v4

    :goto_0
    iget-object v1, p2, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkb;->zzhd()Lcom/google/android/gms/internal/zzkf;

    move-result-object v0

    move-object v6, v0

    :goto_1
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvB:Lcom/google/android/gms/internal/zzhp;

    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzke;)Lcom/google/android/gms/internal/zzgv;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvm:Lcom/google/android/gms/internal/zzaw;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzha$zza;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzgv;->zzb(Lcom/google/android/gms/internal/zzha;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzgv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z

    move-result v0

    :goto_3
    return v0

    :cond_1
    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v6, v0

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvC:Lcom/google/android/gms/internal/zzhq;

    if-eqz v0, :cond_4

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzkf;)Lcom/google/android/gms/internal/zzgw;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvm:Lcom/google/android/gms/internal/zzaw;

    move-object v2, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzkf;Lcom/google/android/gms/internal/zzha$zza;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzgw;->zzb(Lcom/google/android/gms/internal/zzha;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzgw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :try_start_2
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzs;->zzh(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_3

    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/internal/zzpb;->zzWi:Lcom/google/android/gms/internal/zzha$zza;

    instance-of v0, v1, Lcom/google/android/gms/internal/zzgw;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvC:Lcom/google/android/gms/internal/zzhq;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb;->zzWi:Lcom/google/android/gms/internal/zzha$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzgw;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzgw;)V

    goto :goto_2

    :cond_6
    instance-of v0, v1, Lcom/google/android/gms/internal/zzgv;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvB:Lcom/google/android/gms/internal/zzhp;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb;->zzWi:Lcom/google/android/gms/internal/zzha$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzgv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzgv;)V

    goto :goto_2

    :cond_7
    instance-of v0, v1, Lcom/google/android/gms/internal/zzgx;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvE:Landroid/support/v4/f/k;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvE:Landroid/support/v4/f/k;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgx;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v1, Lcom/google/android/gms/internal/zzgx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgx;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzpb;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzs;->zzh(I)V

    move v0, v2

    goto/16 :goto_3
.end method

.method public zzb(Landroid/support/v4/f/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhr;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvD:Landroid/support/v4/f/k;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzhc;)V
    .locals 1

    const-string v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvF:Lcom/google/android/gms/internal/zzhc;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzhp;)V
    .locals 1

    const-string v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvB:Lcom/google/android/gms/internal/zzhp;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzhq;)V
    .locals 1

    const-string v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvC:Lcom/google/android/gms/internal/zzhq;

    return-void
.end method

.method public zzb(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvK:Ljava/util/List;

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzqw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    return-void
.end method

.method public zzct()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkx()Lcom/google/android/gms/internal/zzcs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Landroid/view/View;Lcom/google/android/gms/internal/zzjj;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzcu()Landroid/support/v4/f/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhs;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvE:Landroid/support/v4/f/k;

    return-object v0
.end method

.method public zzcv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    :cond_0
    return-void
.end method

.method public zzcw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlG()Lcom/google/android/gms/internal/zzrb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvF:Lcom/google/android/gms/internal/zzhc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvF:Lcom/google/android/gms/internal/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhc;->zzHe:Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzug:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlG()Lcom/google/android/gms/internal/zzrb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvF:Lcom/google/android/gms/internal/zzhc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhc;->zzHe:Lcom/google/android/gms/internal/zzft;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzft;->zzAU:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrb;->zzQ(Z)V

    :cond_0
    return-void
.end method

.method public zzcx()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzpb;->zzSn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzWc:Lcom/google/android/gms/internal/zzjr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzWc:Lcom/google/android/gms/internal/zzjr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzjr;->zzKR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzhr;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvD:Landroid/support/v4/f/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhr;

    return-object v0
.end method
