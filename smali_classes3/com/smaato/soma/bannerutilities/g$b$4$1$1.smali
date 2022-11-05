.class Lcom/smaato/soma/bannerutilities/g$b$4$1$1;
.super Lcom/smaato/soma/l;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$b$4$1;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/KeyEvent;

.field final synthetic d:Lcom/smaato/soma/bannerutilities/g$b$4$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$b$4$1;Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->d:Lcom/smaato/soma/bannerutilities/g$b$4$1;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->b:I

    iput-object p4, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->c:Landroid/view/KeyEvent;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 407
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 408
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->c:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 412
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "VideoTest"

    const-string v2, "Back key pressed"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 416
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->d:Lcom/smaato/soma/bannerutilities/g$b$4$1;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/g$b$4$1;->a:Lcom/smaato/soma/bannerutilities/g$b$4;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$b;->a()V

    .line 417
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    .line 404
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
