.class final Lpl/jbzd/app/c/b$1;
.super Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lpl/jbzd/app/c/b$a;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/content/Context;Lpl/jbzd/app/c/b$a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lpl/jbzd/app/c/b$1;->a:Ljava/io/File;

    iput-object p2, p0, Lpl/jbzd/app/c/b$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lpl/jbzd/app/c/b$1;->c:Lpl/jbzd/app/c/b$a;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 3

    .prologue
    .line 103
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const-class v1, Lpl/jbzd/app/c/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/c/b$1;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/c/b$1;->c:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lpl/jbzd/app/c/b$1;->c:Lpl/jbzd/app/c/b$a;

    iget-object v1, p0, Lpl/jbzd/app/c/b$1;->b:Landroid/content/Context;

    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/c/b$a;->a(Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void
.end method

.method public onNewResultImpl(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lpl/jbzd/app/c/b$1;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpl/jbzd/app/c/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 71
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 73
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 76
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 77
    const-string v2, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lpl/jbzd/app/c/b$1;->b:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lpl/jbzd/app/c/b$1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 85
    :cond_1
    iget-object v1, p0, Lpl/jbzd/app/c/b$1;->c:Lpl/jbzd/app/c/b$a;

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lpl/jbzd/app/c/b$1;->c:Lpl/jbzd/app/c/b$a;

    invoke-interface {v1, v0}, Lpl/jbzd/app/c/b$a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_2
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    iget-object v0, p0, Lpl/jbzd/app/c/b$1;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/c/b$1;->c:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lpl/jbzd/app/c/b$1;->c:Lpl/jbzd/app/c/b$a;

    iget-object v1, p0, Lpl/jbzd/app/c/b$1;->b:Landroid/content/Context;

    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/c/b$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
