.class public Lcom/flurry/sdk/t;
.super Lcom/flurry/sdk/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/t$a;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String;

.field private static s:I


# instance fields
.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field private t:Lcom/flurry/sdk/bj;

.field private u:Lcom/flurry/sdk/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/t;->r:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/flurry/sdk/t;->s:I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/flurry/sdk/d;)V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    .line 56
    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/flurry/sdk/bb;->c:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/t;->p()V

    .line 2135
    new-instance v0, Lcom/flurry/sdk/bj;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bj;-><init>(Lcom/flurry/sdk/r;)V

    iput-object v0, p0, Lcom/flurry/sdk/t;->t:Lcom/flurry/sdk/bj;

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$a;->b:Lcom/flurry/sdk/t$a;

    iput-object v0, p0, Lcom/flurry/sdk/t;->u:Lcom/flurry/sdk/t$a;

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_2
    sget-object v0, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/flurry/sdk/t;->s()V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/flurry/sdk/t$a;->b:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->u:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 95
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    goto :goto_0
.end method
