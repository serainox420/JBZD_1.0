.class public final Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;
.super Ljava/lang/Object;
.source "RawResourceDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/google/android/exoplayer2/upstream/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:Ljava/io/InputStream;

.field private f:J

.field private g:Z


# virtual methods
.method public a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, -0x1

    .line 135
    if-nez p3, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    if-ne v1, v0, :cond_3

    .line 151
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 153
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 143
    :cond_2
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    int-to-long v4, p3

    .line 144
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 157
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 158
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;I)V

    :cond_5
    move v0, v1

    .line 163
    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/g;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 92
    :try_start_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->c:Landroid/net/Uri;

    .line 93
    const-string v2, "rawresource"

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->c:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v1, "URI must use scheme rawresource"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 99
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 104
    :try_start_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->a:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 105
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 107
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 108
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 111
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v1, "Resource identifier must be an integer."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    .line 114
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/g;)V

    .line 130
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    return-wide v0

    .line 116
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    .line 118
    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->f:J

    goto :goto_0

    :cond_4
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    sub-long v0, v2, v0

    goto :goto_1
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->c:Landroid/net/Uri;

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    if-eqz v0, :cond_2

    .line 191
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    .line 198
    :cond_2
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    if-eqz v1, :cond_3

    .line 191
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    :cond_3
    throw v0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->e:Ljava/io/InputStream;

    .line 183
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 189
    :cond_4
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    if-eqz v1, :cond_5

    .line 191
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v1, :cond_5

    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    :cond_5
    throw v0

    .line 186
    :catch_2
    move-exception v0

    .line 187
    :try_start_5
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 189
    :catchall_2
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->d:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    if-eqz v1, :cond_6

    .line 191
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->g:Z

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v1, :cond_6

    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->c:Landroid/net/Uri;

    return-object v0
.end method
