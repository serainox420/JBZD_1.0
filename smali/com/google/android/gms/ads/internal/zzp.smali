.class public Lcom/google/android/gms/ads/internal/zzp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
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

    move-object v12, v10

    move-object v13, v10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/zzgv;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V

    return-object v0
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

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzkf;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    move-object v9, v7

    move-object v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzgw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzkf;Lcom/google/android/gms/ads/internal/zzg$zza;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzp$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzp$5;-><init>(Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/ads/internal/zzg$zza;Lcom/google/android/gms/internal/zzkf;)V

    return-object v0
.end method

.method static zza(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzp$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzp$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private static zza(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_0

    const-string v0, "Bitmap is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data:image/png;base64,"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "Image is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhf;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static zza(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "image"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string v0, "Invalid type. An image type extra should return a bitmap"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    const-string v0, "Invalid asset type. Bitmap should be returned only for image type"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/ads/internal/zzg$zza;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzp;->zzh(Lcom/google/android/gms/internal/zzpb;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-nez v3, :cond_2

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v3, v0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjq;->zzKB:Ljava/util/List;

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string v0, "No template ids present in mediation response"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error occurred while recording impression and registering for clicks"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzkb;->zzhc()Lcom/google/android/gms/internal/zzke;

    move-result-object v1

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkb;->zzhd()Lcom/google/android/gms/internal/zzkf;

    move-result-object v0

    :cond_6
    const-string v5, "2"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v1, :cond_9

    invoke-static {v3}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzke;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzke;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzke;->recordImpression()V

    :cond_7
    invoke-interface {v4}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    const-string v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v1, v3, p1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzkf;Lcom/google/android/gms/ads/internal/zzg$zza;)Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    goto :goto_1

    :cond_8
    move-object v1, v0

    goto :goto_3

    :cond_9
    const-string v1, "1"

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    invoke-static {v3}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzkf;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->getOverrideImpressionRecording()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->recordImpression()V

    :cond_a
    invoke-interface {v4}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    const-string v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzkf;Lcom/google/android/gms/ads/internal/zzg$zza;)Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "No matching template id and mapper"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzqw;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->zzlK()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzgv;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzp$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/android/gms/ads/internal/zzp$1;-><init>(Lcom/google/android/gms/internal/zzgv;Ljava/lang/String;Lcom/google/android/gms/internal/zzqw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zza;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzgw;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzp$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/android/gms/ads/internal/zzp$2;-><init>(Lcom/google/android/gms/internal/zzgw;Ljava/lang/String;Lcom/google/android/gms/internal/zzqw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zza;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    const-string v1, "/nativeExpressAssetsLoaded"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    const-string v1, "/nativeExpressAssetsLoadingFailed"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzjv;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzjv;Ljava/util/concurrent/CountDownLatch;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Unable to invoke load assets"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method static zzb(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzp$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzp$4;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzhf;->zzfP()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Drawable is null. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    const-string v0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unable to get drawable. Returning empty string"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqw;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzqw;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzjv;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "AdWebView is null"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjq;->zzKB:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "No template ids present in mediation response"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzjv;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzkb;->zzhc()Lcom/google/android/gms/internal/zzke;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzjv;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzkb;->zzhd()Lcom/google/android/gms/internal/zzkf;

    move-result-object v3

    const-string v4, "2"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzke;)Lcom/google/android/gms/internal/zzgv;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjq;->zzKA:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzgv;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjq;->zzKy:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzjq;->zzKz:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "1"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzkf;)Lcom/google/android/gms/internal/zzgw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjq;->zzKA:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzgw;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "No matching template id and mapper"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-interface {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzqw;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzhf;
    .locals 1

    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzhf$zza;->zzB(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzhf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzhf;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzp;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzhf;

    move-result-object v0

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzpb;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, "AdState is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->e(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzp;->zzh(Lcom/google/android/gms/internal/zzpb;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkb;->getView()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "View in mediation adapter is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzpb;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpb;->zzSn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjq;->zzKy:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
