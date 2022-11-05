.class public Lcom/smaato/soma/video/a/h;
.super Ljava/lang/Object;
.source "VideoDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/video/a/h$b;,
        Lcom/smaato/soma/video/a/h$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String;

.field private static final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/video/a/h$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/smaato/soma/video/a/h;->b:Ljava/util/Deque;

    .line 28
    const-string v0, "VideoDownloader"

    sput-object v0, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/util/Deque;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/smaato/soma/video/a/h;->b:Ljava/util/Deque;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/smaato/soma/video/a/h$a;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 35
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VideoDownloader attempted to cache video with null url."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 40
    invoke-interface {p1, v4}, Lcom/smaato/soma/video/a/h$a;->a(Z)V

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/smaato/soma/video/a/h$b;

    invoke-direct {v0, p1}, Lcom/smaato/soma/video/a/h$b;-><init>(Lcom/smaato/soma/video/a/h$a;)V

    .line 46
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/smaato/soma/video/a/e;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-interface {p1, v4}, Lcom/smaato/soma/video/a/h$a;->a(Z)V

    goto :goto_0
.end method
