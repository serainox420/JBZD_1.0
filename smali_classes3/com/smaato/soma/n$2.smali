.class Lcom/smaato/soma/n$2;
.super Lcom/smaato/soma/l;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/n;->c()V
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
.field final synthetic a:Lcom/smaato/soma/n;


# direct methods
.method constructor <init>(Lcom/smaato/soma/n;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/smaato/soma/n$2;->a:Lcom/smaato/soma/n;

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
    .line 107
    iget-object v0, p0, Lcom/smaato/soma/n$2;->a:Lcom/smaato/soma/n;

    iget-object v0, v0, Lcom/smaato/soma/n;->c:Lcom/smaato/soma/r;

    check-cast v0, Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/smaato/soma/n$2;->a:Lcom/smaato/soma/n;

    iget-object v0, v0, Lcom/smaato/soma/n;->c:Lcom/smaato/soma/r;

    check-cast v0, Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/smaato/soma/n$2;->a:Lcom/smaato/soma/n;

    iget-object v1, v1, Lcom/smaato/soma/n;->c:Lcom/smaato/soma/r;

    check-cast v1, Lcom/smaato/soma/j;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    :cond_0
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
    .line 104
    invoke-virtual {p0}, Lcom/smaato/soma/n$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
