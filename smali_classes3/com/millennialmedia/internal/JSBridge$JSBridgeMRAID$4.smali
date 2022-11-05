.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->useCustomClose(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v1

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/JSBridge;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->showCloseIndicator(Z)V

    .line 677
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
