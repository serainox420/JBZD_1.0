.class public Lcom/millennialmedia/internal/utils/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/millennialmedia/internal/utils/JSONUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/JSONUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromList(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 31
    if-nez p0, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 40
    :cond_0
    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public static buildFromMap(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    sget-object v0, Lcom/millennialmedia/internal/utils/JSONUtils;->a:Ljava/lang/String;

    const-string v1, "Error building JSON from Map"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v2

    .line 59
    goto :goto_0
.end method

.method public static buildFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 66
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    .line 70
    :cond_0
    :goto_0
    return-object p0

    .line 67
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0
.end method

.method public static convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    if-nez p0, :cond_0

    .line 78
    new-array v0, v0, [Ljava/lang/String;

    .line 86
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 82
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method public static getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/JSONUtils;->convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 0

    .prologue
    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method
