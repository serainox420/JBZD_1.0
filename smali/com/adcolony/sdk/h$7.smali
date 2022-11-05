.class Lcom/adcolony/sdk/h$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->c(Lcom/adcolony/sdk/z;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/adcolony/sdk/z;

.field final synthetic c:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;ZLcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/adcolony/sdk/h$7;->c:Lcom/adcolony/sdk/h;

    iput-boolean p2, p0, Lcom/adcolony/sdk/h$7;->a:Z

    iput-object p3, p0, Lcom/adcolony/sdk/h$7;->b:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 690
    new-instance v1, Lcom/adcolony/sdk/aw;

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/adcolony/sdk/h$7;->c:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    iget v3, v2, Lcom/adcolony/sdk/ab;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/adcolony/sdk/ab;->c:I

    iget-boolean v2, p0, Lcom/adcolony/sdk/h$7;->a:Z

    invoke-direct {v1, v0, v3, v2}, Lcom/adcolony/sdk/aw;-><init>(Landroid/content/Context;IZ)V

    move-object v0, v1

    .line 691
    check-cast v0, Lcom/adcolony/sdk/aw;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adcolony/sdk/h$7;->b:Lcom/adcolony/sdk/z;

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/aw;->a(ZLcom/adcolony/sdk/z;)V

    .line 692
    iget-object v0, p0, Lcom/adcolony/sdk/h$7;->c:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->A:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/adcolony/sdk/ad;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Lcom/adcolony/sdk/aw;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    return-void
.end method
