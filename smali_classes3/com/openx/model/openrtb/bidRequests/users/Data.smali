.class public Lcom/openx/model/openrtb/bidRequests/users/Data;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Data.java"


# instance fields
.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public name:Ljava/lang/String;

.field public segment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->id:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->name:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->segment:Ljava/util/List;

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
    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->jsonObject:Lorg/json/JSONObject;

    .line 25
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/users/Data;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/users/Data;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->segment:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->segment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 30
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->segment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;

    .line 33
    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "segment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/openx/model/openrtb/bidRequests/users/Data;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/Data;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
