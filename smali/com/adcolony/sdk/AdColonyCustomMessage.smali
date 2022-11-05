.class public Lcom/adcolony/sdk/AdColonyCustomMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/AdColonyCustomMessage$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/AdColonyCustomMessage$1;-><init>(Lcom/adcolony/sdk/AdColonyCustomMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyCustomMessage;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    .line 57
    return-object p0
.end method
