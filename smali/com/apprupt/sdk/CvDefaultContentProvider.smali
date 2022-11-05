.class Lcom/apprupt/sdk/CvDefaultContentProvider;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Lcom/apprupt/sdk/CvContentManager$ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;,
        Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;,
        Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;
    }
.end annotation


# static fields
.field private static final a:Lcom/apprupt/sdk/Logger$log;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "CONTENT_PROVIDER_DEFAULT"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvDefaultContentProvider;->a:Lcom/apprupt/sdk/Logger$log;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider;->b:Ljava/util/HashMap;

    .line 289
    return-void
.end method

.method static synthetic a()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/apprupt/sdk/CvDefaultContentProvider;->a:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvDefaultContentProvider;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$ContentListener;)Lcom/apprupt/sdk/CvContentManager$ContentLoader;
    .locals 6

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/apprupt/sdk/CvAppInfo;->a(Landroid/content/Context;)V

    .line 303
    new-instance v1, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider;Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V

    .line 304
    iget-object v0, p2, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 306
    sget-object v2, Lcom/apprupt/sdk/CvDefaultContentProvider;->a:Lcom/apprupt/sdk/Logger$log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Ad already cached, returning content for"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p2, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 307
    if-eqz p3, :cond_0

    new-instance v2, Lcom/apprupt/sdk/CvContentResponse;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/apprupt/sdk/CvContentResponse;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p3, v2}, Lcom/apprupt/sdk/CvContentManager$ContentListener;->a(Lcom/apprupt/sdk/CvContentResponse;)V

    .line 308
    :cond_0
    invoke-virtual {v1}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    monitor-exit p0

    return-object v1

    .line 310
    :cond_1
    :try_start_1
    sget-object v0, Lcom/apprupt/sdk/CvDefaultContentProvider;->a:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "starting loader for"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v1}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->e()Lcom/apprupt/sdk/CvContentManager$ContentLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
