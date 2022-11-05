.class public Lcom/amazon/device/ads/JSONUtils$JSONUtilities;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/JSONUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONUtilities"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/amazon/device/ads/JSONUtils;->createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 23
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntegerFromJSONArray(Lorg/json/JSONArray;II)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSONArray(Lorg/json/JSONArray;II)I

    move-result v0

    return v0
.end method

.method public getJSONArrayFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/amazon/device/ads/JSONUtils;->getJSONArrayFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObjectFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 80
    invoke-static {p1}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 38
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/device/ads/JSONUtils;->getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public put(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 72
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 73
    return-void
.end method

.method public put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public put(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method
