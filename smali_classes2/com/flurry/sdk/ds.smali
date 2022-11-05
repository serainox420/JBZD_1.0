.class public Lcom/flurry/sdk/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lg",
        "<",
        "Lcom/flurry/sdk/dj;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/ds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ds;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/co;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/co;

    .line 88
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 89
    const-string v4, "id"

    iget-object v5, v0, Lcom/flurry/sdk/co;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v4, "type"

    iget v0, v0, Lcom/flurry/sdk/co;->a:I

    .line 1059
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method private static b(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/di;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/di;

    .line 102
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string v4, "adLogGUID"

    iget-object v5, v0, Lcom/flurry/sdk/di;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v4, "sessionId"

    iget-wide v6, v0, Lcom/flurry/sdk/di;->a:J

    .line 1077
    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string v4, "sdkAdEvents"

    iget-object v0, v0, Lcom/flurry/sdk/di;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/flurry/sdk/ds;->c(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 109
    :cond_0
    return-object v1
.end method

.method private static c(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dh;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 115
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dh;

    .line 117
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 118
    const-string v4, "type"

    iget-object v5, v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v4, "timeOffset"

    iget-wide v6, v0, Lcom/flurry/sdk/dh;->c:J

    .line 2077
    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    const-string v4, "params"

    iget-object v0, v0, Lcom/flurry/sdk/dh;->b:Ljava/util/Map;

    .line 2128
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 120
    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 124
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3081
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/flurry/sdk/ds;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Deserialize not supported for log request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p2, Lcom/flurry/sdk/dj;

    .line 4049
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4076
    :cond_0
    :goto_0
    return-void

    .line 4053
    :cond_1
    new-instance v1, Lcom/flurry/sdk/ds$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ds$1;-><init>(Lcom/flurry/sdk/ds;Ljava/io/OutputStream;)V

    .line 4060
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4062
    :try_start_0
    const-string v2, "apiKey"

    iget-object v3, p2, Lcom/flurry/sdk/dj;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    const-string v2, "testDevice"

    iget-boolean v3, p2, Lcom/flurry/sdk/dj;->f:Z

    .line 5050
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4064
    const-string v2, "agentVersion"

    iget-object v3, p2, Lcom/flurry/sdk/dj;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4065
    const-string v2, "agentTimestamp"

    iget-wide v4, p2, Lcom/flurry/sdk/dj;->d:J

    .line 5077
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4067
    const-string v2, "adReportedIds"

    iget-object v3, p2, Lcom/flurry/sdk/dj;->b:Ljava/util/List;

    invoke-static {v3}, Lcom/flurry/sdk/ds;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4068
    const-string v2, "sdkAdLogs"

    iget-object v3, p2, Lcom/flurry/sdk/dj;->c:Ljava/util/List;

    invoke-static {v3}, Lcom/flurry/sdk/ds;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4070
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 4071
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4075
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    goto :goto_0

    .line 4072
    :catch_0
    move-exception v0

    .line 4073
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/flurry/sdk/ds;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Invalid SdkLogRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4075
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v0
.end method
