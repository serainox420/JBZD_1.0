.class public Lcom/openx/model/openrtb/BidRequest;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "BidRequest.java"


# instance fields
.field public allimps:Ljava/lang/Integer;

.field public app:Lcom/openx/model/openrtb/bidRequests/App;

.field public at:Ljava/lang/Integer;

.field public badv:[Ljava/lang/String;

.field public bcat:[Ljava/lang/String;

.field public cur:[Ljava/lang/String;

.field public device:Lcom/openx/model/openrtb/bidRequests/Device;

.field public id:Ljava/lang/String;

.field public imp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/openrtb/bidRequests/Imp;",
            ">;"
        }
    .end annotation
.end field

.field private jsonObject:Lorg/json/JSONObject;

.field public regs:Lcom/openx/model/openrtb/bidRequests/Regs;

.field public site:Lcom/openx/model/openrtb/bidRequests/Site;

.field public test:Ljava/lang/Integer;

.field public tmax:Ljava/lang/Integer;

.field public user:Lcom/openx/model/openrtb/bidRequests/User;

.field public wseat:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->id:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->test:Ljava/lang/Integer;

    .line 22
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->at:Ljava/lang/Integer;

    .line 24
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->tmax:Ljava/lang/Integer;

    .line 26
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->wseat:[Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->allimps:Ljava/lang/Integer;

    .line 30
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->cur:[Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->bcat:[Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->badv:[Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->imp:Ljava/util/ArrayList;

    .line 38
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->site:Lcom/openx/model/openrtb/bidRequests/Site;

    .line 40
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->app:Lcom/openx/model/openrtb/bidRequests/App;

    .line 41
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->device:Lcom/openx/model/openrtb/bidRequests/Device;

    .line 42
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->user:Lcom/openx/model/openrtb/bidRequests/User;

    .line 43
    iput-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->regs:Lcom/openx/model/openrtb/bidRequests/Regs;

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    .line 51
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "id"

    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "test"

    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->test:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "at"

    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->at:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "tmax"

    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->tmax:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->wseat:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 58
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->wseat:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 62
    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->wseat:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "wseat"

    invoke-virtual {p0, v0, v4, v3}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "allimps"

    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->allimps:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v3, v4}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->cur:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 74
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 76
    :goto_1
    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->cur:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->cur:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "cur"

    invoke-virtual {p0, v0, v4, v3}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->bcat:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 88
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 90
    :goto_2
    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->bcat:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 92
    iget-object v4, p0, Lcom/openx/model/openrtb/BidRequest;->bcat:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "bcat"

    invoke-virtual {p0, v0, v4, v3}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->badv:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 102
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 104
    :goto_3
    iget-object v3, p0, Lcom/openx/model/openrtb/BidRequest;->badv:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 106
    iget-object v3, p0, Lcom/openx/model/openrtb/BidRequest;->badv:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 110
    :cond_6
    iget-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "badv"

    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->imp:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->imp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 116
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->imp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/openrtb/bidRequests/Imp;

    .line 119
    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/Imp;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 122
    :cond_8
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "imp"

    invoke-virtual {p0, v0, v3, v1}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_9
    iget-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "site"

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->site:Lcom/openx/model/openrtb/bidRequests/Site;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->site:Lcom/openx/model/openrtb/bidRequests/Site;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/Site;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_5
    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "app"

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->app:Lcom/openx/model/openrtb/bidRequests/App;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->app:Lcom/openx/model/openrtb/bidRequests/App;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/App;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "device"

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->device:Lcom/openx/model/openrtb/bidRequests/Device;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->device:Lcom/openx/model/openrtb/bidRequests/Device;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/Device;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_7
    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "user"

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->user:Lcom/openx/model/openrtb/bidRequests/User;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->user:Lcom/openx/model/openrtb/bidRequests/User;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/User;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v1, v3, v0}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "regs"

    iget-object v3, p0, Lcom/openx/model/openrtb/BidRequest;->regs:Lcom/openx/model/openrtb/bidRequests/Regs;

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/openx/model/openrtb/BidRequest;->regs:Lcom/openx/model/openrtb/bidRequests/Regs;

    invoke-virtual {v2}, Lcom/openx/model/openrtb/bidRequests/Regs;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    :cond_a
    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/BidRequest;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/openx/model/openrtb/BidRequest;->jsonObject:Lorg/json/JSONObject;

    return-object v0

    :cond_b
    move-object v0, v2

    .line 125
    goto :goto_5

    :cond_c
    move-object v0, v2

    .line 126
    goto :goto_6

    :cond_d
    move-object v0, v2

    .line 127
    goto :goto_7

    :cond_e
    move-object v0, v2

    .line 128
    goto :goto_8
.end method
