.class Lcom/adcolony/sdk/aw$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/aw;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/aw;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/aw;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/adcolony/sdk/aw$7;->a:Lcom/adcolony/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/adcolony/sdk/aw$7;->a:Lcom/adcolony/sdk/aw;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/adcolony/sdk/aw$7;->a:Lcom/adcolony/sdk/aw;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "custom_js"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aw;->a(Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method
