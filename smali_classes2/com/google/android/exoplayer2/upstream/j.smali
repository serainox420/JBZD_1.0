.class public final Lcom/google/android/exoplayer2/upstream/j;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/e;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e;

.field private final b:Lcom/google/android/exoplayer2/upstream/e;

.field private final c:Lcom/google/android/exoplayer2/upstream/e;

.field private final d:Lcom/google/android/exoplayer2/upstream/e;

.field private e:Lcom/google/android/exoplayer2/upstream/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/r;Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/e;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->a:Lcom/google/android/exoplayer2/upstream/e;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/r;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/r;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->c:Lcom/google/android/exoplayer2/upstream/e;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/r;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->d:Lcom/google/android/exoplayer2/upstream/e;

    .line 102
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/g;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 108
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->c:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    move-result-wide v0

    return-wide v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->b:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    goto :goto_1

    .line 115
    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->c:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    goto :goto_1

    .line 117
    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->d:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    goto :goto_1

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->a:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    goto :goto_1
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    .line 145
    :cond_0
    return-void

    .line 142
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->e:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->b()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
