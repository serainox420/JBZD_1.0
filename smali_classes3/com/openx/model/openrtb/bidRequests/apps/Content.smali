.class public Lcom/openx/model/openrtb/bidRequests/apps/Content;
.super Lcom/openx/model/openrtb/bidRequests/sites/Content;
.source "Content.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/sites/Content;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-super {p0}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
