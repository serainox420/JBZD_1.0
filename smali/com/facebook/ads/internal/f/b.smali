.class public Lcom/facebook/ads/internal/f/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Date;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/f/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/f/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/f/b;->d:Ljava/util/Date;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/internal/f/b;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    const-string v4, "expiration"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/f/b;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_2

    new-instance v5, Lcom/facebook/ads/internal/f/b;

    invoke-direct {v5, v3}, Lcom/facebook/ads/internal/f/b;-><init>(Lorg/json/JSONObject;)V

    if-eqz v5, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v3, v1

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/f/b;->d:Ljava/util/Date;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss zzz"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/f/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/f/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
