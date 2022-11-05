.class public Lcom/openx/model/openrtb/bidRequests/sites/Publisher;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Publisher.java"


# instance fields
.field public cat:[Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->id:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->name:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->cat:[Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->domain:Ljava/lang/String;

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
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->jsonObject:Lorg/json/JSONObject;

    .line 23
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->cat:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 30
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->cat:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->cat:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "cat"

    invoke-virtual {p0, v0, v2, v1}, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "domain"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->domain:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
