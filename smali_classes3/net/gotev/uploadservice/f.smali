.class public Lnet/gotev/uploadservice/f;
.super Lnet/gotev/uploadservice/d;
.source "MultipartUploadTask.java"


# static fields
.field private static final h:Ljava/nio/charset/Charset;


# instance fields
.field private i:[B

.field private j:[B

.field private k:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/f;->h:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/gotev/uploadservice/d;-><init>()V

    return-void
.end method

.method private a(Lnet/gotev/uploadservice/NameValue;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/gotev/uploadservice/NameValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lnet/gotev/uploadservice/NameValue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/f;->k:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Lnet/gotev/uploadservice/UploadFile;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "httpParamName"

    .line 100
    invoke-virtual {p1, v1}, Lnet/gotev/uploadservice/UploadFile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "httpRemoteFileName"

    .line 101
    invoke-virtual {p1, v1}, Lnet/gotev/uploadservice/UploadFile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "httpContentType"

    .line 102
    invoke-virtual {p1, v1}, Lnet/gotev/uploadservice/UploadFile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lnet/gotev/uploadservice/f;->k:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Lnet/gotev/uploadservice/UploadFile;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->i:[B

    array-length v0, v0

    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/f;->a(Lnet/gotev/uploadservice/UploadFile;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lnet/gotev/uploadservice/f;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {p1, v2}, Lnet/gotev/uploadservice/UploadFile;->a(Landroid/content/Context;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private b(Lnet/gotev/uploadservice/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/NameValue;

    .line 116
    iget-object v2, p0, Lnet/gotev/uploadservice/f;->i:[B

    invoke-virtual {p1, v2}, Lnet/gotev/uploadservice/a/a;->a([B)V

    .line 117
    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/f;->a(Lnet/gotev/uploadservice/NameValue;)[B

    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lnet/gotev/uploadservice/a/a;->a([B)V

    .line 120
    iget-wide v2, p0, Lnet/gotev/uploadservice/f;->g:J

    iget-object v4, p0, Lnet/gotev/uploadservice/f;->i:[B

    array-length v4, v4

    array-length v0, v0

    add-int/2addr v0, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/gotev/uploadservice/f;->g:J

    .line 121
    iget-wide v2, p0, Lnet/gotev/uploadservice/f;->g:J

    iget-wide v4, p0, Lnet/gotev/uploadservice/f;->f:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lnet/gotev/uploadservice/f;->a(JJ)V

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private c(Lnet/gotev/uploadservice/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadFile;

    .line 128
    iget-boolean v2, p0, Lnet/gotev/uploadservice/f;->e:Z

    if-nez v2, :cond_1

    .line 142
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lnet/gotev/uploadservice/f;->i:[B

    invoke-virtual {p1, v2}, Lnet/gotev/uploadservice/a/a;->a([B)V

    .line 132
    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/f;->a(Lnet/gotev/uploadservice/UploadFile;)[B

    move-result-object v2

    .line 133
    invoke-virtual {p1, v2}, Lnet/gotev/uploadservice/a/a;->a([B)V

    .line 135
    iget-wide v4, p0, Lnet/gotev/uploadservice/f;->g:J

    iget-object v3, p0, Lnet/gotev/uploadservice/f;->i:[B

    array-length v3, v3

    array-length v2, v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/gotev/uploadservice/f;->g:J

    .line 136
    iget-wide v2, p0, Lnet/gotev/uploadservice/f;->g:J

    iget-wide v4, p0, Lnet/gotev/uploadservice/f;->f:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lnet/gotev/uploadservice/f;->a(JJ)V

    .line 138
    iget-object v2, p0, Lnet/gotev/uploadservice/f;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0, v2}, Lnet/gotev/uploadservice/UploadFile;->b(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0, p0}, Lnet/gotev/uploadservice/a/a;->a(Ljava/io/InputStream;Lnet/gotev/uploadservice/a/a$a;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private h()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    .line 71
    iget-object v2, p0, Lnet/gotev/uploadservice/f;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadFile;

    .line 72
    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/f;->b(Lnet/gotev/uploadservice/UploadFile;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    return-wide v2
.end method

.method private i()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    .line 81
    iget-object v2, p0, Lnet/gotev/uploadservice/f;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lnet/gotev/uploadservice/f;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/NameValue;

    .line 85
    iget-object v1, p0, Lnet/gotev/uploadservice/f;->i:[B

    array-length v1, v1

    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/f;->a(Lnet/gotev/uploadservice/NameValue;)[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 86
    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 89
    :cond_1
    return-wide v2
.end method


# virtual methods
.method protected a(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/d;->a(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------AndroidUploadService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/gotev/uploadservice/f;->h:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/f;->i:[B

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/gotev/uploadservice/f;->h:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/f;->j:[B

    .line 44
    const-string v0, "multipartUtf8Charset"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-8"

    .line 45
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnet/gotev/uploadservice/f;->k:Ljava/nio/charset/Charset;

    .line 47
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 48
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_1
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 45
    :cond_0
    sget-object v0, Lnet/gotev/uploadservice/f;->h:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lnet/gotev/uploadservice/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/f;->b(Lnet/gotev/uploadservice/a/a;)V

    .line 64
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/f;->c(Lnet/gotev/uploadservice/a/a;)V

    .line 65
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->j:[B

    invoke-virtual {p1, v0}, Lnet/gotev/uploadservice/a/a;->a([B)V

    .line 66
    return-void
.end method

.method protected b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lnet/gotev/uploadservice/f;->i()J

    move-result-wide v0

    invoke-direct {p0}, Lnet/gotev/uploadservice/f;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lnet/gotev/uploadservice/f;->j:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadFile;

    .line 147
    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadFile;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lnet/gotev/uploadservice/f;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    return-void
.end method
