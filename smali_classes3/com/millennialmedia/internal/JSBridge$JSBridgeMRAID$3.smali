.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->resize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

.field final synthetic b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->a:Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->e:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->e:Ljava/lang/String;

    const-string v1, "hidden"

    .line 645
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->e:Ljava/lang/String;

    const-string v1, "loading"

    .line 646
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resize in current state<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v2, v2, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    iget-object v2, v2, Lcom/millennialmedia/internal/JSBridge;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_1
    :goto_0
    return-void

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->a:Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    const-string v1, "Unable to resize"

    const-string v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
