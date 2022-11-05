.class final Lcom/adcolony/sdk/AdColony$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColony;->setAppOptions(Lcom/adcolony/sdk/AdColonyAppOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyAppOptions;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyAppOptions;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/adcolony/sdk/AdColony$3;->a:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 396
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->a()Z

    .line 398
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$3;->a:Lcom/adcolony/sdk/AdColonyAppOptions;

    iput-object v1, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 400
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 401
    const-string v1, "options"

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$3;->a:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 402
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "Options.set_options"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 403
    return-void
.end method
