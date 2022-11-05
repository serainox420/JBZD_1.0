.class Lcom/amazon/device/ads/ParameterMap;
.super Ljava/lang/Object;
.source "ParameterMap.java"


# instance fields
.field private final parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getBooleanParameter(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDoubleParameter(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getIntParameter(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getLongParameter(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
