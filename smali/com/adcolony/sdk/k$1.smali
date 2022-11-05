.class Lcom/adcolony/sdk/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/k;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/k;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/adcolony/sdk/k$1;->a:Lcom/adcolony/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Null Activity reference, can\'t build AlertDialog."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 35
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "on_resume"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/adcolony/sdk/k$1;->a:Lcom/adcolony/sdk/k;

    iput-object p1, v0, Lcom/adcolony/sdk/k;->a:Lcom/adcolony/sdk/z;

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/k$1;->a:Lcom/adcolony/sdk/k;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/k;->a(Lcom/adcolony/sdk/z;)V

    goto :goto_0
.end method
