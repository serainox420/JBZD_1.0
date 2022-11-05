.class Lcom/adcolony/sdk/bi$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi;->a(ILorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:I

.field final synthetic c:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;Lorg/json/JSONArray;I)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/adcolony/sdk/bi$5;->c:Lcom/adcolony/sdk/bi;

    iput-object p2, p0, Lcom/adcolony/sdk/bi$5;->a:Lorg/json/JSONArray;

    iput p3, p0, Lcom/adcolony/sdk/bi$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 524
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/adcolony/sdk/bi$5;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 526
    iget-object v1, p0, Lcom/adcolony/sdk/bi$5;->c:Lcom/adcolony/sdk/bi;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 527
    iget-object v1, p0, Lcom/adcolony/sdk/bi$5;->c:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:NativeBridge.resultForCallback("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adcolony/sdk/bi$5;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v1, v0}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 531
    return-void
.end method
