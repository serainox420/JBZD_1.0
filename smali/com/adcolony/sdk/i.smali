.class Lcom/adcolony/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "CustomMessage.controller_send"

    invoke-static {v0, p0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    .line 16
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 20
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v3, Lcom/adcolony/sdk/i$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/adcolony/sdk/i$1;-><init>(Lcom/adcolony/sdk/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    :cond_0
    return-void
.end method
