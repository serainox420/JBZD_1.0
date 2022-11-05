.class Lcom/smaato/soma/bannerutilities/b$6;
.super Lcom/smaato/soma/l;
.source "BannerAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/b;->b(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
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
.field final synthetic a:Lcom/smaato/soma/bannerutilities/a;

.field final synthetic b:Lcom/smaato/soma/j;

.field final synthetic c:Lcom/smaato/soma/bannerutilities/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/b$6;->c:Lcom/smaato/soma/bannerutilities/b;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/b$6;->a:Lcom/smaato/soma/bannerutilities/a;

    iput-object p3, p0, Lcom/smaato/soma/bannerutilities/b$6;->b:Lcom/smaato/soma/j;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$6;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$6;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/j;->addView(Landroid/view/View;)V

    .line 243
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 244
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$6;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    const-string v1, "default"

    .line 245
    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/a;->a(Ljava/lang/String;)V

    .line 246
    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/b$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
