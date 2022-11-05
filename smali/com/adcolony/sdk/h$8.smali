.class Lcom/adcolony/sdk/h$8;
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
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:I

.field final synthetic c:Ljava/util/concurrent/ExecutorService;

.field final synthetic d:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/z;ILjava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/adcolony/sdk/h$8;->d:Lcom/adcolony/sdk/h;

    iput-object p2, p0, Lcom/adcolony/sdk/h$8;->a:Lcom/adcolony/sdk/z;

    iput p3, p0, Lcom/adcolony/sdk/h$8;->b:I

    iput-object p4, p0, Lcom/adcolony/sdk/h$8;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 713
    iget-object v0, p0, Lcom/adcolony/sdk/h$8;->a:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "info"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 714
    iget v0, p0, Lcom/adcolony/sdk/h$8;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-eqz v0, :cond_0

    .line 716
    const-string v0, "options"

    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v1, v1, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 719
    :cond_0
    new-instance v0, Lcom/adcolony/sdk/ADCVMModule;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    iget v2, p0, Lcom/adcolony/sdk/h$8;->b:I

    iget-object v3, p0, Lcom/adcolony/sdk/h$8;->a:Lcom/adcolony/sdk/z;

    iget-object v3, v3, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "filepath"

    .line 722
    invoke-static {v3, v5}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/adcolony/sdk/h$8;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/ADCVMModule;-><init>(Landroid/app/Activity;ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/concurrent/ExecutorService;)V

    .line 726
    iget-object v1, p0, Lcom/adcolony/sdk/h$8;->d:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ab;->a(Lcom/adcolony/sdk/ad;)Lcom/adcolony/sdk/ad;

    .line 727
    return-void
.end method
