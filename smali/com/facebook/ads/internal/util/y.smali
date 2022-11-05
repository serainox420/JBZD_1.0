.class public Lcom/facebook/ads/internal/util/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/util/y$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/internal/util/y;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/internal/util/y;->c:Ljava/util/Set;

    sget-object v0, Lcom/facebook/ads/internal/util/y;->b:Ljava/util/Set;

    const-string v1, "1ww8E0AYsR2oX5lndk2hwp2Uosk=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/util/y;->c:Ljava/util/Set;

    const-string v1, "toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/util/y;->c:Ljava/util/Set;

    const-string v1, "3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/util/y;->c:Ljava/util/Set;

    const-string v1, "B08QtE4yLCdli4rptyqAEczXOeA=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/util/y;->c:Ljava/util/Set;

    const-string v1, "XZXI6anZbdKf+taURdnyUH5ipgM=\n"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/i/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/util/y;->a(Landroid/content/Context;Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/i/a/a;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/a/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/a/a;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/internal/util/y;->a(Landroid/content/Context;Lcom/facebook/ads/internal/i/a/a;Lcom/facebook/ads/internal/e;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const-string v2, "getUserAgentString"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/ads/internal/i/a/a;Lcom/facebook/ads/internal/e;)V
    .locals 3

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/i/a/a;->c(I)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/i/a/a;->b(I)V

    const-string v0, "user-agent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/facebook/ads/internal/util/y;->c(Landroid/content/Context;Lcom/facebook/ads/internal/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [FBAN/AudienceNetworkForAndroid;FBSN/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";FBSV/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/f/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";FBAB/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/f/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";FBAV/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/f/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";FBBV/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/ads/internal/f/i;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";FBVS/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4.20.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";FBLC/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/i/a/a;

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".sb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lcom/facebook/ads/internal/i/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/y;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/ads/internal/i/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/util/y;->b(Landroid/content/Context;Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/i/a/a;
    .locals 2

    new-instance v0, Lcom/facebook/ads/internal/i/a/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/a/a;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/internal/util/y;->a(Landroid/content/Context;Lcom/facebook/ads/internal/i/a/a;Lcom/facebook/ads/internal/e;)V

    invoke-static {}, Lcom/facebook/ads/internal/util/y;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/ads/internal/util/y;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/a/a;->b(Ljava/util/Set;)V

    sget-object v1, Lcom/facebook/ads/internal/util/y;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/util/Set;)V

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/facebook/ads/internal/util/y$a;
    .locals 2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/util/y$a;->a:Lcom/facebook/ads/internal/util/y$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/util/y$a;->b:Lcom/facebook/ads/internal/util/y$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/util/y$a;->a:Lcom/facebook/ads/internal/util/y$a;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/util/y$a;->d:Lcom/facebook/ads/internal/util/y$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/util/y$a;->e:Lcom/facebook/ads/internal/util/y$a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/util/y$a;->f:Lcom/facebook/ads/internal/util/y$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/util/y$a;->c:Lcom/facebook/ads/internal/util/y$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;Lcom/facebook/ads/internal/e;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/e;->l:Lcom/facebook/ads/internal/e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/e;->j:Lcom/facebook/ads/internal/e;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-class v1, Lcom/facebook/ads/internal/util/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_5

    :try_start_2
    invoke-static {p0}, Lcom/facebook/ads/internal/util/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_5
    :try_start_4
    const-string v0, "android.webkit.WebSettings"

    const-string v2, "android.webkit.WebView"

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/util/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "android.webkit.WebSettingsClassic"

    const-string v2, "android.webkit.WebViewClassic"

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/util/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/ads/internal/util/y;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
