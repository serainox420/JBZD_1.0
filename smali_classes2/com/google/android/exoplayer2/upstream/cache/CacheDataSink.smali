.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:J

.field private final c:I

.field private d:Lcom/google/android/exoplayer2/upstream/g;

.field private e:Ljava/io/File;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/io/FileOutputStream;

.field private h:J

.field private i:J

.field private j:Lcom/google/android/exoplayer2/util/p;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 83
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->b:J

    .line 84
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->c:I

    .line 85
    return-void
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/g;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->b:J

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/g;->c:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->i:J

    add-long/2addr v2, v6

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->e:Ljava/io/File;

    .line 144
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->g:Ljava/io/FileOutputStream;

    .line 145
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->c:I

    if-lez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->j:Lcom/google/android/exoplayer2/util/p;

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/google/android/exoplayer2/util/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->g:Ljava/io/FileOutputStream;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/p;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->j:Lcom/google/android/exoplayer2/util/p;

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->j:Lcom/google/android/exoplayer2/util/p;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    .line 156
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->h:J

    .line 157
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/g;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->b:J

    .line 141
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->j:Lcom/google/android/exoplayer2/util/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/p;->a(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->g:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    goto :goto_2
.end method

.method private c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    .line 172
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->e:Ljava/io/File;

    .line 174
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->e:Ljava/io/File;

    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/io/File;)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    .line 172
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->e:Ljava/io/File;

    .line 174
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->e:Ljava/io/File;

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 180
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .prologue
    .line 89
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->i:J

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->d:Lcom/google/android/exoplayer2/upstream/g;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    if-ge v0, p3, :cond_0

    .line 111
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->h:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->c()V

    .line 113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->b()V

    .line 115
    :cond_2
    sub-int v1, p3, v0

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->b:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->h:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 117
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->f:Ljava/io/OutputStream;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 118
    add-int/2addr v0, v1

    .line 119
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->h:J

    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->i:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
