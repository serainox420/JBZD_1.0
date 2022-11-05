.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->storePicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/MMWebView;

.field final synthetic b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->a:Lcom/millennialmedia/internal/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    const-string v1, "storePicture"

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/JSBridge;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public onPictureSaved(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->a:Lcom/millennialmedia/internal/MMWebView;

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

    .line 776
    return-void
.end method
