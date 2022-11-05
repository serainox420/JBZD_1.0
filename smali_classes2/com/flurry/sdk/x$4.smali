.class final Lcom/flurry/sdk/x$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/x;->a(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/flurry/sdk/x;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/x;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/flurry/sdk/x$4;->b:Lcom/flurry/sdk/x;

    iput-object p2, p0, Lcom/flurry/sdk/x$4;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 516
    iget-object v0, p0, Lcom/flurry/sdk/x$4;->b:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->a(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 518
    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/flurry/sdk/x;->A()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "On item clicked"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/flurry/sdk/x$4;->b:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->f(Lcom/flurry/sdk/x;)V

    .line 522
    iget-object v0, p0, Lcom/flurry/sdk/x$4;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/flurry/sdk/n$a;->b:Lcom/flurry/sdk/n$a;

    .line 1023
    iget v1, v1, Lcom/flurry/sdk/n$a;->c:I

    .line 522
    if-ne v0, v1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/flurry/sdk/x$4;->b:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->j(Lcom/flurry/sdk/x;)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/x$4;->b:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->g(Lcom/flurry/sdk/x;)V

    goto :goto_0
.end method
