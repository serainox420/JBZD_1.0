.class Lcom/adcolony/sdk/h$14;
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
    .line 313
    iput-object p1, p0, Lcom/adcolony/sdk/h$14;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 317
    iget-object v0, p0, Lcom/adcolony/sdk/h$14;->a:Lcom/adcolony/sdk/h;

    iput-boolean v4, v0, Lcom/adcolony/sdk/h;->G:Z

    .line 318
    iget-object v0, p0, Lcom/adcolony/sdk/h$14;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 321
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 322
    const-string v2, "app_version"

    invoke-static {}, Lcom/adcolony/sdk/au;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    const-string v2, "app_bundle_info"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 324
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdColony.on_update"

    invoke-direct {v1, v2, v4, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 325
    iget-object v0, p0, Lcom/adcolony/sdk/h$14;->a:Lcom/adcolony/sdk/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/h;Z)Z

    .line 328
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "app_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    sget-object v1, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ag;->b(Ljava/lang/String;)V

    .line 333
    :cond_1
    return-void
.end method
