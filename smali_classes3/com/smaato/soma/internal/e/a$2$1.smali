.class Lcom/smaato/soma/internal/e/a$2$1;
.super Ljava/lang/Object;
.source "CustomWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a$2;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/e/a$2;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a$2;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$2$1;->a:Lcom/smaato/soma/internal/e/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$2$1;->a:Lcom/smaato/soma/internal/e/a$2;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$2$1;->a:Lcom/smaato/soma/internal/e/a$2;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$2;->a:Lcom/smaato/soma/internal/e/a;

    invoke-static {v2}, Lcom/smaato/soma/internal/e/a;->e(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/e/a;->a(Landroid/content/Context;Lcom/smaato/soma/p;)V

    .line 184
    return-void
.end method
