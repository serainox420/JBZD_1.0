.class Lcom/adcolony/sdk/ab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ab;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:Lcom/adcolony/sdk/ab;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ab;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adcolony/sdk/ab$1;->b:Lcom/adcolony/sdk/ab;

    iput-object p2, p0, Lcom/adcolony/sdk/ab$1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 88
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v4, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    .line 89
    const-string v0, "os_name"

    const-string v1, "android"

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    new-instance v0, Lcom/adcolony/sdk/ADCVMModule;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v5, v5, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v5, v5, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    const-string v5, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/adcolony/sdk/ab$1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/ADCVMModule;-><init>(Landroid/app/Activity;ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/concurrent/ExecutorService;)V

    .line 97
    iget-object v1, p0, Lcom/adcolony/sdk/ab$1;->b:Lcom/adcolony/sdk/ab;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ab;->a(Lcom/adcolony/sdk/ad;)Lcom/adcolony/sdk/ad;

    .line 98
    return-void
.end method
