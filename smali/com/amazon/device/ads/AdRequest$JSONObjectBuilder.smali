.class Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONObjectBuilder"
.end annotation


# instance fields
.field private aaxParameterGroups:[Lcom/amazon/device/ads/AAXParameterGroup;

.field private aaxParameters:[Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/amazon/device/ads/AAXParameter",
            "<*>;"
        }
    .end annotation
.end field

.field private advancedOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final json:Lorg/json/JSONObject;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLogger;)V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;-><init>(Lcom/amazon/device/ads/MobileAdsLogger;Lorg/json/JSONObject;)V

    .line 318
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLogger;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 323
    iput-object p2, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->json:Lorg/json/JSONObject;

    .line 324
    return-void
.end method


# virtual methods
.method build()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->aaxParameterGroups:[Lcom/amazon/device/ads/AAXParameterGroup;

    if-eqz v1, :cond_0

    .line 364
    iget-object v2, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->aaxParameterGroups:[Lcom/amazon/device/ads/AAXParameterGroup;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 366
    iget-object v5, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    iget-object v6, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->json:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/AAXParameterGroup;->evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)V

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->aaxParameters:[Lcom/amazon/device/ads/AAXParameter;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 371
    iget-object v4, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AAXParameter;->getValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;

    move-result-object v4

    .line 372
    invoke-virtual {p0, v3, v4}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->putIntoJSON(Lcom/amazon/device/ads/AAXParameter;Ljava/lang/Object;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->advancedOptions:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->advancedOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->putIntoJSON(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 388
    :cond_3
    return-void
.end method

.method getJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method getParameterData()Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    return-object v0
.end method

.method putIntoJSON(Lcom/amazon/device/ads/AAXParameter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AAXParameter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p1}, Lcom/amazon/device/ads/AAXParameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->putIntoJSON(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method putIntoJSON(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 396
    if-eqz p2, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 404
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not add parameter to JSON %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setAAXParameterGroups([Lcom/amazon/device/ads/AAXParameterGroup;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->aaxParameterGroups:[Lcom/amazon/device/ads/AAXParameterGroup;

    .line 334
    return-object p0
.end method

.method setAAXParameters([Lcom/amazon/device/ads/AAXParameter;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amazon/device/ads/AAXParameter",
            "<*>;)",
            "Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;"
        }
    .end annotation

    .prologue
    .line 328
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->aaxParameters:[Lcom/amazon/device/ads/AAXParameter;

    .line 329
    return-object p0
.end method

.method setAdvancedOptions(Ljava/util/Map;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;"
        }
    .end annotation

    .prologue
    .line 338
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->advancedOptions:Ljava/util/Map;

    .line 339
    return-object p0
.end method

.method setParameterData(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .line 344
    return-object p0
.end method
