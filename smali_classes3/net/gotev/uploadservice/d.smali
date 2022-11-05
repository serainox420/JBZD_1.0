.class public abstract Lnet/gotev/uploadservice/d;
.super Lnet/gotev/uploadservice/j;
.source "HttpUploadTask.java"

# interfaces
.implements Lnet/gotev/uploadservice/a/a$a;
.implements Lnet/gotev/uploadservice/a/b$a;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field protected a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

.field private i:Lnet/gotev/uploadservice/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lnet/gotev/uploadservice/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lnet/gotev/uploadservice/j;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lnet/gotev/uploadservice/d;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting upload task with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/d;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lnet/gotev/uploadservice/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/gotev/uploadservice/d;->g:J

    .line 59
    invoke-virtual {p0}, Lnet/gotev/uploadservice/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/d;->f:J

    .line 61
    iget-object v0, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->e:Lnet/gotev/uploadservice/a/c;

    iget-object v1, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    .line 66
    invoke-virtual {v1}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/d;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/gotev/uploadservice/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/a/b;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    .line 67
    invoke-virtual {v1}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/gotev/uploadservice/a/b;->a(Ljava/util/List;)Lnet/gotev/uploadservice/a/b;

    move-result-object v0

    iget-wide v2, p0, Lnet/gotev/uploadservice/d;->f:J

    iget-object v1, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    .line 68
    invoke-virtual {v1}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->d()Z

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lnet/gotev/uploadservice/a/b;->a(JZ)Lnet/gotev/uploadservice/a/b;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/d;->i:Lnet/gotev/uploadservice/a/b;

    .line 70
    iget-object v0, p0, Lnet/gotev/uploadservice/d;->i:Lnet/gotev/uploadservice/a/b;

    invoke-interface {v0, p0}, Lnet/gotev/uploadservice/a/b;->a(Lnet/gotev/uploadservice/a/b$a;)Lnet/gotev/uploadservice/ServerResponse;

    move-result-object v0

    .line 71
    sget-object v1, Lnet/gotev/uploadservice/d;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server responded with HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/gotev/uploadservice/ServerResponse;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to upload with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/d;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 72
    invoke-virtual {v3}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v1, p0, Lnet/gotev/uploadservice/d;->e:Z

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/d;->a(Lnet/gotev/uploadservice/ServerResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/d;->i:Lnet/gotev/uploadservice/a/b;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lnet/gotev/uploadservice/d;->i:Lnet/gotev/uploadservice/a/b;

    invoke-interface {v0}, Lnet/gotev/uploadservice/a/b;->a()V

    .line 88
    :cond_2
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/gotev/uploadservice/d;->i:Lnet/gotev/uploadservice/a/b;

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lnet/gotev/uploadservice/d;->i:Lnet/gotev/uploadservice/a/b;

    invoke-interface {v1}, Lnet/gotev/uploadservice/a/b;->a()V

    :cond_3
    throw v0
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Lnet/gotev/uploadservice/d;->g:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/gotev/uploadservice/d;->g:J

    .line 107
    iget-wide v0, p0, Lnet/gotev/uploadservice/d;->g:J

    iget-wide v2, p0, Lnet/gotev/uploadservice/d;->f:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/gotev/uploadservice/d;->a(JJ)V

    .line 108
    return-void
.end method

.method protected a(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/j;->a(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V

    .line 38
    const-string v0, "httpTaskParameters"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    iput-object v0, p0, Lnet/gotev/uploadservice/d;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    .line 39
    return-void
.end method

.method protected abstract b()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lnet/gotev/uploadservice/d;->e:Z

    return v0
.end method
