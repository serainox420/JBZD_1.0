.class final Lcom/facebook/share/internal/LikeActionController$5;
.super Lcom/facebook/AccessTokenTracker;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .prologue
    .line 349
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    if-nez p2, :cond_0

    .line 358
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$302(I)I

    .line 359
    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OBJECT_SUFFIX"

    .line 363
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 370
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$500()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V

    .line 372
    :cond_0
    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 373
    return-void
.end method
