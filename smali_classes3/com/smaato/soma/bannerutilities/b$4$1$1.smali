.class Lcom/smaato/soma/bannerutilities/b$4$1$1;
.super Lcom/smaato/soma/l;
.source "BannerAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/b$4$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/smaato/soma/bannerutilities/b$4$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/b$4$1;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/b$4$1$1;->a:Lcom/smaato/soma/bannerutilities/b$4$1;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4$1$1;->a:Lcom/smaato/soma/bannerutilities/b$4$1;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/b$4$1;->a:Lcom/smaato/soma/bannerutilities/b$4;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/b$4;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/b$4$1$1;->a:Lcom/smaato/soma/bannerutilities/b$4$1;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/b$4$1;->a:Lcom/smaato/soma/bannerutilities/b$4;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/b$4;->b:Lcom/smaato/soma/j;

    invoke-virtual {v1}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4$1$1;->a:Lcom/smaato/soma/bannerutilities/b$4$1;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/b$4$1;->a:Lcom/smaato/soma/bannerutilities/b$4;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/b$4;->d:Lcom/smaato/soma/bannerutilities/b;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/b$4$1$1;->a:Lcom/smaato/soma/bannerutilities/b$4$1;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/b$4$1;->a:Lcom/smaato/soma/bannerutilities/b$4;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/b$4;->c:Lcom/smaato/soma/bannerutilities/a;

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/b$4$1$1;->a:Lcom/smaato/soma/bannerutilities/b$4$1;

    iget-object v2, v2, Lcom/smaato/soma/bannerutilities/b$4$1;->a:Lcom/smaato/soma/bannerutilities/b$4;

    iget-object v2, v2, Lcom/smaato/soma/bannerutilities/b$4;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/bannerutilities/b;->b(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/b$4$1$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
