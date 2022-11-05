.class Lcom/applovin/impl/sdk/ca;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private final c:Landroid/content/Context;

.field private final d:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/applovin/impl/sdk/bx;->b()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ca;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/applovin/impl/sdk/bz;
    .locals 3

    invoke-static {}, Lcom/applovin/impl/sdk/bx;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK Error: unknown value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.applovin.sdk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSdkKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->c:Landroid/content/Context;

    const-string v1, "com.applovin.sdk.1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No setting type specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v2

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/bz;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bz;->c()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v2, "SettingsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve value for setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bz;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; using default..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bz;->c()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/applovin/impl/sdk/bz;Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No setting type specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No new value specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v2

    aput-object p2, v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "SettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/bz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method a(Lcom/applovin/sdk/AppLovinSdkSettings;)V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "SettingsManager"

    const-string v6, "Loading user-defined settings..."

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v6, Lcom/applovin/impl/sdk/bx;->i:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v6

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->isVerboseLoggingEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getBannerAdRefreshSeconds()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-ltz v4, :cond_7

    cmp-long v4, v6, v2

    if-lez v4, :cond_1

    const-wide/16 v2, 0x1e

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    iget-object v4, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v6, Lcom/applovin/impl/sdk/bx;->u:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v6

    iget-object v2, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v3, Lcom/applovin/impl/sdk/bx;->t:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getAutoPreloadSizes()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "NONE"

    :cond_3
    iget-object v3, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v4, Lcom/applovin/impl/sdk/bx;->D:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v4

    const-string v6, "NONE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v2, ""

    :cond_4
    aput-object v2, v3, v4

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getAutoPreloadTypes()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "NONE"

    :cond_5
    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v0

    move v2, v0

    move v3, v0

    :goto_2
    if-ge v4, v7, :cond_c

    aget-object v8, v6, v4

    sget-object v9, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v9}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v3, v1

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v3, Lcom/applovin/impl/sdk/bx;->t:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    :try_start_1
    sget-object v9, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v9}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "INCENT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "REWARD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    move v2, v1

    goto :goto_3

    :cond_a
    sget-object v9, Lcom/applovin/impl/sdk/NativeAdImpl;->TYPE_NATIVE:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v9}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v1

    goto :goto_3

    :cond_b
    move v2, v0

    move v3, v0

    :cond_c
    if-nez v3, :cond_d

    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v3, Lcom/applovin/impl/sdk/bx;->D:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v3

    const-string v4, ""

    aput-object v4, v1, v3

    :cond_d
    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v3, Lcom/applovin/impl/sdk/bx;->E:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->az:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    instance-of v0, p1, Lcom/applovin/impl/sdk/ax;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/applovin/impl/sdk/ax;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ax;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_4

    :cond_e
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "SettingsManager"

    const-string v2, "Loading settings from JSON array..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    :try_start_1
    invoke-static {v0}, Lcom/applovin/impl/sdk/ca;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/bz;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bz;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/applovin/impl/sdk/ca;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v5

    aput-object v0, v4, v5

    iget-object v4, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "SettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " set to \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v3, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "SettingsManager"

    const-string v5, "Unable to parse JSON settings array"

    invoke-interface {v3, v4, v5, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "SettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown setting recieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v3, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "SettingsManager"

    const-string v5, "Unable to convert setting object "

    invoke-interface {v3, v4, v5, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void
.end method

.method b()V
    .locals 9

    iget-object v2, p0, Lcom/applovin/impl/sdk/ca;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No context specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "SettingsManager"

    const-string v4, "Saving settings with the application..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ca;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ca;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/bx;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/bz;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v8

    aget-object v3, v3, v8

    if-eqz v3, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    instance-of v2, v3, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    instance-of v2, v3, Ljava/lang/Float;

    if-eqz v2, :cond_3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_5

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v5, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK Error: unknown value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "SettingsManager"

    const-string v4, "Settings saved with the application."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method c()V
    .locals 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "SettingsManager"

    const-string v2, "Loading settings saved with the application..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ca;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ca;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/bx;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/bz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->c()Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    iget-object v6, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->a()I

    move-result v7

    aput-object v1, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v6, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v7, "SettingsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    instance-of v7, v1, Ljava/lang/Float;

    if-eqz v7, :cond_2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_2
    instance-of v7, v1, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v7, v1, Ljava/lang/Long;

    if-eqz v7, :cond_4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_4
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_5

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDK Error: unknown value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void
.end method

.method d()V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ca;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
