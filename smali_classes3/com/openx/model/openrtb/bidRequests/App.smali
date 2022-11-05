.class public Lcom/openx/model/openrtb/bidRequests/App;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "App.java"


# instance fields
.field public bundle:Ljava/lang/String;

.field public cat:[Ljava/lang/String;

.field public content:Lcom/openx/model/openrtb/bidRequests/apps/Content;

.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public keywords:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pagecat:[Ljava/lang/String;

.field public paid:Ljava/lang/Integer;

.field public privacypolicy:Ljava/lang/Integer;

.field public publisher:Lcom/openx/model/openrtb/bidRequests/apps/Publisher;

.field public sectioncat:[Ljava/lang/String;

.field public storeurl:Ljava/lang/String;

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->id:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->name:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->bundle:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->domain:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->storeurl:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->cat:[Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->sectioncat:[Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->pagecat:[Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->ver:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->privacypolicy:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->paid:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->keywords:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->publisher:Lcom/openx/model/openrtb/bidRequests/apps/Publisher;

    .line 28
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->content:Lcom/openx/model/openrtb/bidRequests/apps/Content;

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    .line 35
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "id"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "name"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "bundle"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->bundle:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "domain"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->domain:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "storeurl"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->storeurl:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->cat:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 42
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 44
    :goto_0
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->cat:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 46
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->cat:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "cat"

    invoke-virtual {p0, v0, v4, v3}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->sectioncat:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 55
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 57
    :goto_1
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->sectioncat:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 59
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/App;->sectioncat:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "sectioncat"

    invoke-virtual {p0, v0, v4, v3}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->pagecat:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 68
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 70
    :goto_2
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/App;->pagecat:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 72
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/App;->pagecat:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "pagecat"

    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ver"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/App;->ver:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "privacypolicy"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/App;->privacypolicy:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "paid"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/App;->paid:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "keywords"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/App;->keywords:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "publisher"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->publisher:Lcom/openx/model/openrtb/bidRequests/apps/Publisher;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->publisher:Lcom/openx/model/openrtb/bidRequests/apps/Publisher;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/apps/Publisher;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "content"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/App;->content:Lcom/openx/model/openrtb/bidRequests/apps/Content;

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/App;->content:Lcom/openx/model/openrtb/bidRequests/apps/Content;

    invoke-virtual {v2}, Lcom/openx/model/openrtb/bidRequests/apps/Content;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    :cond_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/App;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/App;->jsonObject:Lorg/json/JSONObject;

    return-object v0

    :cond_7
    move-object v0, v2

    .line 83
    goto :goto_3
.end method
