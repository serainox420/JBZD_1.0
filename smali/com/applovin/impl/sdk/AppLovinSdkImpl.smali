.class public Lcom/applovin/impl/sdk/AppLovinSdkImpl;
.super Lcom/applovin/sdk/AppLovinSdk;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private c:Landroid/content/Context;

.field private d:Lcom/applovin/sdk/AppLovinLogger;

.field private e:Lcom/applovin/impl/sdk/cr;

.field private f:Lcom/applovin/impl/sdk/ca;

.field private g:Lcom/applovin/impl/sdk/o;

.field private h:Lcom/applovin/impl/sdk/cc;

.field private i:Lcom/applovin/impl/sdk/z;

.field private j:Lcom/applovin/impl/sdk/b;

.field private k:Lcom/applovin/impl/sdk/bc;

.field private l:Lcom/applovin/impl/sdk/r;

.field private m:Lcom/applovin/impl/sdk/m;

.field private n:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private o:Lcom/applovin/impl/sdk/be;

.field private p:Lcom/applovin/impl/sdk/PostbackServiceImpl;

.field private q:Lcom/applovin/impl/sdk/EventServiceImpl;

.field private r:Lcom/applovin/impl/sdk/bn;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/sdk/AppLovinSdk;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->x:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0x270

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_0
    const-string v0, "com.applovin.sdk.impl.lastKnownVersionCode"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v5, :cond_0

    const-string v0, "AppLovinSdkImpl"

    const-string v2, "SDK has been updated since last run. Continuing..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ca;->d()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ca;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.sdk.impl.lastKnownVersionCode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v0, "AppLovinSdkImpl"

    const-string v2, "SDK has not been updated since last run. Continuing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "AppLovinSdkImpl"

    const-string v4, "Unable to check for SDK update"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.sdk.impl.lastKnownVersionCode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.applovin.sdk.impl.lastKnownVersionCode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v0
.end method

.method private static i()Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/cr;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/cr;

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Z

    return-void
.end method

.method b()Lcom/applovin/impl/sdk/cc;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/cc;

    return-object v0
.end method

.method c()Lcom/applovin/impl/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/b;

    return-object v0
.end method

.method public checkCorrectInitialization(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v2, "AppLovinSdk"

    const-string v3, "Checking if sdk is initialized in main activity..."

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v3

    const-string v4, "AppLovinSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " main activities for this application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinSdk"

    const-string v4, "AppLovin SDK was initialized too late in session; SDK should always be initialized within main activity and/or any relevant entry points"

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialization instead happened from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "AppLovinSdk"

    const-string v4, "Error checking if sdk is initialized in main activity..."

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method d()Lcom/applovin/impl/sdk/bc;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/bc;

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    return v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Z

    return v0
.end method

.method g()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/cr;

    new-instance v1, Lcom/applovin/impl/sdk/cq;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/cq;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cq;J)V

    return-void
.end method

.method public getAdService()Lcom/applovin/sdk/AppLovinAdService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getConnectionManager()Lcom/applovin/impl/sdk/o;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/o;

    return-object v0
.end method

.method public getDataCollector()Lcom/applovin/impl/sdk/r;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/r;

    return-object v0
.end method

.method public getEventService()Lcom/applovin/sdk/AppLovinEventService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Lcom/applovin/impl/sdk/EventServiceImpl;

    return-object v0
.end method

.method public getFileManager()Lcom/applovin/impl/sdk/z;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/z;

    return-object v0
.end method

.method public getLogger()Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method public getNativeAdService()Lcom/applovin/nativeAds/AppLovinNativeAdService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Lcom/applovin/impl/sdk/be;

    return-object v0
.end method

.method public getPersistentPostbackManager()Lcom/applovin/impl/sdk/bn;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->r:Lcom/applovin/impl/sdk/bn;

    return-object v0
.end method

.method public getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    return-object v0
.end method

.method public bridge synthetic getPostbackService()Lcom/applovin/sdk/AppLovinPostbackService;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSdkKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public getSettingsManager()Lcom/applovin/impl/sdk/ca;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    return-object v0
.end method

.method public getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Lcom/applovin/impl/sdk/m;

    return-object v0
.end method

.method h()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ca;->d()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ca;->b()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/cc;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cc;->a()V

    return-void
.end method

.method public hasCriticalErrors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Lcom/applovin/sdk/AppLovinSdkSettings;

    iput-object p3, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    :try_start_0
    new-instance v2, Lcom/applovin/impl/sdk/k;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/k;-><init>()V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v1, Lcom/applovin/impl/sdk/ca;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/ca;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    new-instance v1, Lcom/applovin/impl/sdk/cr;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/cr;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/cr;

    new-instance v1, Lcom/applovin/impl/sdk/o;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/o;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/o;

    new-instance v1, Lcom/applovin/impl/sdk/cc;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/cc;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/cc;

    new-instance v1, Lcom/applovin/impl/sdk/z;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/z;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/z;

    new-instance v1, Lcom/applovin/impl/sdk/r;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/r;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/r;

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v1, Lcom/applovin/impl/sdk/be;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/be;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Lcom/applovin/impl/sdk/be;

    new-instance v1, Lcom/applovin/impl/sdk/PostbackServiceImpl;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/PostbackServiceImpl;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    new-instance v1, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/EventServiceImpl;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Lcom/applovin/impl/sdk/EventServiceImpl;

    new-instance v1, Lcom/applovin/impl/sdk/bn;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bn;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->r:Lcom/applovin/impl/sdk/bn;

    new-instance v1, Lcom/applovin/impl/sdk/b;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/b;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/b;

    new-instance v1, Lcom/applovin/impl/sdk/bc;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bc;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/bc;

    new-instance v1, Lcom/applovin/impl/sdk/m;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/m;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Lcom/applovin/impl/sdk/m;

    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Z

    const-string v1, "AppLovinSdk"

    const-string v3, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Z

    const-string v1, "AppLovinSdk"

    const-string v3, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppLovinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called with an invalid SDK key from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->hasCriticalErrors()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/sdk/ca;)V

    instance-of v1, p2, Lcom/applovin/impl/sdk/ax;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/applovin/impl/sdk/ax;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ax;->a()Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/sdk/l;)V

    :cond_3
    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ca;->c()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->b:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v1, p2}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/sdk/AppLovinSdkSettings;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ca;->b()V

    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g()V

    :goto_0
    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppLovinSdk"

    const-string v3, "Failed to load AppLovin SDK, ad serving will be disabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v6}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V

    goto :goto_0
.end method

.method public initializeSdk()V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Z

    return v0
.end method

.method public isInitializedInMainActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->x:Z

    return v0
.end method

.method public setInitializedInMainActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->x:Z

    return-void
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No version specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->z:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/ca;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ca;->b()V

    return-void
.end method
