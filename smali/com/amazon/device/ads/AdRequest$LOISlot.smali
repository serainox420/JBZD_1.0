.class Lcom/amazon/device/ads/AdRequest$LOISlot;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LOISlot"
.end annotation


# static fields
.field static final PARAMETERS:[Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/amazon/device/ads/AAXParameter",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final adSlot:Lcom/amazon/device/ads/AdSlot;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

.field private final jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private final opt:Lcom/amazon/device/ads/AdTargetingOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 233
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazon/device/ads/AAXParameter;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SIZE:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->PAGE_TYPE:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SLOT:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SLOT_POSITION:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->MAX_SIZE:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SLOT_ID:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->FLOOR_PRICE:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->SUPPORTED_MEDIA_TYPES:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/device/ads/AAXParameter;->VIDEO_OPTIONS:Lcom/amazon/device/ads/AAXParameter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/AdRequest$LOISlot;->PARAMETERS:[Lcom/amazon/device/ads/AAXParameter;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSlot;Lcom/amazon/device/ads/AdRequest;Lcom/amazon/device/ads/MobileAdsLogger;)V
    .locals 7

    .prologue
    .line 259
    new-instance v4, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    invoke-direct {v4, p3}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;-><init>(Lcom/amazon/device/ads/MobileAdsLogger;)V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v6}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdRequest$LOISlot;-><init>(Lcom/amazon/device/ads/AdSlot;Lcom/amazon/device/ads/AdRequest;Lcom/amazon/device/ads/MobileAdsLogger;Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V

    .line 260
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSlot;Lcom/amazon/device/ads/AdRequest;Lcom/amazon/device/ads/MobileAdsLogger;Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V
    .locals 4

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 265
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->adSlot:Lcom/amazon/device/ads/AdSlot;

    .line 266
    iput-object p5, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 267
    iput-object p6, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 268
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->getCopyOfAdvancedOptions()Ljava/util/HashMap;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.advTargeting"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DebugProperties;->containsDebugProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.advTargeting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_0

    .line 274
    iget-object v2, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 277
    :cond_0
    new-instance v1, Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-direct {v1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;-><init>()V

    iget-object v2, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->setAdTargetingOptions(Lcom/amazon/device/ads/AdTargetingOptions;)Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->setAdvancedOptions(Ljava/util/Map;)Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->setLOISlot(Lcom/amazon/device/ads/AdRequest$LOISlot;)Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->setAdRequest(Lcom/amazon/device/ads/AdRequest;)Lcom/amazon/device/ads/AAXParameter$ParameterData;

    move-result-object v1

    .line 282
    sget-object v2, Lcom/amazon/device/ads/AdRequest$LOISlot;->PARAMETERS:[Lcom/amazon/device/ads/AAXParameter;

    invoke-virtual {p4, v2}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->setAAXParameters([Lcom/amazon/device/ads/AAXParameter;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->setAdvancedOptions(Ljava/util/Map;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->setParameterData(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    .line 286
    return-void
.end method


# virtual methods
.method getAdSlot()Lcom/amazon/device/ads/AdSlot;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->adSlot:Lcom/amazon/device/ads/AdSlot;

    return-object v0
.end method

.method getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->opt:Lcom/amazon/device/ads/AdTargetingOptions;

    return-object v0
.end method

.method getJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->build()V

    .line 296
    iget-object v0, p0, Lcom/amazon/device/ads/AdRequest$LOISlot;->jsonObjectBuilder:Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$JSONObjectBuilder;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
