.class public Lcom/openx/model/openrtb/bidRequests/geo/Geo;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Geo.java"


# instance fields
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field private jsonObject:Lorg/json/JSONObject;

.field public lat:Ljava/lang/Float;

.field public lon:Ljava/lang/Float;

.field public metro:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public regionfips104:Ljava/lang/String;

.field public type:Ljava/lang/Integer;

.field public utcoffset:Ljava/lang/Integer;

.field public zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->lat:Ljava/lang/Float;

    .line 11
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->lon:Ljava/lang/Float;

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->type:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->country:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->region:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->regionfips104:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->metro:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->city:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->zip:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->utcoffset:Ljava/lang/Integer;

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
    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    .line 27
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->lat:Ljava/lang/Float;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "lon"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->lon:Ljava/lang/Float;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "country"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->country:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "region"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->region:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "regionfips104"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->regionfips104:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "metro"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->metro:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "city"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->city:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "zip"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->zip:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "utcoffset"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->utcoffset:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/geo/Geo;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
