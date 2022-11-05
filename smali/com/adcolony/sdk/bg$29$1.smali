.class Lcom/adcolony/sdk/bg$29$1;
.super Lcom/adcolony/sdk/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg$29;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg$29;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg$29;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/adcolony/sdk/bg$29$1;->a:Lcom/adcolony/sdk/bg$29;

    invoke-direct {p0}, Lcom/adcolony/sdk/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/bn$a;)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29$1;->a:Lcom/adcolony/sdk/bg$29;

    iget-object v1, v0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/adcolony/sdk/bg;->C:Z

    .line 499
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29$1;->a:Lcom/adcolony/sdk/bg$29;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$29$1;->a:Lcom/adcolony/sdk/bg$29;

    iget-object v1, v1, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-boolean v1, v1, Lcom/adcolony/sdk/bg;->C:Z

    invoke-virtual {v0, v1, p1}, Lcom/adcolony/sdk/bg$29;->a(ZLcom/adcolony/sdk/bn$a;)V

    .line 500
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
