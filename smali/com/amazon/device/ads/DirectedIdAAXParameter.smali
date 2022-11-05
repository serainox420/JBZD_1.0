.class Lcom/amazon/device/ads/DirectedIdAAXParameter;
.super Lcom/amazon/device/ads/AAXParameterGroupParameter;
.source "AAXParameterGroupParameter.java"


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .line 126
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v3

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v4, "directedIdRetriever"

    const/4 v5, 0x0

    const-class v6, Lcom/amazon/device/ads/DirectedIdRetriever;

    invoke-virtual {v0, v4, v5, v6}, Lcom/amazon/device/ads/Settings;->getObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DirectedIdRetriever;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/device/ads/DirectedIdAAXParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DirectedIdRetriever;)V

    .line 128
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DirectedIdRetriever;)V
    .locals 2

    .prologue
    .line 133
    const-string v0, "directedId"

    const-string v1, "debug.directedId"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/amazon/device/ads/AAXParameterGroupParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 134
    iput-object p3, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 135
    iput-object p4, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;

    .line 136
    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;

    invoke-interface {v0}, Lcom/amazon/device/ads/DirectedIdRetriever;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
