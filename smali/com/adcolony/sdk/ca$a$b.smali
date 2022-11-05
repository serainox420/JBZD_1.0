.class Lcom/adcolony/sdk/ca$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 808
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show paused was executed."

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 809
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 810
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    .line 811
    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cn;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->e()V

    .line 821
    :cond_1
    :goto_0
    return-void

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adcolony/sdk/cm;->d:J

    .line 817
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$c;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ca$a$b;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/cm;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    goto :goto_0
.end method
