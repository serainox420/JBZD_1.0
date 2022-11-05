.class Lcom/adcolony/sdk/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/adcolony/sdk/h$5;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/adcolony/sdk/h$5;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "version"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/j;->g:Ljava/lang/String;

    .line 431
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    iget-object v1, p0, Lcom/adcolony/sdk/h$5;->a:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-object v1, v1, Lcom/adcolony/sdk/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ag;->a(Ljava/lang/String;)V

    .line 435
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/h$5;->a:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-object v2, v2, Lcom/adcolony/sdk/j;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 436
    return-void
.end method
