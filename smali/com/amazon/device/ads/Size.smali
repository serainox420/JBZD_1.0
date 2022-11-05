.class Lcom/amazon/device/ads/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 27
    iput p2, p0, Lcom/amazon/device/ads/Size;->height:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    .line 41
    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 46
    aget-object v1, v2, v0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/Size;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 47
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lcom/amazon/device/ads/Size;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 50
    :goto_0
    iput v1, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 51
    iput v0, p0, Lcom/amazon/device/ads/Size;->height:I

    .line 52
    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 113
    :goto_0
    return p1

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    instance-of v1, p1, Lcom/amazon/device/ads/Size;

    if-eqz v1, :cond_0

    .line 130
    check-cast p1, Lcom/amazon/device/ads/Size;

    .line 131
    iget v1, p0, Lcom/amazon/device/ads/Size;->width:I

    iget v2, p1, Lcom/amazon/device/ads/Size;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/amazon/device/ads/Size;->height:I

    iget v2, p1, Lcom/amazon/device/ads/Size;->height:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 133
    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/amazon/device/ads/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/amazon/device/ads/Size;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/amazon/device/ads/Size;->height:I

    .line 88
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 70
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    const-string v1, "width"

    iget v2, p0, Lcom/amazon/device/ads/Size;->width:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 121
    const-string v1, "height"

    iget v2, p0, Lcom/amazon/device/ads/Size;->height:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 122
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amazon/device/ads/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/device/ads/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
