.class Lcom/loopme/AdController$3;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/loopme/ViewController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdController;->initViewControllerCallback()Lcom/loopme/ViewController$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdController;


# direct methods
.method constructor <init>(Lcom/loopme/AdController;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/loopme/AdController$3;->this$0:Lcom/loopme/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/loopme/AdController$3;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$400(Lcom/loopme/AdController;Landroid/graphics/SurfaceTexture;)V

    .line 149
    return-void
.end method

.method public onSurfaceTextureDestroyed()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/loopme/AdController$3;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$500(Lcom/loopme/AdController;)Z

    .line 154
    return-void
.end method
