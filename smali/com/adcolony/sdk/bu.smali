.class Lcom/adcolony/sdk/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/adcolony/sdk/bt;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/adcolony/sdk/bu$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bu$1;-><init>(Lcom/adcolony/sdk/bu;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bu;->a:Lcom/adcolony/sdk/bt;

    return-void
.end method

.method private b(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V
    .locals 1

    .prologue
    .line 16
    :try_start_0
    invoke-interface {p1}, Lcom/adcolony/sdk/bv;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-interface {p2, v0}, Lcom/adcolony/sdk/bt;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/bv;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adcolony/sdk/bu;->a:Lcom/adcolony/sdk/bt;

    invoke-direct {p0, p1, v0}, Lcom/adcolony/sdk/bu;->b(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V

    .line 25
    return-void
.end method

.method a(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/adcolony/sdk/bu;->b(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V

    .line 29
    return-void
.end method
