.class public Lcom/openx/model/openrtb/bidRequests/Imp;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Imp.java"


# instance fields
.field public banner:Lcom/openx/model/openrtb/bidRequests/imps/Banner;

.field public bidfloor:Ljava/lang/Float;

.field public bidfloorcur:Ljava/lang/String;

.field public displaymanager:Ljava/lang/String;

.field public displaymanagerver:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public iframebuster:[Ljava/lang/String;

.field public instl:Ljava/lang/Integer;

.field jsonObject:Lorg/json/JSONObject;

.field public nativeads:Lcom/openx/model/openrtb/bidRequests/imps/Native;

.field public pmp:Lcom/openx/model/openrtb/bidRequests/imps/Pmp;

.field public secure:Ljava/lang/Integer;

.field public tagid:Ljava/lang/String;

.field public video:Lcom/openx/model/openrtb/bidRequests/imps/Video;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->id:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->displaymanager:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->displaymanagerver:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->instl:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->tagid:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->bidfloor:Ljava/lang/Float;

    .line 20
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->bidfloorcur:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->secure:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->iframebuster:[Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->banner:Lcom/openx/model/openrtb/bidRequests/imps/Banner;

    .line 26
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->video:Lcom/openx/model/openrtb/bidRequests/imps/Video;

    .line 27
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->nativeads:Lcom/openx/model/openrtb/bidRequests/imps/Native;

    .line 28
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->pmp:Lcom/openx/model/openrtb/bidRequests/imps/Pmp;

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

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    .line 41
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "displaymanager"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->displaymanager:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "displaymanagerver"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->displaymanagerver:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "instl"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->instl:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "tagid"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->tagid:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "bidfloor"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->bidfloor:Ljava/lang/Float;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "bidfloorcur"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->bidfloorcur:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "secure"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->secure:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->iframebuster:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 52
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 54
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->iframebuster:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->iframebuster:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "iframebuster"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "banner"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->banner:Lcom/openx/model/openrtb/bidRequests/imps/Banner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->banner:Lcom/openx/model/openrtb/bidRequests/imps/Banner;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/imps/Banner;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "video"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->video:Lcom/openx/model/openrtb/bidRequests/imps/Video;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->video:Lcom/openx/model/openrtb/bidRequests/imps/Video;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v2, v3, v0}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "native"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->nativeads:Lcom/openx/model/openrtb/bidRequests/imps/Native;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->nativeads:Lcom/openx/model/openrtb/bidRequests/imps/Native;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/imps/Native;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v2, v3, v0}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "pmp"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->pmp:Lcom/openx/model/openrtb/bidRequests/imps/Pmp;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->pmp:Lcom/openx/model/openrtb/bidRequests/imps/Pmp;

    invoke-virtual {v1}, Lcom/openx/model/openrtb/bidRequests/imps/Pmp;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v0, v2, v1}, Lcom/openx/model/openrtb/bidRequests/Imp;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Imp;->jsonObject:Lorg/json/JSONObject;

    return-object v0

    :cond_3
    move-object v0, v1

    .line 64
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 65
    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 66
    goto :goto_3
.end method
