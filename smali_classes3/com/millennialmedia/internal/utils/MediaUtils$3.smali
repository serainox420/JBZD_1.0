.class final Lcom/millennialmedia/internal/utils/MediaUtils$3;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->getPhotoFromCamera(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->b:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->b:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onPhoto(Landroid/net/Uri;)V

    .line 236
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->b:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    const-string v1, "Unable to get image from camera"

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->b:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    .line 253
    return-void
.end method
