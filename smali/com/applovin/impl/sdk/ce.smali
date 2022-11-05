.class Lcom/applovin/impl/sdk/ce;
.super Lcom/applovin/impl/sdk/bw;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "SubmitData"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method private static a(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 10

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/u;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "package_name"

    iget-object v5, v0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "created_at_sec"

    iget-wide v6, v0, Lcom/applovin/impl/sdk/u;->d:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/q;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/bx;->c:Lcom/applovin/impl/sdk/bz;

    const-string v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;Ljava/lang/Object;)V

    sget-object v2, Lcom/applovin/impl/sdk/bx;->e:Lcom/applovin/impl/sdk/bz;

    const-string v3, "device_token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;Ljava/lang/Object;)V

    sget-object v2, Lcom/applovin/impl/sdk/bx;->d:Lcom/applovin/impl/sdk/bz;

    const-string v3, "publisher_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ca;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/q;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-string v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bx;->s:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ce;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ce;->e:Ljava/lang/String;

    const-string v3, "Unable to parse API response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Lorg/json/JSONObject;)V
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->b()Lcom/applovin/impl/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->a()Lcom/applovin/impl/sdk/v;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "model"

    iget-object v5, v2, Lcom/applovin/impl/sdk/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os"

    iget-object v5, v2, Lcom/applovin/impl/sdk/v;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "brand"

    iget-object v5, v2, Lcom/applovin/impl/sdk/v;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdk_version"

    iget v5, v2, Lcom/applovin/impl/sdk/v;->e:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "revision"

    iget-object v5, v2, Lcom/applovin/impl/sdk/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "country_code"

    iget-object v5, v2, Lcom/applovin/impl/sdk/v;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "carrier"

    iget-object v5, v2, Lcom/applovin/impl/sdk/v;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wvvc"

    iget v5, v2, Lcom/applovin/impl/sdk/v;->i:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "type"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->c()Lcom/applovin/impl/sdk/t;

    move-result-object v0

    iget-object v4, v0, Lcom/applovin/impl/sdk/t;->b:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/applovin/impl/sdk/t;->a:Z

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/sdk/bx;->aT:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "idfa"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "dnt"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, v2, Lcom/applovin/impl/sdk/v;->h:Ljava/util/Locale;

    if-eqz v0, :cond_2

    const-string v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v0, "device_info"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "package_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_version"

    iget-object v3, v1, Lcom/applovin/impl/sdk/u;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "installed_at"

    iget-wide v4, v1, Lcom/applovin/impl/sdk/u;->d:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "applovin_sdk_version"

    const-string v1, "6.2.4"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ic"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isInitializedInMainActivity()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "first_install"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->z:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "plugin_version"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "app_info"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->F:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/m;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/applovin/impl/sdk/ay;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "targeting"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/cc;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cc;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    return-void
.end method

.method c()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aS:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->d()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Lcom/applovin/impl/sdk/cf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ce;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/bx;->f:Lcom/applovin/impl/sdk/bz;

    iget-object v4, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/cf;-><init>(Lcom/applovin/impl/sdk/ce;Ljava/lang/String;Lcom/applovin/impl/sdk/bz;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lorg/json/JSONObject;)V

    sget-object v1, Lcom/applovin/impl/sdk/bx;->j:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/cy;->a(Lcom/applovin/impl/sdk/bz;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cy;->run()V

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ce;->e:Ljava/lang/String;

    const-string v2, "Submitting user data..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/ce;->b(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ce;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->aS:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ce;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "vx"

    invoke-static {v0}, Lcom/applovin/impl/sdk/ce;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/ce;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ce;->g:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ce;->e:Ljava/lang/String;

    const-string v3, "Unable to build JSON message with collected data"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
