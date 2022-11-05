.class Lcom/adcolony/sdk/ca$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 828
    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 830
    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->h(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->h(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$a;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->h(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$a;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    .line 831
    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 833
    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->h(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$a;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 834
    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "animate exit"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 841
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->i(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->i(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$d;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->i(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$d;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->i(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$d;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ca$c;->a:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->h:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    goto :goto_0
.end method
