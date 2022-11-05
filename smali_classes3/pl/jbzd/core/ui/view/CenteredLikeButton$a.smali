.class Lpl/jbzd/core/ui/view/CenteredLikeButton$a;
.super Ljava/lang/Object;
.source "CenteredLikeButton.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$CreationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/view/CenteredLikeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

.field private b:Z


# direct methods
.method private constructor <init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lpl/jbzd/core/ui/view/CenteredLikeButton$1;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;-><init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;->b:Z

    .line 295
    return-void
.end method

.method public onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;->b:Z

    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 305
    :cond_0
    if-eqz p1, :cond_1

    .line 315
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-static {v0, p1}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lcom/facebook/share/internal/LikeActionController;)V

    .line 316
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    invoke-static {v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V

    .line 327
    :cond_1
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;->a:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lpl/jbzd/core/ui/view/CenteredLikeButton$a;)Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    goto :goto_0
.end method
