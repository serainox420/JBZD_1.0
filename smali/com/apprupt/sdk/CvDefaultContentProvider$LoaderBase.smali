.class abstract Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Lcom/apprupt/sdk/CvContentManager$ContentLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LoaderBase"
.end annotation


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/apprupt/sdk/CvContentOptions;

.field protected final d:Landroid/os/Handler;

.field protected e:Z

.field final synthetic f:Lcom/apprupt/sdk/CvDefaultContentProvider;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDefaultContentProvider;Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->f:Lcom/apprupt/sdk/CvDefaultContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->d:Landroid/os/Handler;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->e:Z

    .line 34
    iput-object p3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->c:Lcom/apprupt/sdk/CvContentOptions;

    .line 35
    iput-object p2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->b:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "URLResponse:"

    aput-object v2, v1, v4

    iget-boolean v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 105
    iget-boolean v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "URLResponse with error"

    aput-object v2, v1, v4

    iget v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->b:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 107
    iget-object v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->e:Ljava/lang/Exception;

    iget v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->a:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->b(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "URLResponse content parsed"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "URLResponse data is not parsable"

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 117
    const-string v1, "Cannot parse content"

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->b(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method abstract a(Ljava/lang/String;Ljava/lang/Exception;I)V
.end method

.method abstract a(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract b()V
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Building request /"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/URLRequest;->b(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    const-string v1, "_"

    .line 90
    invoke-static {}, Lcom/apprupt/sdk/CvUnderscore;->b()Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v2

    invoke-static {}, Lcom/apprupt/sdk/CvAudience;->a()Lcom/apprupt/sdk/CvAudience;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apprupt/sdk/CvAudience;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apprupt/sdk/CvUnderscore;->a(Lorg/json/JSONObject;)Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvUnderscore;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    const-string v1, "pyld"

    if-nez p1, :cond_0

    const-string p1, ""

    .line 91
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    const-string v1, "sdkVersion"

    const-string v2, "android_4.2.7"

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$2;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$2;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest;->b()Lcom/apprupt/sdk/URLRequest;

    .line 101
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Error while loading content:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, p2, v1}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 124
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->d()V

    .line 125
    return-void
.end method

.method abstract c()V
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->e:Z

    .line 41
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()Lcom/apprupt/sdk/CvContentManager$ContentLoader;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-object p0
.end method
