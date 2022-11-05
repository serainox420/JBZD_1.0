.class public Lcom/openx/model/openrtb/bidRequests/imps/Banner;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Banner.java"


# instance fields
.field public api:[I

.field public battr:[I

.field public btype:[I

.field public expdir:[I

.field public h:Ljava/lang/Integer;

.field public hmax:Ljava/lang/Integer;

.field public hmin:Ljava/lang/Integer;

.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public mimes:[Ljava/lang/String;

.field public pos:Ljava/lang/Integer;

.field public topframe:Ljava/lang/Integer;

.field public w:Ljava/lang/Integer;

.field public wmax:Ljava/lang/Integer;

.field public wmin:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->w:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->h:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->wmax:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->hmax:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->wmin:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->hmin:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->id:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->pos:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->mimes:[Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->topframe:Ljava/lang/Integer;

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

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    .line 37
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "w"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->w:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "h"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->h:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "wmax"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->wmax:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "hmax"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->hmax:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "wmin"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->wmin:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "hmin"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->hmin:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->btype:[I

    if-eqz v0, :cond_1

    .line 47
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->btype:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->btype:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "btype"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->battr:[I

    if-eqz v0, :cond_3

    .line 60
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 62
    :goto_1
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->battr:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->battr:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "battr"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "pos"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->pos:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->mimes:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 76
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 78
    :goto_2
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->mimes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 80
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->mimes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "mimes"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "topframe"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->topframe:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->expdir:[I

    if-eqz v0, :cond_7

    .line 92
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 94
    :goto_3
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->expdir:[I

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 96
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->expdir:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "expdir"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->api:[I

    if-eqz v0, :cond_9

    .line 105
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 107
    :goto_4
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->api:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 109
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->api:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 113
    :cond_8
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "api"

    invoke-virtual {p0, v1, v2, v0}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_9
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
