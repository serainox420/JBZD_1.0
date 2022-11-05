.class Lcom/applovin/impl/sdk/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-void
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->D:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/b;

    move-result-object v4

    new-instance v5, Lcom/applovin/impl/sdk/c;

    sget-object v6, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v5, v3, v6}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->E:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/c;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/c;)V

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->az:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d()Lcom/applovin/impl/sdk/bc;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->d(Lcom/applovin/impl/sdk/c;)V

    :cond_3
    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    const-string v0, "android.permission.INTERNET"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskInitializeSdk"

    const-string v2, "Unable to enable AppLovin SDK: no android.permission.INTERNET"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 6

    new-instance v0, Lcom/applovin/impl/sdk/ce;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/ce;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;J)V

    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskInitializeSdk"

    const-string v4, "Initializing AppLovin SDK 6.2.4..."

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cc;->c()V

    const-string v1, "ad_imp_session"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/cc;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/z;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/z;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/z;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/z;->d(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/cq;->c()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/cq;->b()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPersistentPostbackManager()Lcom/applovin/impl/sdk/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bn;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getEventService()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v0

    const-string v1, "landing"

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinEventService;->trackEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppLovin SDK 6.2.4 initialization "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "succeeded"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "TaskInitializeSdk"

    const-string v5, "Unable to intialize SDK, disabling the SDK"

    invoke-interface {v1, v4, v5, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppLovin SDK 6.2.4 initialization "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "succeeded"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "failed"

    goto :goto_1

    :cond_3
    const-string v0, "failed"

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v4, p0, Lcom/applovin/impl/sdk/cq;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppLovin SDK 6.2.4 initialization "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "succeeded"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "failed"

    goto :goto_4
.end method
