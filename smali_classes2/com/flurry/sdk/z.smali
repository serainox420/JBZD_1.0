.class public final Lcom/flurry/sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/z$a;,
        Lcom/flurry/sdk/z$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/z$b;",
            "Lcom/flurry/sdk/z$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    .line 87
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/flurry/sdk/z$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/flurry/sdk/z$b;-><init>(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)V

    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/z$a;

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/flurry/sdk/z$a;

    invoke-direct {v0}, Lcom/flurry/sdk/z$a;-><init>()V

    .line 103
    new-instance v2, Lcom/flurry/sdk/dw;

    invoke-direct {v2, p1}, Lcom/flurry/sdk/dw;-><init>(Ljava/lang/String;)V

    .line 1070
    iput-object v2, v0, Lcom/flurry/sdk/z$a;->a:Lcom/flurry/sdk/dw;

    .line 104
    new-instance v2, Lcom/flurry/sdk/y;

    invoke-direct {v2, p1}, Lcom/flurry/sdk/y;-><init>(Ljava/lang/String;)V

    .line 2070
    iput-object v2, v0, Lcom/flurry/sdk/z$a;->b:Lcom/flurry/sdk/y;

    .line 105
    iget-object v2, p0, Lcom/flurry/sdk/z;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
