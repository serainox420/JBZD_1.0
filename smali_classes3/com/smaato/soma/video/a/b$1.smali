.class Lcom/smaato/soma/video/a/b$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/video/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/a/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/a/b;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/smaato/soma/video/a/b$1;->a:Lcom/smaato/soma/video/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/smaato/soma/video/a/b$1;->a:Lcom/smaato/soma/video/a/b;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$1;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b;->a(Lcom/smaato/soma/video/a/b;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    monitor-exit v1

    .line 161
    :goto_0
    return-object v3

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$1;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b;->b(Lcom/smaato/soma/video/a/b;)V

    .line 156
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$1;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b;->c(Lcom/smaato/soma/video/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$1;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {v0}, Lcom/smaato/soma/video/a/b;->d(Lcom/smaato/soma/video/a/b;)V

    .line 158
    iget-object v0, p0, Lcom/smaato/soma/video/a/b$1;->a:Lcom/smaato/soma/video/a/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/smaato/soma/video/a/b;->a(Lcom/smaato/soma/video/a/b;I)I

    .line 160
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/smaato/soma/video/a/b$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
