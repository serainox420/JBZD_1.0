.class Lcom/amazon/device/ads/ExpandProperties;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# instance fields
.field private height:I

.field private final isModal:Z

.field private final jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private useCustomClose:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ExpandProperties;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 23
    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Z

    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 32
    return-void
.end method


# virtual methods
.method public fromJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "width"

    iget v2, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "height"

    iget v2, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 104
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "useCustomClose"

    iget-boolean v2, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    .line 105
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    return v0
.end method

.method public getIsModal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getUseCustomClose()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 58
    return-void
.end method

.method public setUseCustomClose(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    .line 66
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 50
    return-void
.end method

.method public toClone()Lcom/amazon/device/ads/ExpandProperties;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/ExpandProperties;-><init>()V

    .line 75
    iget v1, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    iput v1, v0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 76
    iget v1, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    iput v1, v0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 77
    iget-boolean v1, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    iput-boolean v1, v0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    .line 78
    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "width"

    iget v3, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 94
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "height"

    iget v3, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 95
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "useCustomClose"

    iget-boolean v3, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 96
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "isModal"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 97
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/amazon/device/ads/ExpandProperties;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
