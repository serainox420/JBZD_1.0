.class Lcom/smaato/soma/internal/e/a$b$a$1;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a$b$a;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
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

.field final synthetic b:Lcom/smaato/soma/internal/e/a$b$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a$b$a;F)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    iput p2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->a:F

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 441
    .line 443
    :try_start_0
    iget v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->a:F

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    iget-boolean v2, v2, Lcom/smaato/soma/internal/e/a$b$a;->b:Z

    if-nez v2, :cond_1

    .line 444
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$b$a;->c:Lcom/smaato/soma/internal/e/a$b;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/e/a$b;->a()V

    .line 445
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$b$a;->c:Lcom/smaato/soma/internal/e/a$b;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$b;->c:Lcom/smaato/soma/internal/e/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;Z)Z

    .line 446
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/smaato/soma/internal/e/a$b$a;->b:Z

    .line 447
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/smaato/soma/internal/e/a$b$a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 448
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->a:F

    const/high16 v3, -0x3db80000    # -50.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    iget-boolean v2, v2, Lcom/smaato/soma/internal/e/a$b$a;->a:Z

    if-nez v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$b$a;->c:Lcom/smaato/soma/internal/e/a$b;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/e/a$b;->b()V

    .line 450
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$b$a;->c:Lcom/smaato/soma/internal/e/a$b;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$b;->c:Lcom/smaato/soma/internal/e/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;Z)Z

    .line 451
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/smaato/soma/internal/e/a$b$a;->b:Z

    .line 452
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$b$a$1;->b:Lcom/smaato/soma/internal/e/a$b$a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/smaato/soma/internal/e/a$b$a;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

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
    .line 437
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$b$a$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
