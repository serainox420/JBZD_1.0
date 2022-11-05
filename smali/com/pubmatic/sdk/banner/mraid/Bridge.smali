.class public Lcom/pubmatic/sdk/banner/mraid/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;
    }
.end annotation


# instance fields
.field private expandProperties:Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

.field public final handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

.field private orientationProperties:Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

.field private placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

.field private resizeProperties:Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

.field private state:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

.field public final webView:Lcom/pubmatic/sdk/banner/mraid/WebView;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 74
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Loading:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->state:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    .line 184
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    invoke-direct {v0}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->expandProperties:Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    .line 205
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

    invoke-direct {v0}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->orientationProperties:Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

    .line 226
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

    invoke-direct {v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->resizeProperties:Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "webView null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 44
    iput-object p2, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    .line 45
    return-void
.end method


# virtual methods
.method public getExpandProperties()Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->expandProperties:Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    return-object v0
.end method

.method public getOrientationProperties()Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->orientationProperties:Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

    return-object v0
.end method

.method public getPlacementType()Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    return-object v0
.end method

.method public getResizeProperties()Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->resizeProperties:Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

    return-object v0
.end method

.method public getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->state:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    return-object v0
.end method

.method public nativeInvoke(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v1, "console"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 288
    const-string v3, "mraid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 293
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 295
    if-eqz v1, :cond_3

    .line 299
    :try_start_1
    const-string v4, "\\&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 300
    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 302
    const-string v6, "\\="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 303
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 305
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    const/4 v7, 0x1

    aget-object v5, v5, v7

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 314
    :cond_3
    const-string v0, "init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidInit(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_0

    .line 318
    :cond_4
    const-string v0, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_0

    .line 322
    :cond_5
    const-string v0, "open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    const-string v0, "url"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v1, p0, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidOpen(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :cond_6
    const-string v0, "updatecurrentposition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidUpdateCurrentPosition(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto/16 :goto_0

    .line 332
    :cond_7
    const-string v0, "expand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 334
    const-string v0, "url"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v1, p0, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidExpand(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_8
    const-string v0, "setexpandproperties"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 340
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->propertiesFromArgs(Ljava/util/Map;)Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    move-result-object v0

    .line 341
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->expandProperties:Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    .line 343
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidUpdatedExpandProperties(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto/16 :goto_0

    .line 345
    :cond_9
    const-string v0, "setorientationproperties"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 347
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->propertiesFromArgs(Ljava/util/Map;)Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

    move-result-object v0

    .line 348
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->orientationProperties:Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

    .line 350
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidUpdatedOrientationProperties(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto/16 :goto_0

    .line 352
    :cond_a
    const-string v0, "resize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 354
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidResize(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto/16 :goto_0

    .line 356
    :cond_b
    const-string v0, "setresizeproperties"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 358
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->propertiesFromArgs(Ljava/util/Map;)Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

    move-result-object v0

    .line 359
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->resizeProperties:Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

    .line 361
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidUpdatedResizeProperties(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto/16 :goto_0

    .line 363
    :cond_c
    const-string v0, "playvideo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 365
    const-string v0, "url"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v1, p0, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidPlayVideo(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_d
    const-string v0, "createcalendarevent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 371
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    const-string v0, "event"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidCreateCalendarEvent(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :cond_e
    const-string v0, "storepicture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "url"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->handler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-interface {v1, p0, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidStorePicture(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireErrorEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public sendPictureAdded(Z)V
    .locals 3

    .prologue
    .line 249
    const-string v0, "false"

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const-string v0, "true"

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.firePictureAddedEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public sendReady()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "mraid.fireEvent(\'ready\');"

    .line 147
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setCurrentPosition(IIII)V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setCurrentPosition({x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setDefaultPosition(IIII)V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setDefaultPosition({x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setExpandProperties(Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;)V
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setExpandProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public setMaxSize(II)V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setMaxSize({width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setOrientationProperties(Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;)V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setOrientationProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setPlacementType(Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;)V
    .locals 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 66
    const-string v0, "inline"

    .line 67
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne p1, v1, :cond_0

    .line 68
    const-string v0, "interstitial"

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setResizeProperties(Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;)V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setResizeProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setScreenSize(II)V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setScreenSize({width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V
    .locals 3

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->state:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    .line 87
    const-string v0, "loading"

    .line 88
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Bridge$1;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setState(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 109
    return-void

    .line 91
    :pswitch_0
    const-string v0, "loading"

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 97
    :pswitch_2
    const-string v0, "hidden"

    goto :goto_0

    .line 100
    :pswitch_3
    const-string v0, "resized"

    goto :goto_0

    .line 103
    :pswitch_4
    const-string v0, "expanded"

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSupportedFeature(Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;Z)V
    .locals 4

    .prologue
    .line 113
    const-string v0, "false"

    .line 114
    if-eqz p2, :cond_0

    .line 115
    const-string v0, "true"

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 118
    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Bridge$1;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$Feature:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 137
    :goto_0
    if-nez v1, :cond_1

    .line 142
    :goto_1
    return-void

    .line 121
    :pswitch_0
    const-string v1, "sms"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v1, "tel"

    goto :goto_0

    .line 127
    :pswitch_2
    const-string v1, "calendar"

    goto :goto_0

    .line 130
    :pswitch_3
    const-string v1, "storePicture"

    goto :goto_0

    .line 133
    :pswitch_4
    const-string v1, "inlineVideo"

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setSupports(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setViewable(Z)V
    .locals 3

    .prologue
    .line 152
    const-string v0, "false"

    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string v0, "true"

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setViewable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V

    .line 158
    return-void
.end method
