.class Lcom/apprupt/sdk/Q$BasePromise;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Promise;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasePromise"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q;

.field private final b:Lcom/apprupt/sdk/Q$Task;

.field private c:Ljava/lang/Throwable;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Task;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object p1, p0, Lcom/apprupt/sdk/Q$BasePromise;->a:Lcom/apprupt/sdk/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->c:Ljava/lang/Throwable;

    .line 70
    iput-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->d:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/apprupt/sdk/Q$BasePromise;->b:Lcom/apprupt/sdk/Q$Task;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Task;Lcom/apprupt/sdk/Q$1;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/Q$BasePromise;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Task;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Completion;)V
    .locals 3

    .prologue
    .line 112
    new-instance v1, Lcom/apprupt/sdk/Q$BaseResolver;

    iget-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->a:Lcom/apprupt/sdk/Q;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p2, v2}, Lcom/apprupt/sdk/Q$BaseResolver;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$BasePromise;Lcom/apprupt/sdk/Q$Completion;Lcom/apprupt/sdk/Q$1;)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->b:Lcom/apprupt/sdk/Q$Task;

    invoke-interface {v0, p1, v1}, Lcom/apprupt/sdk/Q$Task;->a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-interface {v1, v0}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/Object;Lcom/apprupt/sdk/Q$Completion;)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->a:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "Promise resolve"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string v0, "[OK]"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p2, v2, v0

    invoke-interface {v1, p1, v2}, Lcom/apprupt/sdk/Logger$log;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 93
    if-eqz p1, :cond_1

    .line 94
    iput-object p1, p0, Lcom/apprupt/sdk/Q$BasePromise;->c:Ljava/lang/Throwable;

    .line 107
    :goto_1
    invoke-interface {p3, p0}, Lcom/apprupt/sdk/Q$Completion;->a(Lcom/apprupt/sdk/Q$Promise;)V

    .line 108
    :goto_2
    return-void

    .line 92
    :cond_0
    const-string v0, "[E]"

    goto :goto_0

    .line 96
    :cond_1
    if-eqz p2, :cond_2

    .line 97
    instance-of v0, p2, Lcom/apprupt/sdk/Q$Task;

    if-eqz v0, :cond_4

    .line 98
    new-instance v0, Lcom/apprupt/sdk/Q$BasePromise;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$BasePromise;->a:Lcom/apprupt/sdk/Q;

    check-cast p2, Lcom/apprupt/sdk/Q$Task;

    invoke-direct {v0, v1, p2}, Lcom/apprupt/sdk/Q$BasePromise;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Task;)V

    .line 100
    :goto_3
    instance-of v1, v0, Lcom/apprupt/sdk/Q$Promise;

    if-eqz v1, :cond_3

    .line 101
    check-cast v0, Lcom/apprupt/sdk/Q$Promise;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$BasePromise;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p3}, Lcom/apprupt/sdk/Q$Promise;->a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Completion;)V

    goto :goto_2

    :cond_2
    move-object v0, p2

    .line 105
    :cond_3
    iput-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_3
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/apprupt/sdk/Q$BasePromise;->d:Ljava/lang/Object;

    return-object v0
.end method
