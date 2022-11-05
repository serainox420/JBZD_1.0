.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->openCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/MMWebView;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Lcom/millennialmedia/internal/MMWebView;IIZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->a:Lcom/millennialmedia/internal/MMWebView;

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->b:I

    iput p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->c:I

    iput-boolean p5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->d:Z

    iput-object p6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1204
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    return-void
.end method

.method public onPhoto(Landroid/net/Uri;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1185
    const/4 v6, 0x0

    .line 1186
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->a:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils;->getMimeTypeFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 1188
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->a:Lcom/millennialmedia/internal/MMWebView;

    .line 1189
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->b:I

    iget v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->c:I

    iget-boolean v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->d:Z

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/MediaUtils;->getScaledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_0

    .line 1193
    invoke-static {v1, v7}, Lcom/millennialmedia/internal/utils/MediaUtils;->base64EncodeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1197
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;->e:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1198
    return-void

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method
