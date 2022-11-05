.class Lcom/amazon/device/ads/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/JSONUtils$JSONUtilities;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
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
    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 215
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    if-eqz v3, :cond_0

    .line 221
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_1
    return-object v1
.end method

.method public static getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return p2

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public static getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return p2

    .line 110
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public static getIntegerFromJSONArray(Lorg/json/JSONArray;II)I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return p2

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONArray;->optInt(II)I

    move-result p2

    goto :goto_0
.end method

.method public static getJSONArrayFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static getJSONObjectFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-object v0

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 203
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-wide p2

    .line 120
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public static getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-object p2

    .line 100
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static put(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static put(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static put(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method
