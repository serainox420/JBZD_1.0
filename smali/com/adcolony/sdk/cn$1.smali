.class Lcom/adcolony/sdk/cn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cn;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/cn;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cn;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    iput-object p2, p0, Lcom/adcolony/sdk/cn$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    new-instance v0, Lcom/adcolony/sdk/cm;

    iget-object v1, p0, Lcom/adcolony/sdk/cn$1;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/cm;-><init>(Ljava/util/Map;)V

    .line 60
    sget-object v1, Lcom/adcolony/sdk/cm$c;->b:Lcom/adcolony/sdk/cm$c;

    iput-object v1, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 62
    iget-object v1, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/cn;->b(Lcom/adcolony/sdk/cm;)V

    .line 64
    iget-object v1, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    invoke-static {v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cn;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cn;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    invoke-static {v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cn;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "IN-APP-MSG-QUEUE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toasted queue. queue size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    invoke-static {v3}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cn;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    iget-object v1, v1, Lcom/adcolony/sdk/cn;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "toast.displayType == NDT_MODAL && allowModalToasts. call showToasts()"

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->b()V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    iget-object v0, v0, Lcom/adcolony/sdk/cn;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "toast.displayType == NDT_TOAST && allowNonModals. call showToasts()"

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/adcolony/sdk/cn$1;->b:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->b()V

    goto :goto_0
.end method
