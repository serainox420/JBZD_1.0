.class public Lcom/inmobi/commons/internal/CommonsConfig;
.super Ljava/lang/Object;
.source "CommonsConfig.java"


# static fields
.field private static a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

.field private static b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;


# instance fields
.field private c:Lcom/inmobi/commons/metric/MetricConfigParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sput-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    .line 12
    sget-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sput-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/internal/CommonsConfig;->c:Lcom/inmobi/commons/metric/MetricConfigParams;

    .line 18
    return-void
.end method

.method protected static getLogLevelConfig()I
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getApiStatsConfig()Lcom/inmobi/commons/metric/MetricConfigParams;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/commons/internal/CommonsConfig;->c:Lcom/inmobi/commons/metric/MetricConfigParams;

    return-object v0
.end method

.method public final setFromMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "AND"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/inmobi/commons/uid/UIDMapConfigParams;

    invoke-direct {v1}, Lcom/inmobi/commons/uid/UIDMapConfigParams;-><init>()V

    .line 34
    const-string v2, "ids"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getObjectFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/uid/UIDMapConfigParams;->setMap(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v2

    invoke-virtual {v1}, Lcom/inmobi/commons/uid/UIDMapConfigParams;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/inmobi/commons/uid/UID;->setCommonsDeviceIdMaskMap(Ljava/util/Map;)V

    .line 38
    const-string v1, "ll"

    const/4 v2, 0x0

    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v2, v4, v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->getLogLevelValue(J)Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/internal/CommonsConfig;->b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    .line 39
    iget-object v1, p0, Lcom/inmobi/commons/internal/CommonsConfig;->c:Lcom/inmobi/commons/metric/MetricConfigParams;

    const-string v2, "api"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/metric/MetricConfigParams;->setFromMap(Ljava/util/Map;)V

    .line 40
    return-void
.end method
