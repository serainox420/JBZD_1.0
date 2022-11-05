.class public Lcom/openx/model/openrtb/bidRequests/Site;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Site.java"


# instance fields
.field public cat:[Ljava/lang/String;

.field public content:Lcom/openx/model/openrtb/bidRequests/sites/Content;

.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public keywords:Ljava/lang/String;

.field public mobile:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public page:Ljava/lang/String;

.field public pagecat:[Ljava/lang/String;

.field public privacypolicy:Ljava/lang/Integer;

.field public publisher:Lcom/openx/model/openrtb/bidRequests/sites/Publisher;

.field public ref:Ljava/lang/String;

.field public search:Ljava/lang/String;

.field public sectioncat:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->id:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->name:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->domain:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->cat:[Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->sectioncat:[Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->pagecat:[Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->page:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->ref:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->search:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->mobile:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->privacypolicy:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->keywords:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->publisher:Lcom/openx/model/openrtb/bidRequests/sites/Publisher;

    .line 28
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->content:Lcom/openx/model/openrtb/bidRequests/sites/Content;

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

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    .line 37
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "id"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/Site;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "name"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/Site;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "domain"

    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/Site;->domain:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->cat:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 45
    :goto_0
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/Site;->cat:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/Site;->cat:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "cat"

    invoke-virtual {p0, v0, v4, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->sectioncat:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 56
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 58
    :goto_1
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/Site;->sectioncat:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 60
    iget-object v4, p0, Lcom/openx/model/openrtb/bidRequests/Site;->sectioncat:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "sectioncat"

    invoke-virtual {p0, v0, v4, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->pagecat:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 69
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 71
    :goto_2
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->pagecat:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 73
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->pagecat:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "pagecat"

    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "page"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->page:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ref"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->ref:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "search"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->search:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "mobile"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->mobile:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "privacypolicy"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->privacypolicy:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "keywords"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->keywords:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "publisher"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->publisher:Lcom/openx/model/openrtb/bidRequests/sites/Publisher;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->publisher:Lcom/openx/model/openrtb/bidRequests/sites/Publisher;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/sites/Publisher;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "content"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Site;->content:Lcom/openx/model/openrtb/bidRequests/sites/Content;

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Site;->content:Lcom/openx/model/openrtb/bidRequests/sites/Content;

    invoke-virtual {v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    :cond_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Site;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Site;->jsonObject:Lorg/json/JSONObject;

    return-object v0

    :cond_7
    move-object v0, v2

    .line 88
    goto :goto_3
.end method
