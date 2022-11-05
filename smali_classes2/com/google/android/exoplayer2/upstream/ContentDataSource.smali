.class public final Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/android/exoplayer2/upstream/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/ContentDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:Ljava/io/InputStream;

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/ContentDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    .line 67
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, -0x1

    .line 106
    if-nez p3, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    if-ne v1, v0, :cond_3

    .line 122
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 114
    :cond_2
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    int-to-long v4, p3

    .line 115
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 128
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 129
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;I)V

    :cond_5
    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/g;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 72
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/net/Uri;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 74
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 76
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 79
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 81
    :cond_0
    :try_start_1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 82
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/g;)V

    .line 101
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    return-wide v0

    .line 84
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    .line 85
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/net/Uri;

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    if-eqz v0, :cond_2

    .line 162
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    .line 169
    :cond_2
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    if-eqz v1, :cond_3

    .line 162
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    :cond_3
    throw v0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:Ljava/io/InputStream;

    .line 154
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    :cond_4
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    if-eqz v1, :cond_5

    .line 162
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v1, :cond_5

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    :cond_5
    throw v0

    .line 157
    :catch_2
    move-exception v0

    .line 158
    :try_start_5
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    :catchall_2
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    if-eqz v1, :cond_6

    .line 162
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->g:Z

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v1, :cond_6

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/net/Uri;

    return-object v0
.end method
