.class final Lcom/flurry/sdk/fd$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/sdk/fd;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fd;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    iput-object p2, p0, Lcom/flurry/sdk/fd$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    invoke-static {v0}, Lcom/flurry/sdk/fd;->g(Lcom/flurry/sdk/fd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 444
    iget-object v0, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    iget-object v1, p0, Lcom/flurry/sdk/fd$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    invoke-static {v2}, Lcom/flurry/sdk/fd;->g(Lcom/flurry/sdk/fd;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->b(Lcom/flurry/sdk/fd;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 445
    iget-object v0, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    invoke-static {v0}, Lcom/flurry/sdk/fd;->f(Lcom/flurry/sdk/fd;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    invoke-static {v0}, Lcom/flurry/sdk/fd;->h(Lcom/flurry/sdk/fd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-static {}, Lcom/flurry/sdk/en;->a()Lcom/flurry/sdk/en;

    move-result-object v1

    iget-object v0, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    invoke-static {v0}, Lcom/flurry/sdk/fd;->h(Lcom/flurry/sdk/fd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/fd$7;->b:Lcom/flurry/sdk/fd;

    invoke-static {v2}, Lcom/flurry/sdk/fd;->i(Lcom/flurry/sdk/fd;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/en;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 448
    return-void
.end method
