.class public Lcom/applovin/impl/sdk/EventServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinEventService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v0, Lcom/applovin/impl/sdk/bx;->aX:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/t;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/t;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/t;)Landroid/net/Uri;
    .locals 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->a()Lcom/applovin/impl/sdk/v;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->b()Lcom/applovin/impl/sdk/u;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bt;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v4, Lcom/applovin/impl/sdk/bx;->aW:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "event"

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bt;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "ts"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bt;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "platform"

    const-string v5, "Android"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "model"

    iget-object v5, v1, Lcom/applovin/impl/sdk/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "package_name"

    iget-object v5, v2, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "sdk_key"

    iget-object v5, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSdkKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "idfa"

    iget-object v5, p2, Lcom/applovin/impl/sdk/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "dnt"

    iget-boolean v5, p2, Lcom/applovin/impl/sdk/t;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "ia"

    iget-wide v6, v2, Lcom/applovin/impl/sdk/u;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "api_did"

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v5, Lcom/applovin/impl/sdk/bx;->c:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v5}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "brand"

    iget-object v4, v1, Lcom/applovin/impl/sdk/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "model"

    iget-object v4, v1, Lcom/applovin/impl/sdk/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "revision"

    iget-object v4, v1, Lcom/applovin/impl/sdk/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "sdk_version"

    const-string v4, "6.2.4"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "os"

    iget-object v1, v1, Lcom/applovin/impl/sdk/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app_version"

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/r;->b()Lcom/applovin/impl/sdk/u;

    move-result-object v2

    iget-object v2, v2, Lcom/applovin/impl/sdk/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-nez v3, :cond_0

    const-string v1, "sub_event"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "postinstall"

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v5, "EventServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected class type in trackEvent(); all keys and values passed as parameters must be String. Encountered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; will use toString() value instead, which may be unexpected..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private a(Lcom/applovin/impl/sdk/bt;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aY:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "EventServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/w;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/w;-><init>(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/bt;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/ck;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/impl/sdk/ck;)V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/cj;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/cj;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/ck;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    return-void
.end method


# virtual methods
.method public trackCheckout(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    const-string v1, "transaction_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "checkout"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    new-instance v1, Lcom/applovin/impl/sdk/bt;

    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/di;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/bt;-><init>(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/bt;)V

    return-void
.end method

.method public trackInAppPurchase(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 5

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    :try_start_0
    const-string v1, "receipt_data"

    const-string v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "receipt_data_signature"

    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "iap"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "EventServiceImpl"

    const-string v4, "Unable to track in app purchase; invalid purchanse intent"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
