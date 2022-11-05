.class Lcom/smaato/soma/s$9$1$1;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s$9$1;->onAnimationEnd(Landroid/animation/Animator;)V
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
.field final synthetic a:Lcom/smaato/soma/s$9$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s$9$1;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/smaato/soma/s$9$1$1;->a:Lcom/smaato/soma/s$9$1;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 402
    iget-object v0, p0, Lcom/smaato/soma/s$9$1$1;->a:Lcom/smaato/soma/s$9$1;

    iget-object v0, v0, Lcom/smaato/soma/s$9$1;->a:Lcom/smaato/soma/s$9;

    iget-object v0, v0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/s;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/smaato/soma/s$9$1$1;->a:Lcom/smaato/soma/s$9$1;

    iget-object v0, v0, Lcom/smaato/soma/s$9$1;->a:Lcom/smaato/soma/s$9;

    iget-object v0, v0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/c;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/smaato/soma/s$9$1$1;->a:Lcom/smaato/soma/s$9$1;

    iget-object v0, v0, Lcom/smaato/soma/s$9$1;->a:Lcom/smaato/soma/s$9;

    iget-object v0, v0, Lcom/smaato/soma/s$9;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->e(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/b;->setVisibility(I)V

    .line 405
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
    .line 399
    invoke-virtual {p0}, Lcom/smaato/soma/s$9$1$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
