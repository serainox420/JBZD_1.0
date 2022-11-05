.class public Lcom/openx/model/openrtb/bidRequests/User;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "User.java"


# instance fields
.field public buyerid:Ljava/lang/String;

.field public customdata:Ljava/lang/String;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openx/model/openrtb/bidRequests/users/Data;",
            ">;"
        }
    .end annotation
.end field

.field public gender:Ljava/lang/String;

.field public geo:Lcom/openx/model/openrtb/bidRequests/users/Geo;

.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public keywords:Ljava/lang/String;

.field public yob:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->id:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->buyerid:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->yob:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->gender:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->keywords:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->customdata:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->geo:Lcom/openx/model/openrtb/bidRequests/users/Geo;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->data:Ljava/util/List;

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
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    .line 32
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/User;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "buyerid"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/User;->buyerid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "yob"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/User;->yob:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "gender"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/User;->gender:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "keywords"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/User;->keywords:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "customdata"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/User;->customdata:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "geo"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->geo:Lcom/openx/model/openrtb/bidRequests/users/Geo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->geo:Lcom/openx/model/openrtb/bidRequests/users/Geo;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/users/Geo;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->data:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 43
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/openrtb/bidRequests/users/Data;

    .line 46
    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/users/Data;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {p0, v0, v2, v1}, Lcom/openx/model/openrtb/bidRequests/User;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/User;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
