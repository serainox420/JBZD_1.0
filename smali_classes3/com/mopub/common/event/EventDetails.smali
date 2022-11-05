.class public Lcom/mopub/common/event/EventDetails;
.super Ljava/lang/Object;
.source "EventDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/event/EventDetails$1;,
        Lcom/mopub/common/event/EventDetails$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
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


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    iput-object p1, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/mopub/common/event/EventDetails$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mopub/common/event/EventDetails;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    if-nez v0, :cond_0

    move-object v0, v1

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 239
    goto :goto_0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    if-nez v0, :cond_0

    move-object v0, v1

    .line 253
    :goto_0
    return-object v0

    .line 251
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 253
    goto :goto_0
.end method


# virtual methods
.method public getAdHeightPx()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "ad_height_px_key"

    invoke-static {v0, v1}, Lcom/mopub/common/event/EventDetails;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworkType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "ad_network_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "ad_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "ad_unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidthPx()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "ad_width_px"

    invoke-static {v0, v1}, Lcom/mopub/common/event/EventDetails;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "dsp_creative_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGeoAccuracy()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "geo_accuracy_key"

    invoke-static {v0, v1}, Lcom/mopub/common/event/EventDetails;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "geo_latitude"

    invoke-static {v0, v1}, Lcom/mopub/common/event/EventDetails;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "geo_longitude"

    invoke-static {v0, v1}, Lcom/mopub/common/event/EventDetails;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getPerformanceDurationMs()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "performance_duration_ms"

    invoke-static {v0, v1}, Lcom/mopub/common/event/EventDetails;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "request_id_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestStatusCode()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "request_status_code"

    invoke-static {v0, v1}, Lcom/mopub/common/event/EventDetails;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    const-string v1, "request_uri_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/common/event/EventDetails;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/mopub/common/util/Json;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/mopub/common/event/EventDetails;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
