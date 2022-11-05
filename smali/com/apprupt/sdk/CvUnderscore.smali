.class public Lcom/apprupt/sdk/CvUnderscore;
.super Ljava/lang/Object;
.source "CvUnderscore.java"


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvUnderscore;->a:Lorg/json/JSONObject;

    .line 28
    return-void
.end method

.method static a()Lcom/apprupt/sdk/CvUnderscore;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/apprupt/sdk/CvUnderscore;

    invoke-direct {v0}, Lcom/apprupt/sdk/CvUnderscore;-><init>()V

    return-object v0
.end method

.method static b()Lcom/apprupt/sdk/CvUnderscore;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/apprupt/sdk/CvUnderscore;->a()Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvUnderscore;->d()Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;
    .locals 5

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvUnderscore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-object p0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Invalid value passed to JSON"

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)Lcom/apprupt/sdk/CvUnderscore;
    .locals 7

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 69
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid JSON key"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-interface {v3, v1, v4}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    return-object p0
.end method

.method c()Lcom/apprupt/sdk/CvUnderscore;
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v0

    .line 32
    const-string v1, "uid"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 33
    return-object p0
.end method

.method d()Lcom/apprupt/sdk/CvUnderscore;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvUnderscore;->c()Lcom/apprupt/sdk/CvUnderscore;

    .line 38
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v0

    .line 39
    const-string v1, "deviceInfo"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 40
    const-string v1, "bundleId"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 41
    const-string v1, "screen"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 42
    const-string v1, "optOut"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->u()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 43
    const-string v1, "geo"

    invoke-static {}, Lcom/apprupt/sdk/CvGeoLocation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 44
    const-string v1, "bssid"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 45
    const-string v1, "locale"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 46
    const-string v1, "language"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 47
    const-string v1, "country"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 48
    const-string v1, "connectionType"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->b()Lcom/apprupt/sdk/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/Connectivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 49
    const-string v1, "carrier"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 50
    const-string v1, "volume"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 51
    const-string v1, "storage"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->g()Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v2

    iget-object v2, v2, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 52
    const-string v1, "musicIsPlaying"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 53
    const-string v1, "accessories"

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAppInfo;->l()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 54
    iget-object v0, v0, Lcom/apprupt/sdk/CvAppInfo;->b:Lcom/apprupt/sdk/Events;

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/Events;->a(Lcom/apprupt/sdk/CvUnderscore;)V

    .line 55
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/apprupt/sdk/CvUnderscore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvCrypto;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
