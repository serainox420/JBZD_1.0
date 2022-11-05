.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->setOrientationProperties(Ljava/lang/String;)V
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
    .line 724
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/JSBridge;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->e:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget v1, v1, Lcom/millennialmedia/internal/JSBridge;->n:I

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->setOrientation(I)V

    .line 731
    :cond_1
    return-void
.end method
