.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->savePictureToPhotoLibrary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/internal/MMWebView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->b:Lcom/millennialmedia/internal/MMWebView;

    iput-object p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1263
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1265
    return-void
.end method

.method public onPictureSaved(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1251
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils;->setFileDescription(Ljava/io/File;Ljava/lang/String;)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->b:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stored in gallery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->d:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->c:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1257
    return-void
.end method
