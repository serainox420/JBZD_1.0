.class final Lcom/millennialmedia/internal/utils/MediaUtils$1;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->b:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->b:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    const-string v1, "Unable to download file"

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onDownloadSucceeded(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture downloaded to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->b:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/millennialmedia/internal/utils/MediaUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    .line 116
    return-void
.end method
