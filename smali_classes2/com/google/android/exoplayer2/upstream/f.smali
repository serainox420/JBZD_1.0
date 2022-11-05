.class public final Lcom/google/android/exoplayer2/upstream/f;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e;

.field private final b:Lcom/google/android/exoplayer2/upstream/g;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/f;->d:Z

    .line 34
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/f;->e:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/f;->a:Lcom/google/android/exoplayer2/upstream/e;

    .line 43
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/f;->b:Lcom/google/android/exoplayer2/upstream/g;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->c:[B

    .line 45
    return-void
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/f;->d:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->a:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/f;->b:Lcom/google/android/exoplayer2/upstream/g;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/f;->d:Z

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/f;->f:J

    return-wide v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/f;->c()V

    .line 65
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/f;->e:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->a()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/f;->e:Z

    .line 97
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 69
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/f;->c:[B

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/f;->read([B)I

    move-result v1

    .line 70
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/f;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 80
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/f;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 81
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/f;->c()V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result v0

    .line 83
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 87
    :goto_1
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/f;->f:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/f;->f:J

    goto :goto_1
.end method
