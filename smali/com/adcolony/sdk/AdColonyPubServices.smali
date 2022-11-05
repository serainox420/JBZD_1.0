.class public final Lcom/adcolony/sdk/AdColonyPubServices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;,
        Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;,
        Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adcolony/sdk/AdColonyPubServices;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 574
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.setDeviceToken"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addListener(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.addListener"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 585
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.setAdvertisingId"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static closeOverlay()V
    .locals 3

    .prologue
    .line 309
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.closeOverlay"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static configure(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/adcolony/sdk/bn;->a:I

    if-ge v0, v1, :cond_0

    .line 72
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/bn$a;->B:Lcom/adcolony/sdk/bn$a;

    const-string v2, "Adcolony requires a higher OS Version in config"

    sget-object v3, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 73
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 111
    :goto_0
    return-void

    .line 80
    :cond_0
    if-nez p0, :cond_1

    .line 81
    const-string v0, "AdColony requires a valid activity in config. It cannot be null."

    .line 83
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    sget-object v2, Lcom/adcolony/sdk/bn$a;->p:Lcom/adcolony/sdk/bn$a;

    const/4 v3, 0x0

    sget-object v4, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 84
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getAppOptions()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    const-string v0, ""

    .line 93
    :cond_2
    if-nez p1, :cond_4

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v1, "yv_apikey"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->an()V

    .line 105
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->b(Landroid/app/Activity;)V

    .line 106
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/bz;->b(Ljava/util/Map;)V

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adcolony/sdk/AdColonyPubServices;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.configure"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "yv_apikey"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    const-string v1, "yv_apikey"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static getExperimentValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 378
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->r(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.getExperimentValue"

    .line 381
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExperiments()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aa()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.getExperiments"

    .line 362
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStatValue(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->o(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 411
    :goto_0
    return-wide v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.getStatValue"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 411
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getStats()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 431
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->L()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.getStats"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVIPInformation()Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;
    .locals 3

    .prologue
    .line 532
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->Z()Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.getVIPInformation"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static grantRewardFromInAppPurchaseAmazon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 237
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 238
    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "grantRewardFromInAppPurchaseAmazon()"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static grantRewardFromInAppPurchaseGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .prologue
    .line 188
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    .line 189
    invoke-virtual/range {v0 .. v6}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.grantRewardFromInAppPurchaseGoogle"

    .line 193
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static incrementStat(Ljava/lang/String;J)Z
    .locals 3

    .prologue
    .line 469
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/adcolony/sdk/bz;->b(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 474
    :goto_0
    return v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.incrementStat"

    .line 472
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverlayVisible()Z
    .locals 3

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 329
    :goto_0
    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.isOverlayVisible"

    .line 327
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServiceAvailable()Z
    .locals 3

    .prologue
    .line 344
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->w()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 348
    :goto_0
    return v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.isServiceAvailable"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static markEndRound()V
    .locals 3

    .prologue
    .line 512
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.markEndRound"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static markStartRound()V
    .locals 3

    .prologue
    .line 499
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.markStartRound"

    .line 502
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onAdClosed()V
    .locals 1

    .prologue
    .line 158
    sget-boolean v0, Lcom/adcolony/sdk/AdColonyPubServices;->a:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->o()V

    .line 161
    :cond_0
    return-void
.end method

.method public static onAdOpened()V
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/adcolony/sdk/AdColonyPubServices;->a:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->n()V

    .line 152
    :cond_0
    return-void
.end method

.method public static refreshStats()V
    .locals 3

    .prologue
    .line 486
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->C()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.refreshStats"

    .line 489
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerForPushNotifications(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 548
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.registerForPushNotifications"

    .line 551
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeListener(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 3

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->b(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.removeListener"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setNotificationsAllowed(Ljava/util/EnumSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/bz;->a(Ljava/util/EnumSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.setNotificationsAllowed"

    .line 268
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setStat(Ljava/lang/String;J)Z
    .locals 3

    .prologue
    .line 450
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 454
    :goto_0
    return v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.setStat"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showOverlay()V
    .locals 4

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/cp;->a(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.showOverlay"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unregisterForPushNotifications()V
    .locals 3

    .prologue
    .line 560
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ae()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "AdColonyPubServices.unregisterForPushNotifications"

    .line 563
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
