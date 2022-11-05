.class Lcom/apprupt/sdk/CvDefaultContentProvider$1;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Lcom/apprupt/sdk/CvContentManager$ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvContentOptions;

.field final synthetic b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

.field final synthetic c:Lcom/apprupt/sdk/CvDefaultContentProvider;


# virtual methods
.method public a(Lcom/apprupt/sdk/CvContentResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    iget-boolean v0, p1, Lcom/apprupt/sdk/CvContentResponse;->a:Z

    if-eqz v0, :cond_1

    .line 346
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iget-object v1, p1, Lcom/apprupt/sdk/CvContentResponse;->d:Ljava/lang/Exception;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error while loading content for"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, ":"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/apprupt/sdk/CvContentResponse;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    new-instance v1, Lcom/apprupt/sdk/CvPreloaderResponse;

    iget-object v2, p1, Lcom/apprupt/sdk/CvContentResponse;->b:Ljava/lang/String;

    iget v3, p1, Lcom/apprupt/sdk/CvContentResponse;->c:I

    invoke-direct {v1, v2, v3}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->c:Lcom/apprupt/sdk/CvDefaultContentProvider;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->c:Lcom/apprupt/sdk/CvDefaultContentProvider;

    iget-object v2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v2, v2, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a(Lcom/apprupt/sdk/CvDefaultContentProvider;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 351
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Got content for"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v5, v5, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 352
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Content"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/apprupt/sdk/CvContentResponse;->e:Lorg/json/JSONObject;

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 353
    iget-object v2, p1, Lcom/apprupt/sdk/CvContentResponse;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$1;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    new-instance v2, Lcom/apprupt/sdk/CvPreloaderResponse;

    invoke-direct {v2}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>()V

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    .line 355
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
