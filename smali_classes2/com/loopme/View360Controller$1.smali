.class Lcom/loopme/View360Controller$1;
.super Ljava/lang/Object;
.source "View360Controller.java"

# interfaces
.implements Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/View360Controller;->initVRLibrary(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/View360Controller;


# direct methods
.method constructor <init>(Lcom/loopme/View360Controller;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/loopme/View360Controller$1;->this$0:Lcom/loopme/View360Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/loopme/View360Controller$1;->this$0:Lcom/loopme/View360Controller;

    invoke-static {v0}, Lcom/loopme/View360Controller;->access$000(Lcom/loopme/View360Controller;)Lcom/loopme/View360Controller$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/loopme/View360Controller$1;->this$0:Lcom/loopme/View360Controller;

    invoke-static {v0}, Lcom/loopme/View360Controller;->access$000(Lcom/loopme/View360Controller;)Lcom/loopme/View360Controller$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/loopme/View360Controller$Callback;->onSurfaceReady(Landroid/view/Surface;)V

    .line 74
    :cond_0
    return-void
.end method
