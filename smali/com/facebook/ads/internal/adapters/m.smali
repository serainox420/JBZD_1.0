.class public Lcom/facebook/ads/internal/adapters/m;
.super Lcom/facebook/ads/internal/adapters/x;


# instance fields
.field private b:Lcom/facebook/ads/internal/adapters/y;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/facebook/ads/internal/adapters/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/x;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/m;->d:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->e:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->p:Lcom/facebook/ads/internal/adapters/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->p:Lcom/facebook/ads/internal/adapters/z;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/z;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->p:Lcom/facebook/ads/internal/adapters/z;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->p:Lcom/facebook/ads/internal/adapters/z;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->a:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "https://www.facebook.com/audience_network/server_side_reward"

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "puid"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->a:Lcom/facebook/ads/RewardData;

    invoke-virtual {v2}, Lcom/facebook/ads/RewardData;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "pc"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->a:Lcom/facebook/ads/RewardData;

    invoke-virtual {v2}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "ptid"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "appid"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v1, "https://www.%s.facebook.com/audience_network/server_side_reward"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/y;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/y;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/m;->b:Lcom/facebook/ads/internal/adapters/y;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/m;->c:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/facebook/ads/internal/adapters/m;->d:Z

    const-string v0, "data"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->b:Lcom/facebook/ads/internal/adapters/y;

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/x;Lcom/facebook/ads/AdError;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "video_play_report_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->g:Ljava/lang/String;

    const-string v1, "video_time_report_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->h:Ljava/lang/String;

    const-string v1, "impression_report_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->i:Ljava/lang/String;

    const-string v1, "close_report_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->j:Ljava/lang/String;

    const-string v1, "ct"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->o:Ljava/lang/String;

    const-string v1, "end_card_markup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->k:Ljava/lang/String;

    const-string v1, "activation_command"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->l:Ljava/lang/String;

    const-string v1, "context_switch"

    const-string v2, "endvideo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->n:Ljava/lang/String;

    const-string v0, "placement_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->m:Ljava/lang/String;

    :goto_1
    new-instance v0, Lcom/facebook/ads/internal/adapters/z;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/internal/adapters/z;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/x;Lcom/facebook/ads/internal/adapters/y;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->p:Lcom/facebook/ads/internal/adapters/z;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/m;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->b:Lcom/facebook/ads/internal/adapters/y;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/x;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->m:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Z
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/m;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->c:Landroid/content/Context;

    const-class v2, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "viewType"

    sget-object v2, Lcom/facebook/ads/AudienceNetworkActivity$Type;->REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "videoURL"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "videoTimeReportURL"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "videoPlayReportURL"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/h;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "predefinedOrientationKey"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v1, "facebookRewardedVideoEndCardActivationCommand"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "impressionReportURL"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uniqueId"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "facebookRewardedVideoEndCardMarkup"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "closeReportURL"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "clientToken"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rewardServerURL"

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "contextSwitchBehavior"

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->c:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m;->d()V

    return-void
.end method
