.class Lcom/adcolony/sdk/bg$2;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->b(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/adcolony/sdk/bg$2;->c:Lcom/adcolony/sdk/bg;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$2;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$2;->b:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 656
    iget-object v0, p0, Lcom/adcolony/sdk/bg$2;->c:Lcom/adcolony/sdk/bg;

    iget-boolean v0, v0, Lcom/adcolony/sdk/bg;->x:Z

    if-eqz v0, :cond_0

    .line 657
    const-string v0, "developer_event"

    .line 658
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 659
    const-string v2, "name"

    iget-object v3, p0, Lcom/adcolony/sdk/bg$2;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v2, "data"

    iget-object v3, p0, Lcom/adcolony/sdk/bg$2;->b:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v2, p0, Lcom/adcolony/sdk/bg$2;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v2, v0, v1}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 663
    :cond_0
    return-void
.end method
