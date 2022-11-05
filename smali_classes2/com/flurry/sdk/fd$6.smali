.class final Lcom/flurry/sdk/fd$6;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/sdk/fd;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fd;Landroid/content/Context;Ljava/util/List;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 395
    iput-object p1, p0, Lcom/flurry/sdk/fd$6;->b:Lcom/flurry/sdk/fd;

    iput-object p4, p0, Lcom/flurry/sdk/fd$6;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x65

    const/16 v7, 0x1e

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 398
    if-nez p2, :cond_0

    .line 399
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flurry/sdk/fd$6;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 400
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 401
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 402
    invoke-static {}, Lcom/flurry/sdk/fd;->a()I

    move-result v0

    invoke-static {}, Lcom/flurry/sdk/fd;->a()I

    move-result v1

    invoke-static {}, Lcom/flurry/sdk/fd;->a()I

    move-result v2

    invoke-static {}, Lcom/flurry/sdk/fd;->a()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 403
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 404
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/fd$6;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 408
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v7}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v2

    invoke-static {v7}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    invoke-static {}, Lcom/flurry/sdk/fd;->b()I

    move-result v2

    invoke-static {}, Lcom/flurry/sdk/fd;->c()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 410
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flurry/sdk/fd$6;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 413
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 414
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 416
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 417
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 418
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    :cond_0
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 423
    invoke-static {}, Lcom/flurry/sdk/en;->a()Lcom/flurry/sdk/en;

    move-result-object v2

    iget-object v1, p0, Lcom/flurry/sdk/fd$6;->b:Lcom/flurry/sdk/fd;

    invoke-static {v1}, Lcom/flurry/sdk/fd;->h(Lcom/flurry/sdk/fd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/en;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 425
    const/16 v0, 0x66

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 426
    iget-object v1, p0, Lcom/flurry/sdk/fd$6;->b:Lcom/flurry/sdk/fd;

    invoke-static {v1}, Lcom/flurry/sdk/fd;->h(Lcom/flurry/sdk/fd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    return-object p2
.end method
