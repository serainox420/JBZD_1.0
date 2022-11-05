.class public Lcom/apprupt/sdk/CvContentManager;
.super Ljava/lang/Object;
.source "CvContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvContentManager$ContentProvider;,
        Lcom/apprupt/sdk/CvContentManager$ContentLoader;,
        Lcom/apprupt/sdk/CvContentManager$PreloaderListener;,
        Lcom/apprupt/sdk/CvContentManager$ContentListener;
    }
.end annotation


# instance fields
.field private a:Lcom/apprupt/sdk/CvContentManager$ContentProvider;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/CvContentManager$ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvContentManager;->b:Ljava/util/HashMap;

    .line 42
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvContentManager;->a()V

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/apprupt/sdk/CvContentManager$ContentProvider;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/apprupt/sdk/CvContentManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/apprupt/sdk/CvContentManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContentManager$ContentProvider;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContentManager;->a:Lcom/apprupt/sdk/CvContentManager$ContentProvider;

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$ContentListener;)Lcom/apprupt/sdk/CvContentManager$ContentLoader;
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Lcom/apprupt/sdk/AFP2;->a(Landroid/content/Context;)V

    .line 94
    iget-object v0, p2, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvContentManager;->a(Ljava/lang/String;)Lcom/apprupt/sdk/CvContentManager$ContentProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/apprupt/sdk/CvContentManager$ContentProvider;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$ContentListener;)Lcom/apprupt/sdk/CvContentManager$ContentLoader;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvContentManager;->a(Lcom/apprupt/sdk/CvContentManager$ContentProvider;)V

    .line 47
    return-void
.end method

.method public declared-synchronized a(Lcom/apprupt/sdk/CvContentManager$ContentProvider;)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    if-nez p1, :cond_0

    .line 51
    :try_start_0
    new-instance p1, Lcom/apprupt/sdk/CvDefaultContentProvider;

    invoke-direct {p1}, Lcom/apprupt/sdk/CvDefaultContentProvider;-><init>()V

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/apprupt/sdk/CvContentManager;->a:Lcom/apprupt/sdk/CvContentManager$ContentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
