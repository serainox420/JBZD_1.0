.class Lcom/smaato/soma/n$a$a$1;
.super Lcom/smaato/soma/l;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/n$a$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/smaato/soma/n$a$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/n$a$a;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/smaato/soma/n$a$a$1;->b:Lcom/smaato/soma/n$a$a;

    iput-object p2, p0, Lcom/smaato/soma/n$a$a$1;->a:Landroid/os/Message;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-object v0, p0, Lcom/smaato/soma/n$a$a$1;->b:Lcom/smaato/soma/n$a$a;

    invoke-virtual {v0}, Lcom/smaato/soma/n$a$a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 313
    if-nez v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v3

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/smaato/soma/n$a$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 318
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 321
    invoke-virtual {v0}, Lcom/smaato/soma/j;->clearAnimation()V

    .line 322
    invoke-virtual {v0}, Lcom/smaato/soma/j;->clearFocus()V

    .line 323
    invoke-virtual {v0}, Lcom/smaato/soma/j;->destroyDrawingCache()V

    .line 325
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->b()Z

    .line 329
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/n$a$a$1;->b:Lcom/smaato/soma/n$a$a;

    iget-object v2, v2, Lcom/smaato/soma/n$a$a;->a:Lcom/smaato/soma/n$a;

    .line 330
    invoke-virtual {v2}, Lcom/smaato/soma/n$a;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    .line 329
    invoke-virtual {v1, v2, v0}, Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    .line 335
    iget-object v0, p0, Lcom/smaato/soma/n$a$a$1;->b:Lcom/smaato/soma/n$a$a;

    iget-object v0, v0, Lcom/smaato/soma/n$a$a;->a:Lcom/smaato/soma/n$a;

    invoke-virtual {v0}, Lcom/smaato/soma/n$a;->h()V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/n$a$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_3

    .line 338
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z

    goto :goto_0

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/smaato/soma/n$a$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/smaato/soma/n$a$a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
