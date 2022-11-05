.class public Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;
.super Ljava/lang/Object;
.source "AnalyticsEndPointsConfig.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "http://a.ai.inmobi.com/v2/ad.html"

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->a:Ljava/lang/String;

    .line 16
    const-string v0, "https://rules-ltvp.inmobi.com/v2/rules.json"

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->b:Ljava/lang/String;

    .line 17
    const-string v0, "https://e-ltvp.inmobi.com/storm/v1/event"

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRulesUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 32
    const-string v0, "house"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->a:Ljava/lang/String;

    .line 33
    const-string v0, "rules"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->b:Ljava/lang/String;

    .line 34
    const-string v0, "events"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->c:Ljava/lang/String;

    .line 35
    return-void
.end method
