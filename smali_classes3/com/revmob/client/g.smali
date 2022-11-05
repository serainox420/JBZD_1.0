.class public final Lcom/revmob/client/g;
.super Lcom/revmob/client/f;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private d:Lcom/revmob/RevMobAdsListener;

.field private e:Lcom/revmob/internal/m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/revmob/RevMobAdsListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/client/f;-><init>()V

    iput-object p1, p0, Lcom/revmob/client/g;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/revmob/client/g;->b:Z

    iput-object p3, p0, Lcom/revmob/client/g;->d:Lcom/revmob/RevMobAdsListener;

    return-void
.end method

.method static synthetic a(Lcom/revmob/client/g;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/g;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/revmob/client/g;Lcom/revmob/internal/m;)Lcom/revmob/internal/m;
    .locals 0

    iput-object p1, p0, Lcom/revmob/client/g;->e:Lcom/revmob/internal/m;

    return-object p1
.end method

.method static synthetic b(Lcom/revmob/client/g;)Lcom/revmob/RevMobAdsListener;
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/g;->d:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method static synthetic c(Lcom/revmob/client/g;)Lcom/revmob/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/g;->e:Lcom/revmob/internal/m;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/revmob/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/g;->e:Lcom/revmob/internal/m;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "links"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v1, "customUserAgent"

    invoke-static {}, Lcom/revmob/internal/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/revmob/internal/c;->a(Ljava/lang/String;Landroid/app/Activity;)V

    const-string v1, "ip_address"

    invoke-static {}, Lcom/revmob/internal/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/c;->a(Ljava/lang/String;)V

    const-string v1, "eula_version"

    invoke-static {}, Lcom/revmob/internal/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/revmob/internal/c;->c(Ljava/lang/String;Landroid/app/Activity;)V

    const-string v1, "eula_url"

    invoke-static {}, Lcom/revmob/internal/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/revmob/internal/c;->b(Ljava/lang/String;Landroid/app/Activity;)V

    const-string v1, "shouldExtractSocial"

    const-string v3, "false"

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    const-string v1, "shouldExtractGeolocation"

    const-string v3, "false"

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/revmob/internal/c;->a(Z)V

    const-string v1, "shouldExtractOtherAppsData"

    const-string v3, "false"

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    const-string v1, "shouldContinueOnBackground"

    const-string v3, "false"

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    const-string v1, "should_show_eula"

    const-string v3, "false"

    invoke-static {v0, v1, v3}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1, v5}, Lcom/revmob/internal/c;->a(ZLandroid/app/Activity;)V

    const-string v1, "shouldNotify"

    const-string v3, "downloadCreativesErrors"

    const-string v4, "false"

    invoke-static {v0, v1, v3, v4}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/revmob/internal/c;->b(Z)V

    const-string v1, "shouldNotify"

    const-string v3, "clickRedirectionErrors"

    const-string v4, "false"

    invoke-static {v0, v1, v3, v4}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/revmob/internal/c;->c(Z)V

    const-string v1, "shouldNotify"

    const-string v3, "exceptions"

    const-string v4, "false"

    invoke-static {v0, v1, v3, v4}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/revmob/internal/c;->d(Z)V

    const-string v1, "shouldNotify"

    const-string v3, "adReceived"

    const-string v4, "false"

    invoke-static {v0, v1, v3, v4}, Lcom/revmob/ads/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/revmob/internal/c;->e(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Application startSession: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/revmob/client/g;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    const-string v1, "maxSessions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "maxCampaigns"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "maxSessions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "maxCampaigns"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "maxImpressions"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v3, v0}, Lcom/revmob/a/e;->a(III)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "rel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    invoke-static {v1, v3}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "handleResponse"

    invoke-static {v1, v5, v3, v5, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/revmob/client/g;->b:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/revmob/client/c;

    iget-object v3, p0, Lcom/revmob/client/g;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/revmob/client/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Lcom/revmob/client/f;)V

    :cond_2
    iget-object v0, p0, Lcom/revmob/client/g;->a:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/client/h;

    invoke-direct {v1, p0}, Lcom/revmob/client/h;-><init>(Lcom/revmob/client/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    return-void
.end method
