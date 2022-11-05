.class public Lcom/applovin/impl/sdk/bn;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private final e:Ljava/lang/Object;

.field private final f:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/bn;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.applovin.sdk.impl.postbackQueue.domain"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bn;->f:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/bn;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bn;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bn;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/applovin/impl/sdk/bp;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "attemptNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "targetUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestBody"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/ay;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    new-instance v0, Lcom/applovin/impl/sdk/bp;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/applovin/impl/sdk/bp;-><init>(Lcom/applovin/impl/sdk/bn;Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PersistentPostbackManager"

    const-string v3, "Unable to inflate postback request from JSON."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bn;Lcom/applovin/impl/sdk/bp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bn;->d(Lcom/applovin/impl/sdk/bp;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/bp;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bn;->b(Lcom/applovin/impl/sdk/bp;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bn;->c(Lcom/applovin/impl/sdk/bp;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/bn;Lcom/applovin/impl/sdk/bp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bn;->e(Lcom/applovin/impl/sdk/bp;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/bp;)V
    .locals 5

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->ba:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/bn;->d()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueued postback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persistent queue has reached maximum size; postback retried in memory only."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 8

    invoke-static {}, Lcom/applovin/impl/sdk/n;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->f:Landroid/content/SharedPreferences;

    const-string v1, "com.applovin.sdk.impl.postbackQueue.key"

    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/bx;->bb:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "PersistentPostbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deserializing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " postback(s)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bn;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/bp;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/bp;->a()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "PersistentPostbackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping deserialization because maximum attempt count exceeded for postback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "PersistentPostbackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to deserialize postback json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully loaded postback queue with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " postback(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PersistentPostbackManager"

    const-string v2, "Loading new postback queue due to old Android version..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private c(Lcom/applovin/impl/sdk/bp;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing to submit postback..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bp;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/bp;->a(I)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/bn;->d()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bb:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bp;->a()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceeded maximum persisted attempt count of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Dequeuing postback: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bn;->d(Lcom/applovin/impl/sdk/bp;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bp;->c()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/sdk/bo;

    invoke-direct {v3, p0, p1}, Lcom/applovin/impl/sdk/bo;-><init>(Lcom/applovin/impl/sdk/bn;Lcom/applovin/impl/sdk/bp;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/PostbackServiceImpl;->dispatchPostbackAsync(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/applovin/impl/sdk/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/bp;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bn;->f(Lcom/applovin/impl/sdk/bp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.applovin.sdk.impl.postbackQueue.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PersistentPostbackManager"

    const-string v2, "Wrote updated postback queue to disk."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PersistentPostbackManager"

    const-string v2, "Skipping writing postback queue to disk due to old Android version..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d(Lcom/applovin/impl/sdk/bp;)V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/bn;->d()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dequeued successfully transmitted postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(Lcom/applovin/impl/sdk/bp;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f(Lcom/applovin/impl/sdk/bp;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "attemptNumber"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bp;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "targetUrl"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bp;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "requestBody"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "PersistentPostbackManager"

    const-string v3, "Unable to serialize postback request to JSON."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/bp;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bn;->c(Lcom/applovin/impl/sdk/bp;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/bp;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/bp;-><init>(Lcom/applovin/impl/sdk/bn;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/bp;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/bn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/bp;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bn;->c(Lcom/applovin/impl/sdk/bp;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
