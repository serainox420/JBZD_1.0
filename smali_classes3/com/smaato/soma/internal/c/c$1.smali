.class Lcom/smaato/soma/internal/c/c$1;
.super Lcom/smaato/soma/l;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/c/c;->a(Landroid/view/View;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/view/View;

.field final synthetic c:F

.field final synthetic d:Lcom/smaato/soma/internal/c/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/c/c;FLandroid/view/View;F)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/smaato/soma/internal/c/c$1;->d:Lcom/smaato/soma/internal/c/c;

    iput p2, p0, Lcom/smaato/soma/internal/c/c$1;->a:F

    iput-object p3, p0, Lcom/smaato/soma/internal/c/c$1;->b:Landroid/view/View;

    iput p4, p0, Lcom/smaato/soma/internal/c/c$1;->c:F

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    iget v0, p0, Lcom/smaato/soma/internal/c/c$1;->a:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/smaato/soma/internal/c/c$1;->a:F

    iget-object v1, p0, Lcom/smaato/soma/internal/c/c$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/smaato/soma/internal/c/c$1;->c:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/smaato/soma/internal/c/c$1;->c:F

    iget-object v1, p0, Lcom/smaato/soma/internal/c/c$1;->b:Landroid/view/View;

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 82
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/smaato/soma/internal/c/c$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
