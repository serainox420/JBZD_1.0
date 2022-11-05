.class public Lcom/openx/model/openrtb/bidRequests/Regs;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Regs.java"


# instance fields
.field public coppa:Ljava/lang/Integer;

.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Regs;->coppa:Ljava/lang/Integer;

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
    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Regs;->jsonObject:Lorg/json/JSONObject;

    .line 16
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Regs;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "coppa"

    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/Regs;->coppa:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/openx/model/openrtb/bidRequests/Regs;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/Regs;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
