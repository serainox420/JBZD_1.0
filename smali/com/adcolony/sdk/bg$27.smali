.class Lcom/adcolony/sdk/bg$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->j(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/adcolony/sdk/bg$27;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$27;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2122
    iget-object v0, p0, Lcom/adcolony/sdk/bg$27;->a:Ljava/util/Map;

    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 2123
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2124
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v2}, Lcom/adcolony/sdk/cp;->a(Ljava/lang/String;ZZ)V

    .line 2126
    :cond_0
    return-void
.end method
