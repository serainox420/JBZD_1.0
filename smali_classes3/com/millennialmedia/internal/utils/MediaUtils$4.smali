.class final Lcom/millennialmedia/internal/utils/MediaUtils$4;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->getPhotoFromGallery(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->a:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->a:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onPhoto(Landroid/net/Uri;)V

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->a:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    const-string v1, "Unable to get image from gallery"

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->a:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    .line 289
    return-void
.end method
