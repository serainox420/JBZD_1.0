.class Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;
.super Ljava/lang/Object;
.source "AdWebViewClient.java"

# interfaces
.implements Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmazonMobileExecutor"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/AmazonDeviceLauncher;

    invoke-direct {v1}, Lcom/amazon/device/ads/AmazonDeviceLauncher;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v2}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AmazonDeviceLauncher;Lcom/amazon/device/ads/WebUtils2;)V

    .line 296
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AmazonDeviceLauncher;Lcom/amazon/device/ads/WebUtils2;)V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    .line 301
    invoke-static {}, Lcom/amazon/device/ads/AdWebViewClient;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 302
    iput-object p3, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    .line 303
    iput-object p4, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 304
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->specialUrlClicked(Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method protected handleApplicationDefinedSpecialURL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Special url clicked, but was not handled by SDK. Url: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method protected launchExternalActivity(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public specialUrlClicked(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Executing AmazonMobile Intent"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 331
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    :try_start_0
    const-string v0, "intent"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launchExternalActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :cond_1
    :goto_1
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    const/4 v0, 0x0

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v2, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->isWindowshopPresent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v2, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->isInWindowshopApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 356
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "shopping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const-string v0, "app-action"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    const-string v2, "detail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 365
    const-string v0, "asin"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v2, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->launchWindowshopDetailPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_4
    const-string v2, "search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 374
    const-string v0, "keyword"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v2, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->launchWindowshopSearchPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_5
    const-string v1, "webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :cond_6
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
