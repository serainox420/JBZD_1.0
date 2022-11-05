.class final Lcom/flurry/sdk/fb$5;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/flurry/sdk/fb$5;->c:Lcom/flurry/sdk/fb;

    iput-object p2, p0, Lcom/flurry/sdk/fb$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/flurry/sdk/fb$5;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/fb$5;->c:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;)V

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/fb$5;->c:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->e(Lcom/flurry/sdk/fb;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Landroid/os/Bundle;)Lcom/flurry/sdk/ey;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    new-instance v1, Lcom/flurry/sdk/fd;

    iget-object v2, p0, Lcom/flurry/sdk/fb$5;->a:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/fd;-><init>(Lcom/flurry/sdk/ey;Ljava/util/List;)V

    .line 284
    iget-object v0, p0, Lcom/flurry/sdk/fb$5;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/fb$5;->c:Lcom/flurry/sdk/fb;

    invoke-static {v2}, Lcom/flurry/sdk/fb;->c(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/ho;

    move-result-object v2

    .line 1089
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/flurry/sdk/fd;->a:Landroid/widget/RelativeLayout;

    .line 1090
    iget-object v3, v1, Lcom/flurry/sdk/fd;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Lcom/flurry/sdk/fd;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1093
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/flurry/sdk/fd;->b:Landroid/widget/RelativeLayout;

    .line 1094
    iget-object v3, v1, Lcom/flurry/sdk/fd;->b:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1096
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1097
    iget-object v4, v1, Lcom/flurry/sdk/fd;->b:Landroid/widget/RelativeLayout;

    iget-object v5, v1, Lcom/flurry/sdk/fd;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    iget-object v3, v1, Lcom/flurry/sdk/fd;->b:Landroid/widget/RelativeLayout;

    const-string v4, "#90000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1100
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    .line 1101
    iget-object v0, v1, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1102
    iget-object v0, v1, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1103
    iget-object v0, v1, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    iget-object v3, v1, Lcom/flurry/sdk/fd;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1104
    iget-object v0, v1, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    new-instance v3, Lcom/flurry/sdk/fd$1;

    invoke-direct {v3, v1, v2}, Lcom/flurry/sdk/fd$1;-><init>(Lcom/flurry/sdk/fd;Lcom/flurry/sdk/ho;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1111
    iget-object v0, v1, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    iget-object v0, v1, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/fb$5;->c:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->d(Lcom/flurry/sdk/fb;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    goto :goto_0
.end method
