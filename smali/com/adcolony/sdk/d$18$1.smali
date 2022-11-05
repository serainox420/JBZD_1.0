.class Lcom/adcolony/sdk/d$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d$18;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:Lcom/adcolony/sdk/d$18;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d$18;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/adcolony/sdk/d$18$1;->b:Lcom/adcolony/sdk/d$18;

    iput-object p2, p0, Lcom/adcolony/sdk/d$18$1;->a:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/adcolony/sdk/d$18$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, p0, Lcom/adcolony/sdk/d$18$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 448
    return-void
.end method
