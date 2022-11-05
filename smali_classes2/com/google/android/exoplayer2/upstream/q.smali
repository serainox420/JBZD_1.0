.class public final Lcom/google/android/exoplayer2/upstream/q;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/e;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e;

.field private final b:Lcom/google/android/exoplayer2/upstream/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/d;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/e;

    .line 37
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/d;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->b:Lcom/google/android/exoplayer2/upstream/d;

    .line 38
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result v0

    .line 55
    if-lez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/q;->b:Lcom/google/android/exoplayer2/upstream/d;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/d;->a([BII)V

    .line 59
    :cond_0
    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/g;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    move-result-wide v6

    .line 43
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/g;->c:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    iget-object v8, p1, Lcom/google/android/exoplayer2/upstream/g;->f:Ljava/lang/String;

    iget v9, p1, Lcom/google/android/exoplayer2/upstream/g;->g:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    move-object p1, v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->b:Lcom/google/android/exoplayer2/upstream/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/d;->a(Lcom/google/android/exoplayer2/upstream/g;)V

    .line 49
    return-wide v6
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->b:Lcom/google/android/exoplayer2/upstream/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/d;->a()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/q;->b:Lcom/google/android/exoplayer2/upstream/d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/d;->a()V

    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
