.class Lcom/adcolony/sdk/by;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Lcom/adcolony/sdk/bu;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/adcolony/sdk/bv;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/by;->a:Lcom/adcolony/sdk/bu;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/by;->b:Ljava/util/HashMap;

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/by;)Lcom/adcolony/sdk/bu;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/adcolony/sdk/by;->a:Lcom/adcolony/sdk/bu;

    return-object v0
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/bv;)V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/adcolony/sdk/by$2;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/by$2;-><init>(Lcom/adcolony/sdk/by;Lcom/adcolony/sdk/bv;)V

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/by;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method a(Lcom/adcolony/sdk/bv;J)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/adcolony/sdk/by$4;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/by$4;-><init>(Lcom/adcolony/sdk/by;Lcom/adcolony/sdk/bv;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/adcolony/sdk/by;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method a(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/adcolony/sdk/by$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/adcolony/sdk/by$1;-><init>(Lcom/adcolony/sdk/by;Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/by;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method

.method a(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;J)V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/adcolony/sdk/by$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/adcolony/sdk/by$3;-><init>(Lcom/adcolony/sdk/by;Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/adcolony/sdk/by;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method b(Lcom/adcolony/sdk/bv;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/by;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/adcolony/sdk/by;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 69
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/by;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lcom/adcolony/sdk/by;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method

.method b(Lcom/adcolony/sdk/bv;J)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/adcolony/sdk/by$5;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/by$5;-><init>(Lcom/adcolony/sdk/by;Lcom/adcolony/sdk/bv;)V

    .line 62
    iget-object v1, p0, Lcom/adcolony/sdk/by;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0, v0, p2, p3}, Lcom/adcolony/sdk/by;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    return-void
.end method
