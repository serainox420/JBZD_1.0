.class Lcom/smaato/soma/internal/e/a$2;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a;->f()V
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
.field final synthetic a:Lcom/smaato/soma/internal/e/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 169
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-static {v2}, Lcom/smaato/soma/internal/e/a;->d(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/internal/e/a$a;

    move-result-object v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    new-instance v3, Lcom/smaato/soma/internal/e/a$a;

    iget-object v4, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-direct {v3, v4, v0}, Lcom/smaato/soma/internal/e/a$a;-><init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;Lcom/smaato/soma/internal/e/a$a;)Lcom/smaato/soma/internal/e/a$a;

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-static {v2}, Lcom/smaato/soma/internal/e/a;->d(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/internal/e/a$a;

    move-result-object v2

    const/16 v3, 0x2b1

    invoke-virtual {v2, v3}, Lcom/smaato/soma/internal/e/a$a;->setId(I)V

    .line 174
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/e/a;->d(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/internal/e/a$a;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->d(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/internal/e/a$a;

    move-result-object v0

    new-instance v1, Lcom/smaato/soma/internal/e/a$2$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/e/a$2$1;-><init>(Lcom/smaato/soma/internal/e/a$2;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/e/a$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0, v2}, Lcom/smaato/soma/internal/e/a;->addView(Landroid/view/View;)V

    .line 187
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->a(Z)Z

    .line 188
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
    .line 164
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
