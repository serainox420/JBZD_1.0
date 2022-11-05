.class Lcom/inmobi/re/controller/JSUtilityController$6;
.super Ljava/lang/Object;
.source "JSUtilityController.java"

# interfaces
.implements Lcom/inmobi/re/controller/util/StartActivityForResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/controller/JSUtilityController;->getGalleryImage()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/controller/JSUtilityController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/controller/JSUtilityController;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/inmobi/re/controller/JSUtilityController$6;->a:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1324
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1326
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController$6;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v1, v1, Lcom/inmobi/re/controller/JSUtilityController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/inmobi/re/controller/util/ImageProcessing;->convertMediaUriToPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController$6;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v1, v1, Lcom/inmobi/re/controller/JSUtilityController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/inmobi/re/controller/util/ImageProcessing;->getCompressedBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1334
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1335
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController$6;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v3, v3, Lcom/inmobi/re/controller/JSUtilityController;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/inmobi/re/controller/util/ImageProcessing;->getBase64EncodedImage(Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController$6;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v3, v3, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseGalleryImageSelectedEvent(Ljava/lang/String;II)V

    .line 1344
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$6;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "User did not select a picture"

    const-string v2, "getGalleryImage"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
