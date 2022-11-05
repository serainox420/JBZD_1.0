.class Lcom/applovin/impl/sdk/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cr;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/cr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/ct;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinSdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v1}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSdkKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v0, Lcom/applovin/impl/sdk/cu;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/cu;-><init>(Lcom/applovin/impl/sdk/ct;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v1
.end method
