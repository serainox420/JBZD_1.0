.class Lcom/smaato/soma/bannerutilities/b$4;
.super Lcom/smaato/soma/l;
.source "BannerAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
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
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/smaato/soma/j;

.field final synthetic c:Lcom/smaato/soma/bannerutilities/a;

.field final synthetic d:Lcom/smaato/soma/bannerutilities/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/b;Landroid/webkit/WebView;Lcom/smaato/soma/j;Lcom/smaato/soma/bannerutilities/a;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/b$4;->d:Lcom/smaato/soma/bannerutilities/b;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/b$4;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/smaato/soma/bannerutilities/b$4;->b:Lcom/smaato/soma/j;

    iput-object p4, p0, Lcom/smaato/soma/bannerutilities/b$4;->c:Lcom/smaato/soma/bannerutilities/a;

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
    .line 178
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4;->d:Lcom/smaato/soma/bannerutilities/b;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4;->d:Lcom/smaato/soma/bannerutilities/b;

    new-instance v1, Lcom/smaato/soma/b/b;

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/b$4;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smaato/soma/b/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/b/b;)Lcom/smaato/soma/b/b;

    .line 180
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4;->d:Lcom/smaato/soma/bannerutilities/b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/b;)Lcom/smaato/soma/b/b;

    move-result-object v0

    new-instance v1, Lcom/smaato/soma/bannerutilities/b$4$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/bannerutilities/b$4$1;-><init>(Lcom/smaato/soma/bannerutilities/b$4;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4;->c:Lcom/smaato/soma/bannerutilities/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4;->c:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4;->c:Lcom/smaato/soma/bannerutilities/a;

    instance-of v0, v0, Lcom/smaato/soma/bannerutilities/d;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$4;->c:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    const-string v1, "expanded"

    .line 200
    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/a;->a(Ljava/lang/String;)V

    .line 203
    :cond_1
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
    .line 175
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/b$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
