.class Lpl/jbzd/core/ui/view/CenteredLikeButton$b;
.super Landroid/content/BroadcastReceiver;
.source "CenteredLikeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/view/CenteredLikeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/core/ui/view/CenteredLikeButton;


# direct methods
.method private constructor <init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lpl/jbzd/core/ui/view/CenteredLikeButton$1;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;-><init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_0

    .line 234
    const-string v3, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    .line 237
    invoke-static {v3}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b(Lpl/jbzd/core/ui/view/CenteredLikeButton;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 259
    :cond_1
    :goto_1
    return-void

    .line 237
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_3
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-static {v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V

    goto :goto_1

    .line 253
    :cond_4
    const-string v0, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-static {v1}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b(Lpl/jbzd/core/ui/view/CenteredLikeButton;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-static {v2}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d(Lpl/jbzd/core/ui/view/CenteredLikeButton;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Lpl/jbzd/core/ui/view/CenteredLikeButton;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 257
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-static {v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V

    goto :goto_1
.end method
