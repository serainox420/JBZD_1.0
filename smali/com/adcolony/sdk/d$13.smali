.class Lcom/adcolony/sdk/d$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/adcolony/sdk/d$13;->a:Lcom/adcolony/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 346
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 347
    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 348
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 349
    return-void
.end method
