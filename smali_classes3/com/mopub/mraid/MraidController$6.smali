.class Lcom/mopub/mraid/MraidController$6;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidController;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v2}, Lcom/mopub/mraid/MraidController;->d(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v2}, Lcom/mopub/mraid/MraidController;->e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->d(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->d(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->c(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v4}, Lcom/mopub/mraid/MraidController;->e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v4}, Lcom/mopub/mraid/MraidController;->d(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v5}, Lcom/mopub/mraid/MraidController;->f(Lcom/mopub/mraid/MraidController;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mraid/MraidBridge;->a(ZZZZZ)V

    .line 492
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 493
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->g(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/PlacementType;)V

    .line 494
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Z)V

    .line 495
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$6;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->b()V

    .line 496
    return-void
.end method
