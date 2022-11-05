.class public Lcom/openx/model/openrtb/bidRequests/imps/Pmp;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Pmp.java"


# instance fields
.field public deals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;",
            ">;"
        }
    .end annotation
.end field

.field jsonObject:Lorg/json/JSONObject;

.field public private_auction:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->private_auction:Ljava/lang/Integer;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->deals:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->jsonObject:Lorg/json/JSONObject;

    .line 24
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "private_auction"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->private_auction:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->deals:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->deals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 28
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->deals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;

    .line 31
    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "deals"

    invoke-virtual {p0, v0, v2, v1}, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
