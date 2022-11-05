.class public Lcom/openx/model/openrtb/bidRequests/imps/videos/Companionad;
.super Lcom/openx/model/openrtb/bidRequests/imps/Banner;
.source "Companionad.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;-><init>()V

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
    .line 12
    invoke-super {p0}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
