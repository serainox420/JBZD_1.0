.class public Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Segment.java"


# instance fields
.field public id:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->id:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->value:Ljava/lang/String;

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
    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->jsonObject:Lorg/json/JSONObject;

    .line 19
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "value"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->value:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/users/datas/Segment;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
