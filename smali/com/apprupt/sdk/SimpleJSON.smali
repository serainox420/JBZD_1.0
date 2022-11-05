.class public Lcom/apprupt/sdk/SimpleJSON;
.super Ljava/lang/Object;
.source "SimpleJSON.java"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field private b:Lorg/json/JSONException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Lorg/json/JSONObject;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->b:Lorg/json/JSONException;

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :goto_0
    iput-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    .line 42
    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/apprupt/sdk/SimpleJSON;->b:Lorg/json/JSONException;

    .line 38
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Cannot parse json"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->b:Lorg/json/JSONException;

    .line 25
    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    .line 46
    iget-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p3, v0

    :cond_1
    move-object v0, p3

    .line 56
    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 60
    :cond_2
    :goto_1
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    move-object v0, p3

    goto :goto_0

    .line 57
    :cond_3
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 58
    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, p3

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/apprupt/sdk/SimpleJSON;)Lcom/apprupt/sdk/SimpleJSON;
    .locals 1

    .prologue
    .line 134
    const-class v0, Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0, p2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/SimpleJSON;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;
    .locals 5

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-object p0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "put(key, object) failed"

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 86
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, p1, v0, p2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-object p2

    :cond_0
    check-cast v0, Ljava/lang/Number;

    move-object p2, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;)Lorg/json/JSONArray;

    move-result-object v1

    .line 268
    if-nez v1, :cond_1

    .line 277
    :cond_0
    return-object p2

    .line 269
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 272
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public a()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 206
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 151
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 152
    const-class v0, Lorg/json/JSONArray;

    invoke-direct {p0, p1, v0, p3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 153
    if-eqz p2, :cond_0

    const-class v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-class p2, Lorg/json/JSONObject;

    .line 156
    :cond_0
    if-eqz v0, :cond_5

    .line 157
    if-eqz p2, :cond_1

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move v1, v2

    .line 158
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 160
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 161
    if-eqz v4, :cond_3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-class v5, Lorg/json/JSONObject;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-class v5, Lcom/apprupt/sdk/SimpleJSON;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 163
    :catch_0
    move-exception v4

    .line 164
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Cannot get item from array"

    aput-object v7, v6, v2

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v4, v6}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-object v0, v3

    .line 168
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 120
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Number;)J
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 236
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 238
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    instance-of v4, v1, Lcom/apprupt/sdk/SimpleJSON;

    if-eqz v4, :cond_0

    .line 243
    check-cast v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-virtual {v1}, Lcom/apprupt/sdk/SimpleJSON;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 245
    :cond_0
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "toJSON() failed"

    aput-object v6, v4, v5

    invoke-interface {v1, v0, v4}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_1
    return-object v2
.end method

.method public c(Ljava/lang/String;Ljava/lang/Number;)D
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/apprupt/sdk/SimpleJSON;->b(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Number;)I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;
    .locals 2

    .prologue
    .line 126
    const-class v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/SimpleJSON;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/apprupt/sdk/SimpleJSON;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
