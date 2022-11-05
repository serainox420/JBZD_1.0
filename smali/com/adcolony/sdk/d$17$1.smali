.class Lcom/adcolony/sdk/d$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d$17;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:Lcom/adcolony/sdk/d$17;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d$17;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/adcolony/sdk/d$17$1;->b:Lcom/adcolony/sdk/d$17;

    iput-object p2, p0, Lcom/adcolony/sdk/d$17$1;->a:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adcolony/sdk/d$17$1;->b:Lcom/adcolony/sdk/d$17;

    iget-object v0, v0, Lcom/adcolony/sdk/d$17;->a:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/d$17$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    .line 426
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/adcolony/sdk/ax;->a()Z

    .line 429
    iget-object v0, p0, Lcom/adcolony/sdk/d$17$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, p0, Lcom/adcolony/sdk/d$17$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 431
    :cond_0
    return-void
.end method
