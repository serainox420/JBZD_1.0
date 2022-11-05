.class public Lcom/openx/model/openrtb/bidRequests/sites/Content;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Content.java"


# instance fields
.field public cat:[Ljava/lang/String;

.field public contentrating:Ljava/lang/String;

.field public context:Ljava/lang/Integer;

.field public embeddable:Ljava/lang/String;

.field public episode:Ljava/lang/Integer;

.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public keywords:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public len:Ljava/lang/String;

.field public livestream:Ljava/lang/String;

.field public producer:Lcom/openx/model/openrtb/bidRequests/sites/contents/Producer;

.field public qagmediarating:Ljava/lang/Integer;

.field public season:Ljava/lang/String;

.field public series:Ljava/lang/String;

.field public sourcerelationship:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userrating:Ljava/lang/String;

.field public videoquality:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->id:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->episode:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->title:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->series:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->season:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->url:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->cat:[Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->videoquality:Ljava/lang/Integer;

    .line 22
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->context:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->qagmediarating:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->contentrating:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->userrating:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->keywords:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->livestream:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->sourcerelationship:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->len:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->language:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->embeddable:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->producer:Lcom/openx/model/openrtb/bidRequests/sites/contents/Producer;

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
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    .line 40
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "episode"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->episode:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "title"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "series"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->series:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "season"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->season:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "url"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->cat:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 50
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->cat:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->cat:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "cat"

    invoke-virtual {p0, v0, v2, v1}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "videoquality"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->videoquality:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "context"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->context:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "qagmediarating"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->qagmediarating:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "contentrating"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->contentrating:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "userrating"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->userrating:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "keywords"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->keywords:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "livestream"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->livestream:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "sourcerelationship"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->sourcerelationship:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "len"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->len:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "language"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->language:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "embeddable"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->embeddable:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "producer"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->producer:Lcom/openx/model/openrtb/bidRequests/sites/contents/Producer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->producer:Lcom/openx/model/openrtb/bidRequests/sites/contents/Producer;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/sites/contents/Producer;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/openx/model/openrtb/bidRequests/sites/Content;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/sites/Content;->jsonObject:Lorg/json/JSONObject;

    return-object v0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
