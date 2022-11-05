.class Lcom/adcolony/sdk/bg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 286
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetActivity called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$1;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$1;->a:Landroid/app/Activity;

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->ad:Landroid/app/Activity;

    .line 295
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ae:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->ae:Landroid/content/Context;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->al:Lcom/adcolony/sdk/bd;

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    new-instance v1, Lcom/adcolony/sdk/bd;

    invoke-direct {v1}, Lcom/adcolony/sdk/bd;-><init>()V

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->al:Lcom/adcolony/sdk/bd;

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-boolean v0, v0, Lcom/adcolony/sdk/bg;->E:Z

    if-nez v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->al:Lcom/adcolony/sdk/bd;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 307
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iput-boolean v3, v0, Lcom/adcolony/sdk/bg;->E:Z

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    new-instance v1, Lcom/adcolony/sdk/bo;

    iget-object v2, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/bo;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    .line 314
    :cond_4
    new-instance v0, Lcom/adcolony/sdk/bg$1$1;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/bg$1$1;-><init>(Lcom/adcolony/sdk/bg$1;Lcom/adcolony/sdk/bq;)V

    .line 319
    iget-object v0, p0, Lcom/adcolony/sdk/bg$1;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->j:Lcom/adcolony/sdk/cd;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cd;->a()V

    goto :goto_0
.end method
