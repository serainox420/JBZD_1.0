.class final Lcom/flurry/sdk/gr$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 246
    iput-object p1, p0, Lcom/flurry/sdk/gr$4;->a:Lcom/flurry/sdk/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flurry/sdk/gr$4;->a:Lcom/flurry/sdk/gr;

    invoke-static {v0}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/gr;)Lcom/flurry/sdk/gv$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/gr$4;->a:Lcom/flurry/sdk/gr;

    invoke-static {v0}, Lcom/flurry/sdk/gr;->b(Lcom/flurry/sdk/gr;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/flurry/sdk/gr$4;->a:Lcom/flurry/sdk/gr;

    invoke-static {v0}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/gr;)Lcom/flurry/sdk/gv$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/gv$b;->p()V

    .line 252
    :cond_0
    return-void
.end method
