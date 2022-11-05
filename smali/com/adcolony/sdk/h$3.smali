.class Lcom/adcolony/sdk/h$3;
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
    .line 395
    iput-object p1, p0, Lcom/adcolony/sdk/h$3;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "number"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 400
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 401
    const-string v2, "uuids"

    invoke-static {v0}, Lcom/adcolony/sdk/au;->a(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 402
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 403
    return-void
.end method
