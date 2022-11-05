.class Lcom/applovin/impl/sdk/df;
.super Lcom/applovin/impl/sdk/bu;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

.field private final b:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field private final c:Ljava/lang/Object;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 1

    const-string v0, "TaskValidateReward"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/bu;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/df;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/df;->d:Z

    check-cast p2, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iput-object p3, p0, Lcom/applovin/impl/sdk/df;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method private a(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "network_timeout"

    const/16 v1, 0x190

    if-lt p1, v1, :cond_1

    const/16 v1, 0x1f4

    if-gt p1, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    const-string v0, "rejected"

    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/bm;->a()Lcom/applovin/impl/sdk/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/bm;->a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-interface {v1, v2, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/df;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/df;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/df;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/df;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/bm;->a()Lcom/applovin/impl/sdk/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/bm;->a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/bm;->a(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    const-string v0, "accepted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-interface {v0, v1, p2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v0, "quota_exceeded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-interface {v0, v1, p2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v0, "rejected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-interface {v0, v1, p2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->b:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    const/16 v2, -0x190

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/q;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/q;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "params"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ay;->a(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_2
    const-string v0, "result"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_2
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/df;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/df;->e:Ljava/lang/String;

    const-string v3, "Unable to parse API response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "network_timeout"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/df;->d:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/df;->d:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    invoke-static {}, Lcom/applovin/impl/sdk/aa;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getClCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "clcode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "user_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "vr"

    new-instance v2, Lcom/applovin/impl/sdk/dg;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/dg;-><init>(Lcom/applovin/impl/sdk/df;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/applovin/impl/sdk/df;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-void

    :cond_1
    const-string v1, "clcode"

    const-string v3, "NO_CLCODE"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
