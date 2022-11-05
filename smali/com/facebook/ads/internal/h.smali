.class public Lcom/facebook/ads/internal/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/facebook/ads/internal/h;


# instance fields
.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.ads.FEATURE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/h;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const-string v1, "com.google.android.exoplayer"

    const-string v2, "ExoPlayer"

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v1

    const-string v2, "adnw_enable_exoplayer"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v1

    const-string v2, "adnw_enable_iab"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "adnw_debug_logging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "unified_logging_immediate_delay_ms"

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "unified_logging_dispatch_interval_seconds"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "video_and_endcard_autorotate"

    const-string v2, "autorotate_disabled"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "autorotate_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "minimum_elapsed_time_after_impression"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "ad_viewability_tap_margin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "visible_area_check_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/internal/h;->k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    const-string v1, "visible_area_percentage"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static k(Landroid/content/Context;)Lcom/facebook/ads/internal/h;
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/h;->a:Lcom/facebook/ads/internal/h;

    if-nez v0, :cond_1

    const-class v1, Lcom/facebook/ads/internal/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/h;->a:Lcom/facebook/ads/internal/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/internal/h;->a:Lcom/facebook/ads/internal/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/h;->a:Lcom/facebook/ads/internal/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h;->b:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h;->b:Landroid/content/SharedPreferences;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h;->b:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method
