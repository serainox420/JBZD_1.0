.class public Lcom/openx/model/openrtb/bidRequests/imps/Native;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Native.java"


# instance fields
.field public api:[I

.field public battr:[I

.field private jsonObject:Lorg/json/JSONObject;

.field public request:Ljava/lang/String;

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->request:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->ver:Ljava/lang/String;

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

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->jsonObject:Lorg/json/JSONObject;

    .line 22
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "request"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->request:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Native;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "ver"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->ver:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Native;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->api:[I

    if-eqz v0, :cond_1

    .line 27
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->api:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->api:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "api"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Native;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->battr:[I

    if-eqz v0, :cond_3

    .line 40
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->battr:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->battr:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "battr"

    invoke-virtual {p0, v1, v2, v0}, Lcom/openx/model/openrtb/bidRequests/imps/Native;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Native;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
