.class public Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Deals.java"


# instance fields
.field public at:Ljava/lang/Integer;

.field public bidfloor:Ljava/lang/Float;

.field public bidfloorcur:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field jsonObject:Lorg/json/JSONObject;

.field public wadomain:[Ljava/lang/String;

.field public wseat:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->id:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->bidfloorcur:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->at:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wseat:[Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wadomain:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    .line 23
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "bidfloor"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->bidfloor:Ljava/lang/Float;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "bidfloorcur"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->bidfloorcur:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "at"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->at:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wseat:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 30
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 32
    :goto_0
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wseat:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 34
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wseat:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "wseat"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wadomain:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 43
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 45
    :goto_1
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wadomain:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->wadomain:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "wadomain"

    invoke-virtual {p0, v1, v2, v0}, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/pmps/Deals;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
