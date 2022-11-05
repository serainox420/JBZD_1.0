.class public Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;
.super Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
.source "OrangeServerAdapter.java"


# static fields
.field public static final PLAYLIST_REQUEST_PATH:Ljava/lang/String; = "/admax/sdk/playlist/1"

.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/millennialmedia/internal/PlayList;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 357
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    sget-object v1, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist = \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    new-instance v1, Lcom/millennialmedia/internal/PlayList;

    invoke-direct {v1}, Lcom/millennialmedia/internal/PlayList;-><init>()V

    .line 364
    const-string v4, "ver"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/millennialmedia/internal/PlayList;->playListVersion:Ljava/lang/String;

    .line 365
    iget-object v4, v1, Lcom/millennialmedia/internal/PlayList;->playListVersion:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 366
    sget-object v1, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    const-string v2, "Playlist response does not match requested version"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_0
    return-object v0

    .line 371
    :cond_1
    const-string v4, "config"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    .line 375
    iget-object v4, v1, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/millennialmedia/internal/Handshake;->request(Z)V

    .line 379
    :cond_2
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    .line 380
    const-string v4, "posId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/millennialmedia/internal/PlayList;->placementId:Ljava/lang/String;

    .line 381
    const-string v4, "pos"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/millennialmedia/internal/PlayList;->placementName:Ljava/lang/String;

    .line 382
    const-string v4, "dcn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    .line 389
    const-string v4, "DoNotReport"

    iget-object v5, v1, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 390
    invoke-virtual {v1}, Lcom/millennialmedia/internal/PlayList;->enableReporting()V

    .line 395
    :cond_3
    :goto_1
    const-string v4, "playlist"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v3, v2

    .line 396
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ge v3, v2, :cond_9

    .line 398
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 399
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    const-string v6, "item"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    const-string v7, "enableEnhancedAdControl"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 403
    const-string v8, "client_mediation"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 404
    const-string v5, "adnet"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    const-string v7, "req"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 406
    const-string v7, "site"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    const-string v8, "posId"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v8, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;

    invoke-direct {v8, v6, v5, v7, v2}, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1, v8}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    :cond_4
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 391
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    sget-object v4, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    const-string v5, "Playlist dcn is <DoNotReport> -- reporting disabled"

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 456
    :catch_0
    move-exception v1

    .line 457
    sget-object v2, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    const-string v3, "Unable to parse play list"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 413
    :cond_6
    :try_start_3
    const-string v8, "server_mediation"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 414
    const-string v5, "req"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 415
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 416
    new-instance v8, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;

    invoke-direct {v8, v6, v5, v7}, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 420
    const-string v5, "validRegex"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->validateRegex:Ljava/lang/String;

    .line 421
    const-string v5, "postBody"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->postBody:Ljava/lang/String;

    .line 422
    const-string v5, "postType"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->postContentType:Ljava/lang/String;

    .line 424
    invoke-virtual {v1, v8}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 449
    :catch_1
    move-exception v2

    .line 450
    :try_start_4
    sget-object v5, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse play list item<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 426
    :cond_7
    :try_start_5
    const-string v8, "exchange"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 427
    const-string v5, "req"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 428
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    new-instance v8, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;

    invoke-direct {v8, v6, v5, v7}, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 433
    const-string v5, "postBody"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->postBody:Ljava/lang/String;

    .line 434
    const-string v5, "postType"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->postContentType:Ljava/lang/String;

    .line 436
    invoke-virtual {v1, v8}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V

    goto/16 :goto_3

    .line 438
    :cond_8
    const-string v8, "ad_content"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 439
    const-string v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    new-instance v5, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v2, v8, v7}, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Z)V

    .line 446
    invoke-virtual {v1, v5}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    .line 454
    goto/16 :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    const-string v1, "appId"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "name"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    return-object v0
.end method

