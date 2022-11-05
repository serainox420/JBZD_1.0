.class Lcom/adcolony/sdk/h$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->d()V
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
    .line 569
    iput-object p1, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 572
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 573
    const-string v1, "url"

    iget-object v2, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->b(Lcom/adcolony/sdk/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 574
    const-string v1, "content_type"

    const-string v2, "application/json"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 575
    const-string v1, "content"

    iget-object v2, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-object v3, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    iget-object v3, v3, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/j;->a(Lcom/adcolony/sdk/j;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 577
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    iget-object v3, v3, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-object v4, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    iget-object v4, v4, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/j;->a(Lcom/adcolony/sdk/j;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 579
    sget-object v1, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v2, "Saving Launch to "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    const-string v2, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 581
    new-instance v1, Lcom/adcolony/sdk/ADCDownload;

    new-instance v2, Lcom/adcolony/sdk/z;

    const-string v3, "WebServices.post"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/adcolony/sdk/h$6;->a:Lcom/adcolony/sdk/h;

    invoke-direct {v1, v2, v0}, Lcom/adcolony/sdk/ADCDownload;-><init>(Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/ADCDownload$Listener;)V

    .line 582
    return-void
.end method
