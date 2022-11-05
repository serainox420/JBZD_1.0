.class Lcom/apprupt/sdk/Q$BaseResolver;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Resolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseResolver"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q;

.field private final b:Lcom/apprupt/sdk/Q$BasePromise;

.field private final c:Lcom/apprupt/sdk/Q$Completion;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$BasePromise;Lcom/apprupt/sdk/Q$Completion;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/apprupt/sdk/Q$BaseResolver;->a:Lcom/apprupt/sdk/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/apprupt/sdk/Q$BaseResolver;->b:Lcom/apprupt/sdk/Q$BasePromise;

    .line 44
    iput-object p3, p0, Lcom/apprupt/sdk/Q$BaseResolver;->c:Lcom/apprupt/sdk/Q$Completion;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$BasePromise;Lcom/apprupt/sdk/Q$Completion;Lcom/apprupt/sdk/Q$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/Q$BaseResolver;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$BasePromise;Lcom/apprupt/sdk/Q$Completion;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/apprupt/sdk/Q$BaseResolver;->b:Lcom/apprupt/sdk/Q$BasePromise;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/apprupt/sdk/Q$BaseResolver;->c:Lcom/apprupt/sdk/Q$Completion;

    invoke-virtual {v0, v1, p1, v2}, Lcom/apprupt/sdk/Q$BasePromise;->a(Ljava/lang/Throwable;Ljava/lang/Object;Lcom/apprupt/sdk/Q$Completion;)V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/apprupt/sdk/Q$BaseResolver;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown error!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Q$BaseResolver;->b:Lcom/apprupt/sdk/Q$BasePromise;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$BaseResolver;->c:Lcom/apprupt/sdk/Q$Completion;

    invoke-virtual {v0, p1, p2, v1}, Lcom/apprupt/sdk/Q$BasePromise;->a(Ljava/lang/Throwable;Ljava/lang/Object;Lcom/apprupt/sdk/Q$Completion;)V

    .line 63
    return-void
.end method
