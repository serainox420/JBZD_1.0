.class public final Lpl/jbzd/app/c/b;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/c/b$b;,
        Lpl/jbzd/app/c/b$c;,
        Lpl/jbzd/app/c/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lpl/jbzd/app/c/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
    .locals 3

    .prologue
    .line 51
    .line 52
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    .line 58
    new-instance v1, Lpl/jbzd/app/c/b$1;

    invoke-direct {v1, p2, p0, p3}, Lpl/jbzd/app/c/b$1;-><init>(Ljava/io/File;Landroid/content/Context;Lpl/jbzd/app/c/b$a;)V

    .line 114
    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object v2

    .line 58
    invoke-interface {v0, v1, v2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 115
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    const-string v0, "yyyyMMdd_HHmmss"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/commit451/youtubeextractor/e;->b()Lcom/commit451/youtubeextractor/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/commit451/youtubeextractor/e;->a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/c/b$2;

    invoke-direct {v1, p0, p3, p2}, Lpl/jbzd/app/c/b$2;-><init>(Landroid/content/Context;Lpl/jbzd/app/c/b$a;Ljava/io/File;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 147
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Lpl/jbzd/app/c/b$c;

    new-instance v1, Lpl/jbzd/app/c/b$3;

    invoke-direct {v1, p0, p3}, Lpl/jbzd/app/c/b$3;-><init>(Landroid/content/Context;Lpl/jbzd/app/c/b$a;)V

    invoke-direct {v0, p0, p2, v1}, Lpl/jbzd/app/c/b$c;-><init>(Landroid/content/Context;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 175
    invoke-virtual {v0, v1}, Lpl/jbzd/app/c/b$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    return-void
.end method
