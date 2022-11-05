.class final Lcom/flurry/sdk/gr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gr;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/flurry/sdk/gr$1;->a:Lcom/flurry/sdk/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/flurry/sdk/gr$1;->a:Lcom/flurry/sdk/gr;

    invoke-static {v1}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/gr;)Lcom/flurry/sdk/gv$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gr$1;->a:Lcom/flurry/sdk/gr;

    .line 1364
    iget-object v1, v1, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isShown()Z

    move-result v1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/flurry/sdk/gr$1;->a:Lcom/flurry/sdk/gr;

    invoke-static {v1}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/gr;)Lcom/flurry/sdk/gv$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/flurry/sdk/gv$b;->n()V

    .line 147
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
