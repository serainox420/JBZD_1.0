.class final Lcom/flurry/sdk/fd$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 368
    iput-object p1, p0, Lcom/flurry/sdk/fd$5;->b:Lcom/flurry/sdk/fd;

    iput-object p2, p0, Lcom/flurry/sdk/fd$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/fd$5;->b:Lcom/flurry/sdk/fd;

    invoke-static {v0}, Lcom/flurry/sdk/fd;->g(Lcom/flurry/sdk/fd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 372
    iget-object v0, p0, Lcom/flurry/sdk/fd$5;->b:Lcom/flurry/sdk/fd;

    iget-object v1, p0, Lcom/flurry/sdk/fd$5;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/fd$5;->b:Lcom/flurry/sdk/fd;

    invoke-static {v2}, Lcom/flurry/sdk/fd;->g(Lcom/flurry/sdk/fd;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->b(Lcom/flurry/sdk/fd;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 374
    return-void
.end method