.method private static b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 184
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getAppInfo()Lcom/millennialmedia/AppInfo;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    const-string v1, "coppa"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getCoppa()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v1, "dcn"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getSiteId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v1, "mediator"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getMediator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_0
    if-eqz p0, :cond_3

    .line 192
    const-string v0, "posType"

    const-string v1, "placementType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v1, "orients"

    const-string v0, "supportedOrientations"

    .line 195
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 194
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v1, "keywords"

    const-string v0, "keywords"

    .line 198
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->splitCommaSeparateString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v0, "posId"

    const-string v1, "placementId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v0, "width"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 203
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    const-string v0, "w"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_1
    const-string v0, "height"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 211
    const-string v0, "h"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_2
    const-string v0, "refreshRate"

    const-string v1, "refreshRate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v0, "nativeTypes"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v3, "nativeType"

    const-string v0, "nativeTypes"

    .line 219
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v0, "posTypeAttrs"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_3
    const-string v0, "curOrient"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    return-object v2
.end method

.method private static c(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 284
    const-string v1, "ver"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v1, "app"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v1, "env"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v1, "req"

    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v1, "user"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v1, "testing"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    sget-object v1, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->a:Ljava/lang/String;

    const-string v2, "Error creating JSON request"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "osv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "sdkVer"

    const-string v2, "6.3.1-4006cb2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    sget-object v1, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string v1, "sdkPlugins"

    sget-object v2, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_0
    const-string v1, "mcc"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMcc()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "mnc"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMnc()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "lang"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "country"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "ua"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAdInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_d

    .line 82
    const-string v3, "ifa"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "lmt"

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isLimitAdTrackingEnabled(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    :goto_0
    const-string v1, "w"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "h"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v1, "screenScale"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 93
    const-string v1, "ppi"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensityDpi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v1, "natOrient"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v1, "storage"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableStorageSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const-string v1, "vol"

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getVolume(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v1, "headphones"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->areHeadphonesPluggedIn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 100
    const-string v1, "charging"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isDevicePlugged()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 101
    const-string v1, "charge"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "connectionType"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "cellSignalDbm"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCellSignalDbm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v1, "carrier"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "ip"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "apMac"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_5

    sget-boolean v2, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    if-eqz v2, :cond_5

    .line 113
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 115
    const-string v3, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 116
    const-string v3, "lon"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 117
    const-string v3, "src"

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v3, "ts"

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    const-string v3, "horizAcc"

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 126
    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v3, "speed"

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 130
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    const-string v3, "bearing"

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 134
    :cond_3
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    const-string v3, "alt"

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 138
    :cond_4
    const-string v1, "loc"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableCameras()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    move-result-object v2

    .line 144
    iget-boolean v3, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-eqz v3, :cond_6

    .line 145
    const-string v3, "cameraFront"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_6
    iget-boolean v2, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-eqz v2, :cond_7

    .line 149
    const-string v2, "cameraRear"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_7
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasNfc()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 153
    const-string v2, "nfc"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasNfcPermission()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_8
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasBluetooth()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 157
    const-string v2, "bt"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasBluetoothPermission()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_9
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophone()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 161
    const-string v2, "mic"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_a
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasGps()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 165
    const-string v2, "gps"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasFineLocationPermission()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_b
    const-string v2, "deviceFeatures"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getExistingIds()Ljava/util/List;

    move-result-object v1

    .line 171
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 172
    const-string v2, "existIds"

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_c
    return-object v0

    .line 85
    :cond_d
    const-string v1, "dpidmd5"

    const-string v2, "MD5"

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "dpidsha1"

    const-string v2, "SHA1"

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method

.method private static d()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getUserData()Lcom/millennialmedia/UserData;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 236
    const-string v2, "age"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getAge()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v2, "kids"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getChildren()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v2, "hhi"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getIncome()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v2, "edu"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getEducation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v2, "eth"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getEthnicity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v2, "gender"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v2, "keywords"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->splitCommaSeparateString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "marital"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getMarital()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v2, "politics"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getPolitics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v2, "zip"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getDob()Ljava/util/Date;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_0

    .line 249
    const-string v3, "dob"

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :cond_0
    const-string v2, "state"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v2, "country"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v2, "dma"

    invoke-virtual {v1}, Lcom/millennialmedia/UserData;->getDma()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getTestInfo()Lcom/millennialmedia/TestInfo;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_0

    .line 267
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 268
    const-string v2, "bidder"

    iget-object v3, v1, Lcom/millennialmedia/TestInfo;->bidder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v2, "creativeId"

    iget-object v1, v1, Lcom/millennialmedia/TestInfo;->creativeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;-><init>(Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 351
    return-void
.end method
