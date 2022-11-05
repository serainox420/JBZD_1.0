.class final Lcom/millennialmedia/internal/utils/MediaUtils$2;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->b(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# direct methods
.method constructor <init>(ZLjava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 0

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->a:Z

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->c:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 148
    if-nez p2, :cond_1

    .line 151
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->a:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->c:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->c:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onPictureSaved(Ljava/io/File;)V

    goto :goto_0
.end method
