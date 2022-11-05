.class public Lcom/openx/model/openrtb/bidRequests/Device;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Device.java"


# instance fields
.field public carrier:Ljava/lang/String;

.field public connectiontype:Ljava/lang/Integer;

.field public devicetype:Ljava/lang/Integer;

.field public didmd5:Ljava/lang/String;

.field public didsha1:Ljava/lang/String;

.field public dnt:Ljava/lang/Integer;

.field public dpidmd5:Ljava/lang/String;

.field public dpidsha1:Ljava/lang/String;

.field public flashver:Ljava/lang/String;

.field public geo:Lcom/openx/model/openrtb/bidRequests/devices/Geo;

.field public h:Ljava/lang/Integer;

.field public hwv:Ljava/lang/String;

.field public ifa:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public ipv6:Ljava/lang/String;

.field public js:Ljava/lang/Integer;

.field private jsonObject:Lorg/json/JSONObject;

.field public language:Ljava/lang/String;

.field public lmt:Ljava/lang/Integer;

.field public macmd5:Ljava/lang/String;

.field public macsha1:Ljava/lang/String;

.field public make:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osv:Ljava/lang/String;

.field public ppi:Ljava/lang/Integer;

.field public pxratio:Ljava/lang/Float;

.field public ua:Ljava/lang/String;

.field public w:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ua:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->dnt:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->lmt:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ip:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ipv6:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->devicetype:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->make:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->model:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->os:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->osv:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->hwv:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->flashver:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->language:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->carrier:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ifa:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->didsha1:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->didmd5:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->dpidsha1:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->dpidmd5:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->macsha1:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->macmd5:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->h:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->w:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ppi:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->js:Ljava/lang/Integer;

    .line 35
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->connectiontype:Ljava/lang/Integer;

    .line 36
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->pxratio:Ljava/lang/Float;

    .line 38
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->geo:Lcom/openx/model/openrtb/bidRequests/devices/Geo;

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
    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    .line 46
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ua"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ua:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "dnt"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->dnt:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "lmt"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->lmt:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ip"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ip:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ipv6"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ipv6:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "devicetype"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->devicetype:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "make"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->make:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "model"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->model:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "os"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->os:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "osv"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->osv:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "hwv"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->hwv:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "flashver"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->flashver:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "language"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->language:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "carrier"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->carrier:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ifa"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ifa:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "didsha1"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->didsha1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "didmd5"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->didmd5:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "dpidsha1"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->dpidsha1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "dpidmd5"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->dpidmd5:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "macsha1"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->macsha1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "macmd5"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->macmd5:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "h"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->h:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "w"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->w:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ppi"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->ppi:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "js"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->js:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "connectiontype"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->connectiontype:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "pxratio"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Device;->pxratio:Ljava/lang/Float;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "geo"

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->geo:Lcom/openx/model/openrtb/bidRequests/devices/Geo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->geo:Lcom/openx/model/openrtb/bidRequests/devices/Geo;

    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/devices/Geo;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/openx/model/openrtb/bidRequests/Device;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Device;->jsonObject:Lorg/json/JSONObject;

    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
