.class Lcom/openx/model/video/VideoAdManager$1;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->makeFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$1;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 448
    check-cast p1, Lcom/openx/model/video/AdVideoDialog;

    invoke-virtual {p1}, Lcom/openx/model/video/AdVideoDialog;->removeView()V

    .line 449
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$1;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->makeCollapsedScreen()V

    .line 451
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
